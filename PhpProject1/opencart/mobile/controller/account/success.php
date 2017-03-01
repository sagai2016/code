<?php
class ControllerAccountSuccess extends Controller {
	public function index() {

		//自己添加的卡片功能

		$data=[];
        
        // $data['info']=[];
        // $data['info']['$id'] = '1111';
        // $data['info']['deal_detail'] = '优惠券';
        // $data['info']['description'] = '每人限领1张，不可与其他优惠共享';
        // $data['info']['$logo'] = 'http://' . $_SERVER['HTTP_HOST'] . '/' . 'image/catalog/code.jpg';
        // $data['info']['$brand_name'] = '八窖酒库';
        // $data['info']['title'] = '八窖酒库优惠券';
        // $data['info']['sub_title'] = '八窖酒库优惠券';
        // $data['info']['notice'] = '八窖酒库优惠券';
        // $data['info']['custom_url_name'] = '八窖酒库优惠券';
        // $data['info']['custom_url'] = 'http://www.google.com';
        // $data['info']['promotion_url_name'] = '卖酒了';
        // $data['info']['promotion_url'] = 'http://www.baidu.com';


        $id = 5555;
        $deal_detail = '优惠券';
        $description = '不可与其他优惠共享';
        $logo = 'http://'.$_SERVER['HTTP_HOST'].'/image/catalog/demo/manufacturer/newlogo.jpg';
        $brand_name = '八窖酒库';
        $title = '新用户注册30元优惠券';
        // $sub_title = '八窖酒库优惠券';
        // $notice = '八窖酒库优惠券';
        // $custom_url_name = '优惠券';
        // $custom_url = 'http://www.163.com';
        // $promotion_url_name = '卖酒了';
        // $promotion_url = 'http://www.baidu.com';

        $data['cardInfo']='';
        //require_once(DIR_SYSTEM.'library/weixinjssdk/jssdk.php');
        if(class_exists(JSSDK)){
        	$cardInfo = new JSSDK(WXPAY_APPID, WXPAY_APPSECRET);

        $data['info'] = $cardInfo->getCardInfo($id,$deal_detail,$description,$logo,$brand_name,$title,$sub_title,$notice,$custom_url_name,$custom_url,$promotion_url_name,$promotion_url);
        }
		$this->response->setOutput($this->load->view('common/success_register', $data));
	}
}