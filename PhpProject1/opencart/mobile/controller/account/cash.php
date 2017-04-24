<?php

class ControllerAccountCash extends Controller {

    public function index() {
	    //（现金返利） 流程 1、分享功能

	    
		$num = filter_input(INPUT_COOKIE,'num');

		empty($num) && $num = filter_input(INPUT_GET, 'num');


	    if (empty($num)) {
			return;
	    }


	    require_once(DIR_SYSTEM . 'library/weixinjssdk/jssdk.php');


		$jssdk = new JSSDK(WXPAY_APPID, WXPAY_APPSECRET);
		if(count($jssdk->getUserInfo())<8){
			setcookie('num',$num);
			$urls='http://cart.jlwhjl.com/banner/banner20174-4/index.html';
			header('Location: '.$urls);
			exit();
		}

	    $this->load->model('account/customer');
		$this->load->model('catalog/product');
		$varnum = $this->model_account_customer->userInfoMD5($num);
		if(empty($varnum)){
			return;
		}
			
	    //获取点击回来的用户的相关信息
	    $WXUser = $_SESSION['weixin_userinfo'];
	    $WXUserid = $WXUser['userid'];
	    $WXNickname = urlencode($WXUser['nickname']);
	    $userIp = filter_input(INPUT_SERVER, 'REMOTE_ADDR');
	    $userAgent = filter_input(INPUT_SERVER, 'HTTP_USER_AGENT');
	    date_default_timezone_set('PRC');
	    $startTime = time();
	    
	    $arr = [$WXUserid => [$userAgent, $userIp, $WXNickname], $startTime, 20];
	    $otherUsers = $this->model_catalog_product->otherUsers($num);

	    if (empty($otherUsers)) {
			$datamoney = '';
			goto write;
	    }

	    $dataOut = $otherUsers[0]['other_users'];
	    $datamoney = $otherUsers[0]['money'];
	    //把json转化为数组
	    $otherUsersAll = json_decode($dataOut, true);

	    //array_map为数组的每个元素应用回调函数
	    //$arrUser取到所有用户的user_id
	    $arrUser = array_map(function($p) {
			$arrKey = array_keys(array_slice($p, 0, 1));
			return ($arrKey[0]);
	    }, $otherUsersAll);
	    //取反，将所有用户的user_id作为键
	    $arrUserFlip = array_flip($arrUser);
	    if (array_key_exists($WXUserid, $arrUserFlip) === FALSE) {
			write:
			$otherUsersAll[] = $arr;
			#file_put_contents('/home/zc2017/opencart/test.txt', 69);
			$dataPut = json_encode($otherUsersAll, JSON_UNESCAPED_UNICODE);
			$this->model_catalog_product->money($varnum[0]['customer_id'], $dataPut, 20 +$datamoney);
			echo $this->load->view('account/cash');
			setcookie("num", "", time() - 3600);
			exit();
	    }
    }
}
