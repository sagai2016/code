<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class ControllerCommonWeixinjssdk extends Controller {
    public function index() {
        if (strpos($_SERVER['HTTP_USER_AGENT'], 'MicroMessenger') === TRUE) {
            require_once(DIR_SYSTEM . 'library/weixinjssdk/jssdk.php');
            $jssdk = new JSSDK(WXPAY_APPID, WXPAY_APPSECRET);
            $signPackage = $jssdk->GetSignPackage();
            define("WXPJS", $signPackage);
        }
    }
}
