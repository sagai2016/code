<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class ControllerCommonWeixin extends Controller {

    public function index() {
	if ( is_numeric( strpos($_SERVER['HTTP_USER_AGENT'], 'MicroMessenger'))) {
		require_once(DIR_SYSTEM.'library/wxpay/wxpayexception.php');
		
		define('WXPAY_APPID', trim($this->config->get('wxpay_appid')));
		define('WXPAY_MCHID', trim($this->config->get('wxpay_mchid')));
		define('WXPAY_KEY', trim($this->config->get('wxpay_key')));
		define('WXPAY_APPSECRET', trim($this->config->get('wxpay_appsecret')));
		
		define('WXPAY_SSLCERT_PATH', DIR_SYSTEM.'helper/wxpay_key/apiclient_cert.pem');
		define('WXPAY_SSLKEY_PATH', DIR_SYSTEM.'helper/wxpay_key/apiclient_key.pem');
		
		define('WXPAY_CURL_PROXY_HOST', "0.0.0.0");
		define('WXPAY_CURL_PROXY_PORT', 0);
		
		define('REPORT_LEVENL', 1);
		
		
		require_once(DIR_SYSTEM.'library/wxpay/wxpayconfig.php');
		require_once(DIR_SYSTEM.'library/wxpay/wxpaydata.php');
		require_once(DIR_SYSTEM.'library/wxpay/wxpayapi.php');
		require_once(DIR_SYSTEM.'library/wxpay/wxpayjsapipay.php');
		$tools = new JsApiPay();
		$openId = $tools->GetOpenid();
    }
	}
}
