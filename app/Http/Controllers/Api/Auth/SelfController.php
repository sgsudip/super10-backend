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

class SelfController extends Controller
{

    use AuthenticatesUsers;


    /**
     * Create a new controller instance.
     *
     * @return void
     */


    public function __construct()
    {
        $this->middleware('guest');
    }


    public function testValidate()
    {
        echo "hello";
        $testUrl = "https://staging.slotegrator.com/api/index.php/v1/self-validate";
        $merchantId = 'ae88ab8ee84ff40a76f1ec2e0f7b5caa';
        $merchantKey = '4953e491031d3f9e7545223885cf43a7403f14cb';
        $nonce = md5(uniqid(mt_rand(), true));
        $time = time();
        $headers = [
            'X-Merchant-Id' => $merchantId,
            'X-Timestamp' => $time,
            'X-Nonce' => $nonce
        ];
        $requestParams = [
            // 'game_uuid' => $request->game_uuid,
            // 'player_id' => $request->player_id,
            // 'currency' => 'USD',
            // 'player_name' => $request->player_name,
        ];
        $mergedParams = array_merge($requestParams, $headers);
        ksort($mergedParams);
        $hashString = http_build_query($mergedParams);
        
        $XSign = hash_hmac('sha1', $hashString, $merchantKey);
        
        ksort($requestParams);
        $postdata = http_build_query($requestParams);
        
        
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $testUrl);
        curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 5);
        //curl_setopt($ch, CURLOPT_POST, 1);
        curl_setopt($ch, CURLOPT_HTTPHEADER, array(
        'X-Merchant-Id: '.$merchantId,
        'X-Timestamp: '.$time,
        'X-Nonce: '.$nonce,
        'X-Sign: '.$XSign,
        'Accept: application/json',
        'Enctype: application/x-www-form-urlencoded',
        ));
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        $result = curl_exec($ch);
        // var_dump($result);
        // if ($result === false) {
        //     echo 'Curl error: ' . curl_error($ch);
        // } else {
        //     echo 'Operation completed without any errors';
        // }

        // return response()->json([
        //     'code' => 200,
        //     'status' => 'ok',
        //     'message' => [
        //         'result' => $result,
        //         'headers' => $headers,
        //         'requestParamsHeaders' => $requestParams,
        //         'hashstring' => $queryString,
        //         'getDataHeader' => $getHeader
        //     ]
        // ]);

        if (curl_errno($ch)) {
            $error_msg = curl_error($ch);
        }
        
        if (isset($error_msg)) {
            // TODO - Handle cURL error accordingly
            return response()->json([
                "error" => curl_error($ch)
            ]);

        }else{
            return response()->json([
                "result" => $result
            ]);
        }

       
    }
}
