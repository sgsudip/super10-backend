<?php

namespace App\Http\Controllers\Gateway\CoinbaseCommerce;

use App\Models\Deposit;
use App\Models\GeneralSetting;
use App\Http\Controllers\Controller;
use App\Http\Controllers\Gateway\PaymentController;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use GuzzleHttp\Client as ghttp;

use Session;

class ProcessController extends Controller
{
    public static function process($deposit)
    {
        $url = 'https://api.commerce.coinbase.com/charges';

        echo "Coinbase-process-start \n";
        echo $deposit->trx;
        echo "\n";
        echo Auth::user()->username;
        echo "\n";

        // get general settings for website
        $basic = GeneralSetting::first();

        // get gateway currency, like EUR or USD
        // $coinbaseAcc = json_decode($deposit->gatewayCurrency()->gateway_parameters);

        // echo $coinbaseAcc;

        // $coinbaseAcc1 = json_decode($deposit->gatewayCurrency()->gateway_parameters);

        // echo $coinbaseAcc1;
        $username = Auth::user()->username;
        $amount = $deposit->final_amo;
        $curr = $deposit->method_currency;
        // $client = new ghttp();

        // $response = $client->request('POST', 'https://api.commerce.coinbase.com/charges', [
        //     'body' => 
        //     `
        //     {
        //         "name": $username,
        //         "description":"Pay to super10",
        //         "pricing_type":"fixed_price",
        //         "local_price":"{'amount':'$amount','currency':'$curr'}",
        //         "metadata":"",
        //         "redirect_url":"http://localhost:4200/deposit/history","cancel_url":"http://localhost:4200/deposit"}
        //     `,
        //     'headers' => [
        //         'accept' => 'application/json',
        //         'content-type' => 'application/json',
        //         'X-CC-Api-Key' => env("COINBASE_API_KEY")
        //     ],
        // ]);

        // echo $response->getBody();

        // data array
        $array = [
            'name' => Auth::user()->username,
            'description' => "Pay to " . $basic->sitename,
            'local_price' => [
                'amount' => $deposit->final_amo,
                'currency' => $deposit->method_currency
            ],
            'metadata' => [
                'trx' => $deposit->trx,
                'user_id' => Auth::user()->id
            ],
            'pricing_type' => "fixed_price",
            'redirect_url' => gatewayRedirectUrl(true),
            'cancel_url' => gatewayRedirectUrl()
        ];

        // post data basically
        $postdata = json_encode($array);
        // initialize request
        $ch = curl_init();
        // api key from coinbase settings page
        $apiKey = env("COINBASE_API_KEY");
        $header = array();
        $header[] = 'Content-Type: application/json';
        $header[] = 'Accept: application/json';
        $header[] = 'X-CC-Api-Key: ' . env("COINBASE_API_KEY");
        $header[] = 'X-CC-Version: 2018-03-22';
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_POST, 1);
        curl_setopt($ch, CURLOPT_HTTPHEADER, $header);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $postdata);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        $result = curl_exec($ch);
        curl_close($ch);
        $result = json_decode($result);
        return $result;


        // if (@$result->error == '') {
        //     $send['redirect'] = true;
        //     $send['redirect_url'] = $result->data->hosted_url;
        // } else {
        //     $send['error'] = true;
        //     $send['message'] = 'Some problem occured with api.';
        // }

        // $send['view'] = '';
        // return json_encode($send);
    }

    public function ipn(Request $request)
    {
        // extract post data, get raw post data contents
        $postdata = file_get_contents("php://input");

        // convert to json
        $res = json_decode($postdata);

        // deposits table, where transaction equals postdata.data.event.data.metadata.trx
        $deposit = Deposit::where('trx', $res->event->data->metadata->trx)->orderBy('id', 'DESC')->first();


        $coinbaseAcc = json_decode($deposit->gatewayCurrency()->gateway_parameter);

        // all request headers in associated array format
        $headers = apache_request_headers();

        // extract webhook signature from post request headers
        $sentSign = $headers['x-cc-webhook-signature'];

        // create a sign
        $sig = hash_hmac('sha256', $postdata, $coinbaseAcc->secret);

        // if the webhook signature of current post request matches
        if ($sentSign == $sig) {
            // you need to check for the event type in postdata
            if ($res->event->type == 'charge:confirmed' && $deposit->status == 0) {
                PaymentController::userDataUpdate($deposit->trx);
            }
        }
    }
    // ipn close
}
