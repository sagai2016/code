<?php
class ControllerAccountSend extends Controller {

    public function index() {
        
		$data = [];
		$this->load->model('catalog/product');
		$arr = $this->model_catalog_product->allMoney($this->session->data['customer_id']);

		$data_money = $arr[0]['money'];

		$arrId = [100 => 'xj100', 600 => 'xj600', 800 => 'xj800', 1000 => 'xj1000'
		    , 1600 => 'xj1600', 7800 => 'xj7800'];


		if (time() - $this->request->post['time'] >= 15 * 60) {
		    return;
		}
		
		if (!empty($num = $this->request->post['money']) 
			&& is_numeric($num) 
			&& is_int((int)$num)
			&& $num > 0
			&& $data_money >= $num
			) {
		  	$reduceMoney = $data_money - $num;
		  	$this->session->data['reduceMoney']=$reduceMoney;
		}
		else
		{
			return ;
		}
		
		$deal_detail = '优惠券';
		$description = '不可与其他优惠共享';
		$logo = 'http://' . $_SERVER['HTTP_HOST'] . '/image/catalog/demo/manufacturer/newlogo.jpg';
		$brand_name = '八窖酒库';
		$title = $num . '元酒票';
		$data['cardInfo'] = '';
		$id = $arrId[$num];
		$date_info=date('Y-m-d',strtotime('+1 month'));	

		 if (class_exists(JSSDK)) {
                $cardInfo = new JSSDK(WXPAY_APPID, WXPAY_APPSECRET);

                $data['info'] = $cardInfo->getCardInfo($id, $deal_detail, $description, $logo, $brand_name, $title, $sub_title, $notice, $custom_url_name, $custom_url, $promotion_url_name, $promotion_url,$date_info);
            }


            $data['num']=$this->request->post['money'];
            $data['time']=date('Y/m/d').'-'.date('Y/m/d',strtotime('+1 month'));	

		$this->response->setOutput($this->load->view('account/send
			', $data));
    }

    public function reduceMoney() {

    	$this->load->model('catalog/product');
		$arr = $this->model_catalog_product->reduceMoney($this->session->data['reduceMoney'],$this->session->data['customer_id']);
		echo json_encode(TRUE);
    }

}
