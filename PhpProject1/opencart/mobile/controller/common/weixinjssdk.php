<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class ControllerCommonWeixinjssdk extends Controller {
    public function index() {
        require_once(DIR_SYSTEM . 'library/weixinjssdk/jssdk.php');


        if ( is_numeric(strpos($_SERVER['REQUEST_URI'], '&from=s'))){
            $url = mb_substr($_SERVER['REQUEST_URI'],0,strpos($_SERVER['REQUEST_URI'], '&from='));
            echo "<script language='JavaScript'> self.location='".$url."'</script>"; 
            exit();
        }
        if ( is_numeric(strpos($_SERVER['HTTP_USER_AGENT'], 'MicroMessenger'))) {
            $jssdk = new JSSDK(WXPAY_APPID, WXPAY_APPSECRET);
            $signPackage = $jssdk->GetSignPackage();
            $_SESSION['signPackage'] = $signPackage;
        }
    }

    public function ajax(){
        if(!empty($_SESSION['signPackage'])){
            echo json_encode($_SESSION['signPackage']);
            return true;
        }
        $signPackage = $jssdk->GetSignPackage();
        echo json_encode($signPackage);
    }
}
