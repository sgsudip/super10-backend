<?php

namespace App\Http\Controllers\Api\Auth;
use App\Http\Controllers\Controller;
use App\Models\Extension;
use App\Models\UserLogin;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */

    protected $username;

    /**
     * Create a new controller instance.
     *
     * @return void
     */


    public function __construct()
    {
        $this->username = $this->findUsername();
    }

    public function login(Request $request)
    {
        // validate the login process
        $validator = $this->validateLogin($request);
        // if the validator creates an error
        if ($validator->fails()) {
            return response()->json([
                'code'=>200,
                'status'=>'ok',
                'message'=>['error'=>$validator->errors()->all()],
            ]);
        }
        $credentials = request([$this->username, 'password']);
        if(!Auth::attempt($credentials)){
            $response[] = 'Unauthorized user';
            return response()->json([
                'code'=>401,
                'status'=>'unauthorized',
                'message'=>['error'=>$response],
            ]);
        }

        // get the user from the request object
        $user = $request->user();
        // echo $user;
        // create the token and get the result
        $tokenResult = $user->createToken('auth_token')->plainTextToken;
        // if the user is authenticated, then send success response
        $this->authenticated($request,$user);
        // response message
        // $response[] = 'Login Succesfull';
        // convert the response to json, contains access token and token type
        // response()->header();
        return response()->json([
            'code'=>200,
            'status'=>'ok',
            'message'=>['success'=>'Login successfull'],
            'data'=>[
                'user' => auth()->user(),
                'access_token'=>$tokenResult,
                'token_type'=>'Bearer'
            ]
        ]);  
    }

    public function findUsername()
    {
        $login = request()->input('username');

        $fieldType = filter_var($login, FILTER_VALIDATE_EMAIL) ? 'email' : 'username';
        request()->merge([$fieldType => $login]);
        return $fieldType;
    }

    // calls find username behind th hood
    public function username()
    {
        return $this->username;
    }

    // validates the login, takes in the request object
    protected function validateLogin(Request $request)
    {
        // the rules of validation
        $validation_rule = [
            $this->username() => 'required|string',
            'password' => 'required|string',
        ];

        $validate = Validator::make($request->all(),$validation_rule);
        return $validate;

    }

    public function logout()
    {
        auth()->user()->tokens()->delete();

        $notify[] = 'Logout Succesfull';
        return response()->json([
            'code'=>200,
            'status'=>'ok',
            'message'=>['success'=>$notify],
        ]);
    }

    public function authenticated(Request $request, $user)
    {
        if ($user->status == 0) {
            auth()->user()->tokens()->delete();
            $notify[] = 'Your account has been deactivated';
            return response()->json([
                'code'=>200,
                'status'=>'ok',
                'message'=>['success'=>$notify],
            ]);
        }


        $user = auth()->user();
        $user->tv = $user->ts == 1 ? 0 : 1;
        $user->save();
        $ip = $_SERVER["REMOTE_ADDR"];
        $exist = UserLogin::where('user_ip',$ip)->first();
        $userLogin = new UserLogin();
        if ($exist) {
            $userLogin->longitude =  $exist->longitude;
            $userLogin->latitude =  $exist->latitude;
            $userLogin->city =  $exist->city;
            $userLogin->country_code = $exist->country_code;
            $userLogin->country =  $exist->country;
        }else{
            $info = json_decode(json_encode(getIpInfo()), true);
            $userLogin->longitude =  @implode(',',$info['long']);
            $userLogin->latitude =  @implode(',',$info['lat']);
            $userLogin->city =  @implode(',',$info['city']);
            $userLogin->country_code = @implode(',',$info['code']);
            $userLogin->country =  @implode(',', $info['country']);
        }
        $userAgent = osBrowser();
        $userLogin->user_id = $user->id;
        $userLogin->user_ip =  $ip;
        $userLogin->browser = @$userAgent['browser'];
        $userLogin->os = @$userAgent['os_platform'];
        $userLogin->save();
    }
}
