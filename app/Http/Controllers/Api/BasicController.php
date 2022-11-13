<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\GeneralSetting;
use App\Models\Language;
use Illuminate\Http\Request;
use Session;

class BasicController extends Controller
{
    public function generalSetting()
    {
        $general = GeneralSetting::first();
        $notify[] = 'General setting data';
        return response()->json([
            'code' => 200,
            'status' => 'ok',
            'message' => ['success' => $notify],
            'data' => ['general_setting' => $general]
        ]);
    }

    public function unauthenticate()
    {
        $notify[] = 'Unauthenticated user';
        return response()->json([
            'code' => 403,
            'status' => 'unauthorized',
            'message' => ['error' => $notify]
        ]);
    }

    public function languages()
    {
        $languages = Language::get();
        return response()->json([
            'code' => 200,
            'status' => 'ok',
            'data' => [
                'languages' => $languages,
                'image_path' => imagePath()['language']['path']
            ]
        ]);
    }

    public function languageData($code)
    {
        $language = Language::where('code', $code)->first();
        if (!$language) {
            $notify[] = 'Language not found';
            return response()->json([
                'code' => 404,
                'status' => 'error',
                'message' => ['error' => $notify]
            ]);
        }
        $jsonFile = strtolower($language->code) . '.json';
        $fileData = resource_path('lang/') . $jsonFile;
        $languageData = json_decode(file_get_contents($fileData));
        return response()->json([
            'code' => 200,
            'status' => 'ok',
            'message' => [
                'language_data' => $languageData
            ]
        ]);
    }

    public function getGames(Request $request)
    {
        // the base url in this case will be
        $getGamesUrl = "https://staging.slotegrator.com/api/index.php/v1/games";
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
        curl_setopt($ch, CURLOPT_URL, $getGamesUrl);
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
                'string' => $result,
                'headers' => $headers,
                'requestParamsHeaders' => $requestParams,
                'hashstring' => $queryString,
                'getDataHeader' => $getHeader
            ]
        ]);
    }
    // this is the games init function 
    public function gamesInit(Request $request)
    {
        // the base url in this case will be
        $url = 'https://staging.slotegrator.com/api/index.php/v1/games/init';
        //   the merchant id
        $merchantId = 'ae88ab8ee84ff40a76f1ec2e0f7b5caa';
        //   the merchant key
        $merchantKey = '4953e491031d3f9e7545223885cf43a7403f14cb';
        //   nonce
        $nonce = md5(uniqid(mt_rand(), true));
        //   current time
        $time = time();

        //   assign headers to the rquest , remember you are sending a request from the server to the staging url that slotegrator provided
        $headers = ['X-Merchant-Id' => $merchantId, 'X-Timestamp' => $time, 'X-Nonce' => $nonce];

        //   request parameters
        $requestParams = [
            'game_uuid' => $request->game_uuid,
            'player_id' => $request->player_id, 'currency' => 'EUR',
            'player_name' => $request->player_name,
            'session_id' => session()->getId()
        ];


        //   mergerd params
        $mergedParams = array_merge($requestParams, $headers);
        //   sort by key in asc order
        ksort($mergedParams);
        //   generate hashstring
        $hashString = http_build_query($mergedParams);

        // echo $hashString;

        //create sha 1 hmac hash using hashstring and merchanykey
        $XSign = hash_hmac('sha1', $hashString, $merchantKey);

        //   sort again
        ksort($requestParams);

        //   
        $postdata = http_build_query($requestParams);

        $postHeader = array(
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
        curl_setopt($ch, CURLOPT_URL, $url);
        //   timeout value
        curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 5);
        /*curl_setopt($ch, CURLOPT_POST, 1);*/
        //   headers
        curl_setopt($ch, CURLOPT_HTTPHEADER, $postHeader);
        //   post fields
        curl_setopt($ch, CURLOPT_POSTFIELDS, $postdata);
        //   set CURLOPT_RETURNTRANSFER TRUE to return the transfer as a string of the return value of curl_exec() instead of outputting it out directly.
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        //   store result
        $result = curl_exec($ch);
        //     if(curl_exec($ch) === false) {
        //       echo 'Curl error: ' . curl_error($ch);
        //   } else {
        //       echo 'Operation completed without any errors';
        //   }

        return response()->json([
            'code' => 200,
            'status' => 'ok',
            'message' => [
                'language_data' => json_decode($result, true),
                'headers' => $headers,
                'requestParamsHeaders' => $requestParams,
                'hashstring' => $hashString,
                'postDataHeader' => $postHeader
            ]
        ]);
    }
}
