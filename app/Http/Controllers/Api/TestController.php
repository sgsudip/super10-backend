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

    use AuthenticatesUsers;


    /**
     * Create a new controller instance.
     *
     * @return void
     */


    public function __construct()
    {
      
    }


    public function testValidate(Request $request)
    {
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
            'game_uuid' => $request->game_uuid,
            'player_id' => $request->player_id,
            'currency' => 'USD',
            'player_name' => $request->player_name,
        ];
        $mergedParams = array_merge($requestParams, $headers);
        ksort($mergedParams);
        $queryString = http_build_query($mergedParams);
        $XSign = hash_hmac('sha1', $queryString, $merchantKey);


        $getHeader = array(
            'X-Merchant-Id: ' . $merchantId,
            'X-Timestamp: ' . $time,
            'X-Nonce: ' . $nonce,
            'X-Sign: ' . $XSign,
            'Accept: application/json',
            'Enctype: application/x-www-form-urlencoded'
        );

        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $testUrl);
        curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 5);
        curl_setopt($ch, CURLOPT_HTTPHEADER, $getHeader);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        $result = curl_exec($ch);
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

        return response()->json([
            'code' => 200,
            'status' => 'ok',
            "result" => $result
        ]);
    }
}
