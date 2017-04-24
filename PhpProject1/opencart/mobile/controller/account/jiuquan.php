<?php

class ControllerAccountJiuquan extends Controller {

    public function index() {

	$this->load->model('catalog/product');
	$arr = $this->model_catalog_product->allMoney($this->session->data['customer_id']);
	$data['money']=$arr[0]['money'];
	$data['content'] = json_decode($arr[0]['other_users'], true);
	$this->response->setOutput($this->load->view('account/jiuquan', $data));
    }

}