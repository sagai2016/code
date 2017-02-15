<?php

session_start();

class cardcode {

    private $access_token;

    function __construct() {
        ;
    }

//wxc067b3c9618e913c
    //34a76ef2cb2cb56289a3c27b3fccf9bd
    function getUrl($url) {

        $curl = curl_init();
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($curl, CURLOPT_TIMEOUT, 500);
        // 为保证第三方服务器与微信服务器之间数据传输的安全性，所有微信接口采用https方式调用，必须使用下面2行代码打开ssl安全校验。
        // 如果在部署过程中代码在此处验证失败，请到 http://curl.haxx.se/ca/cacert.pem 下载新的证书判别文件。
        curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, false);
        curl_setopt($curl, CURLOPT_URL, $url);

        $res = curl_exec($curl);
        curl_close($curl);

        return $res;
    }

    function postUrl($url, $post) {
        $curl = curl_init();
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($curl, CURLOPT_POST, true);
        curl_setopt($curl, CURLOPT_TIMEOUT, 500);
        curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, false);
        curl_setopt($curl, CURLOPT_POSTFIELDS, $post);
        curl_setopt($curl, CURLOPT_URL, $url);
        $res = curl_exec($curl);
        curl_close($curl);
        return $res;
    }

    function client_credential() {
        if (!isset($_SESSION['access_token']) && empty($_SESSION['access_token'])) {
            $appid = "wxc067b3c9618e913c";
            $secret = "34a76ef2cb2cb56289a3c27b3fccf9bd";
            $url = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid={$appid}&secret={$secret}";
            $rs = json_decode($this->getUrl($url));
            if (!empty($rs)) {
                $_SESSION['access_token'] = $rs->access_token;
                $this->access_token = $rs->access_token;
            }
        } else {
            $this->access_token = $_SESSION['access_token'];
        }
    }

    function cardt() {
        header("Content-type: application/json");
        $url = "https://api.weixin.qq.com/card/create?access_token={$this->access_token}";
        $data = [];
        $base_info = $groupon = [];

        $data['card']['card_type'] = 'GROUPON';

        $base_info['logo_url'] = 'http://cart.jlwhjl.com/mobile/image/catalog/demo/manufacturer/bajiaojiuku.png';
        $base_info['brand_name'] = '我是个测试哦';
        $base_info['code_type'] = 'CODE_TYPE_TEXT';
        $base_info['title'] = '我是个测试哦';
        $base_info['sub_title'] = '我是个测试哦';
        $base_info['color'] = 'Color010';
        $base_info['notice'] = '使用时向服务员出示此券';
        $base_info['service_phone'] = '020-88888888';
        $base_info['description'] = '不可与其他优惠同享/n如需团购券发票，请向店员提出要求';
        $base_info['sku'] = ['quantity' => 100000];
        $base_info['date_info'] = ['type' => 'DATE_TYPE_FIX_TIME_RANGE', 'begin_timestamp' => time(), 'end_timestamp' => time() + 9999999];
        //custom_url_name
        $base_info['custom_url_name'] = '点击使用';
        $base_info['custom_url'] = 'http;//baidu.com';
        $base_info['custom_url_sub_title'] = '抽奖连连';
        $base_info['promotion_url_name'] = '抽奖连连';
        $base_info['promotion_url'] = 'http;//163.com';
        $base_info['promotion_url_sub_title'] = '去看看';
        $base_info['get_limit'] = 1;
        $base_info['can_share'] = false;
        $base_info['can_give_friend'] = false;
        $base_info['bind_openid']  = false;

        $data['card']['groupon']=['deal_detail' => '我是个测试','base_info'=>$base_info];
        $post = json_encode($data ,JSON_UNESCAPED_UNICODE);
        $res =json_decode($this->postUrl($url, $post));
        if($res->errmsg ==='ok'){
                return $res->card_id;
        }
    }
}

$client_credential = new cardcode();
$client_credential->client_credential();
$client_credential->cardt();
