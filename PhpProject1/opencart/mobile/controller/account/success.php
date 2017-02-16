<?php
class ControllerAccountSuccess extends Controller {
	public function index() {

		$data=[];
		// $card_info = new JSSDK(WXPAY_APPID, WXPAY_APPSECRET);

		// $id = 666666;
		// $deal_detail = '芭蕉卡券';
		// $description = '芭蕉卡券的描述';
		// $logo = 'http://'.$_SERVER['HTTP_HOST'].'/'.'image/catalog/code.jpg';
		// $brand_name = '芭蕉';
		// $title = '芭蕉的卡券名';
		// $sub_title = '芭蕉的券名';
		// $notice = '芭蕉卡券使用说明';
		// $custom_url_name = '进入芭蕉地';
		// $custom_url = 'http://www.google.com';
		// $promotion_url_name = '卖芭蕉了';
		// $promotion_url = 'http://www.baidu.com';

		// $cardinfo =  $card_info->getCardInfo($id,$deal_detail,$description,$logo,$brand_name,$title,$sub_title,$notice,$custom_url_name,$custom_url,$promotion_url_name,$promotion_url);

		// $data['cardinfo'] = $cardinfo;

		$this->response->setOutput($this->load->view('common/success_register', $data));
	}
}