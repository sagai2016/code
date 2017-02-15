<?php
class JSSDK {
  private $appId;
  private $appSecret;
  public function __construct($appId, $appSecret) {
    $this->appId = $appId;
    $this->appSecret = $appSecret;
  }



  public function getSignPackage() {
    $jsapiTicket = $this->getJsApiTicket();

    // 注意 URL 一定要动态获取，不能 hardcode.
    $protocol = (!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] !== 'off' || $_SERVER['SERVER_PORT'] == 443) ? "https://" : "http://";
    $url = "$protocol$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";

    
    $timestamp = strtotime(date('y-m-d'));
    $nonceStr = $this->createNonceStr();

    // 这里参数的顺序要按照 key 值 ASCII 码升序排序
    $string = "jsapi_ticket=$jsapiTicket&noncestr=$nonceStr&timestamp=$timestamp&url=$url";

    $signature = sha1($string);

    $signPackage = array(
      "appId"     => $this->appId,
      "nonceStr"  => $nonceStr,
      "timestamp" => $timestamp,
      "url"       => $url,
      "signature" => $signature,
      "rawString" => $string
    );
    return $signPackage; 
  }

/*
* qman
* 获取用户信息
*/
  public function getUserInfo(){
      $accessToken = $this->getAccessToken();
      $url ="https://api.weixin.qq.com/cgi-bin/user/info?access_token=$accessToken&openid=$_SESSION[weixin_openid]";
      $userInfo =json_decode( $this->httpGet($url),true);
      unset($userInfo['subscribe'],
      $userInfo['openid'],
      $userInfo['subscribe_time'],
      $userInfo['remark'],
      $userInfo['groupid'],
      $userInfo['tagid_list']);
      return $userInfo;
  }

/*
* qman
* 生成卡号
*/

  

  function getCardInfo($id=0,$description='',$logo='',$brand_name='' ,
    $title='',
    $custom_url_name='',
    $promotion_url='',
    $promotion_url_name='',
    $promotion_url=''

    ) {

        $accessToken = $this->getAccessToken();
        $url = "https://api.weixin.qq.com/card/create?access_token={$accessToken}";
       
        $data = [];
        $base_info = $groupon = [];

        $data['card']['card_type'] = 'GROUPON';

        $base_info['logo_url'] = 'http://cart.jlwhjl.com/mobile/image/catalog/demo/manufacturer/bajiaojiuku.png';
        $base_info['brand_name'] = '我是个测试哦1'; //商店名字
        $base_info['code_type'] = 'CODE_TYPE_NONE';
        $base_info['title'] = '我是个测试哦2';     //标题
        $base_info['sub_title'] = '我是个测试哦3';
        $base_info['color'] = 'Color010';
        $base_info['notice'] = '使用时向服务员出示此券';
        $base_info['description'] = '不可与其他优惠同享/n如需团购券发票，请向店员提出要求'; //卡券介绍
        $base_info['sku'] = ['quantity' => 1];
        $base_info['date_info'] = ['type' => 'DATE_TYPE_FIX_TIME_RANGE', 'begin_timestamp' => strtotime(date('y-m-d')), 'end_timestamp' => strtotime(date('y-m-d')) + 99999999];
        //custom_url_name
        $base_info['center_title'] = '点击使用';
        $base_info['center_url'] = 'http://cart.jlwhjl.com/mobile/index.php?route=common/testweb';
        
        $base_info['custom_url_name'] = '点击使用';
        $base_info['custom_url'] = 'http://baidu.com';
        $base_info['promotion_url_name'] = '抽奖连连';
        $base_info['promotion_url'] = 'http://163.com';
        $base_info['get_limit'] = 1;
        $base_info['can_share'] = false;
        $base_info['can_give_friend'] = false;
        $base_info['bind_openid']  = false;
        $data['card']['groupon']=['deal_detail' => '我是个测试','base_info'=>$base_info];
        

        $post = json_encode($data ,JSON_UNESCAPED_UNICODE);
        $res =json_decode($this->httpPost($url, $post));
        if($res->errmsg ==='ok'){
                $api_ticket = $this->getCardApiTicket();  
                $timestamp = strtotime(date('y-m-d'));  
                $signature  = sha1($timestamp.$api_ticket.$res->card_id);
                return [$res->card_id,$signature,$timestamp];
        }
    }

    function getCardCheack($card,$card_id)
    {
        $accessToken = $this->getAccessToken();
        $url ="https://api.weixin.qq.com/card/code/decrypt?access_token={$accessToken}";
        $data['encrypt_code'] = $card;
       
        $post = json_encode($data ,JSON_UNESCAPED_UNICODE);
        $res =json_decode($this->httpPost($url, $post));
        $this->getCardDel($res->code,$card_id);

    }

    function getCardDel($card,$card_id)
    {
        $accessToken = $this->getAccessToken();
        $url = "https://api.weixin.qq.com/card/code/consume?access_token={$accessToken}";

        $data['code'] = $card;
        $data['card_id'] = $card_id;

        $post = json_encode($data ,JSON_UNESCAPED_UNICODE);
        $res =json_decode($this->httpPost($url, $post));
        var_dump($res);
    }

  private function createNonceStr($length = 16) {
    $chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
    $str = "";
    for ($i = 0; $i < $length; $i++) {
      $str .= substr($chars, mt_rand(0, strlen($chars) - 1), 1);
    }
    return $str;
  }

  private function getJsApiTicket() {
    // jsapi_ticket 应该全局存储与更新，以下代码以写入到文件中做示例
    $data = json_decode($this->get_php_file("jsapi_ticket.php"));
    if ($data->expire_time < time()) {
      $accessToken = $this->getAccessToken();
      // 如果是企业号用以下 URL 获取 ticket
      // $url = "https://qyapi.weixin.qq.com/cgi-bin/get_jsapi_ticket?access_token=$accessToken";
      $url = "https://api.weixin.qq.com/cgi-bin/ticket/getticket?type=jsapi&access_token=$accessToken";
      $res = json_decode($this->httpGet($url));
      $ticket = $res->ticket;
      if ($ticket) {
        $data->expire_time = time() + 1000;
        $data->jsapi_ticket = $ticket;
        $this->set_php_file("jsapi_ticket.php", json_encode($data));
      }
    } else {
      $ticket = $data->jsapi_ticket;
    }

    return $ticket;
  }


  private function getCardApiTicket() {
      $data = json_decode($this->get_php_file("card_ticket.php"));
       if ($data->expire_time < time()) {
          $accessToken = $this->getAccessToken();
          $url = "https://api.weixin.qq.com/cgi-bin/ticket/getticket?type=wx_card&access_token=$accessToken";
          $res = json_decode($this->httpGet($url));
          $ticket = $res->ticket;
          if ($ticket) {
            $data->expire_time = time() + 1000;
            $data->jsapi_ticket = $ticket;
            $this->set_php_file("card_ticket.php", json_encode($data));
          }
        }else {
            $ticket = $data->jsapi_ticket;
        }
       return $ticket;
   }


  private function getAccessToken() {
    // access_token 应该全局存储与更新，以下代码以写入到文件中做示例
    $data = json_decode($this->get_php_file("access_token.php"));
    if ($data->expire_time < time()) {
      // 如果是企业号用以下URL获取access_token
      // $url = "https://qyapi.weixin.qq.com/cgi-bin/gettoken?corpid=$this->appId&corpsecret=$this->appSecret";
      $url = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=$this->appId&secret=$this->appSecret";
      $res = json_decode($this->httpGet($url));
      $access_token = $res->access_token;
      if ($access_token) {
        $data->expire_time = time() + 1000;
        $data->access_token = $access_token;
        $this->set_php_file("access_token.php", json_encode($data));
      }
    } else {
      $access_token = $data->access_token;
    }
    return $access_token;
  }

  private function httpGet($url) {
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


  private function httpPost($url, $post) {
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


  private function get_php_file($filename) {
    return trim(substr(file_get_contents($filename), 15));
  }
  private function set_php_file($filename, $content) {
    $fp = fopen($filename, "w");
    fwrite($fp, "<?php exit();?>" . $content);
    fclose($fp);
  }
}

