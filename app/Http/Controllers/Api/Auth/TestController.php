<?php

namespace App\Http\Controllers\Api\Auth;
use App\Http\Controllers\Controller;
use App\Models\Extension;
use App\Models\UserLogin;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use App\Mail\loginsuccess;
use Illuminate\Support\Facades\Mail;

class TestController extends Controller
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
    
    // calls find username behind th hood
    public function username()
    {
        return $this->username;
    }

    public function testValidate(Request $request)
    {
        // the base url in this case will be
        $testUrl = "https://staging.slotegrator.com/api/index.php/v1/self-validate";
        //   the merchant id
        $merchantId = 'ae88ab8ee84ff40a76f1ec2e0f7b5caa';
        //   the merchant key
        $merchantKey = '4953e491031d3f9e7545223885cf43a7403f14cb';
        //   nonce
        $nonce = md5(uniqid(mt_rand(), true));
        //   current time
        $time = time();

        //   assign headers to the rquest , remember you are sending a request from the server to the staging url that slotegrator provided, authorization headers
        $headers = [
            'X-Merchant-Id' => $merchantId, 
            'X-Timestamp' => $time,
            'X-Nonce' => $nonce
        ];

        //   request parameters
        $requestParams = [
            'game_uuid' => $request->game_uuid,
            'player_id' => $request->player_id, 
            'currency' => 'USD',
            'player_name' => $request->player_name,
            'session_id' => session_id()
        ];
        //   mergerd params, merge request array with authorization headers array
        $mergedParams = array_merge($requestParams, $headers);
        //   sort by key in asc order
        ksort($mergedParams);
        //   generate hashstring, urlencoded query string
        $queryString = http_build_query($mergedParams);

        // echo $queryString;

        //create sha 1 hmac hash using hashstring and merchanykey
        $XSign = hash_hmac('sha1', $queryString, $merchantKey);

        //   sort again
        // ksort($requestParams);

        // $postdata = http_build_query($requestParams);

        $getHeader = array(
            'X-Merchant-Id: ' . $merchantId,
             'X-Timestamp: ' . $time,
            'X-Nonce: ' . $nonce,
            'X-Sign: ' . $XSign,
            'Accept: application/json',
            'Enctype: application/x-www-form-urlencoded'
        );
        // initialize curl request 
        $ch = curl_init();
        //   set url
        curl_setopt($ch, CURLOPT_URL, $testUrl);
        //   timeout value
        curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 5);
        /*curl_setopt($ch, CURLOPT_POST, 1);*/
        //   headers
        curl_setopt($ch, CURLOPT_HTTPHEADER, $getHeader);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        //   store result
        $result = curl_exec($ch);


        if ($result === false) {
            echo 'Curl error: ' . curl_error($ch);
        } else {
            echo 'Operation completed without any errors';
        }

        return response()->json([
            'code' => 200,
            'status' => 'ok',
            'message' => [
                'result' => $result,
                'headers' => $headers,
                'requestParamsHeaders' => $requestParams,
                'hashstring' => $queryString,
                'getDataHeader' => $getHeader
            ]
        ]);
    }    
}
