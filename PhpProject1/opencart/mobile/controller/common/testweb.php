<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class ControllerCommonTestweb extends Controller {

    public function index() {
        $data=[];
        if(!empty($_SESSION['signPackage']) && WXPAY_APPID){
            $jssdk = new JSSDK(WXPAY_APPID, WXPAY_APPSECRET);
            $data['jssdk'] = $jssdk;
        }
         $this->response->setOutput($this->load->view('common/testweb',$data));
    }
    
    public function add()
    {
        echo 'aaa';
    }

}
