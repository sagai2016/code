<?php
class ControllerAccountCustomer extends Controller {
	public function index() {
            $this->load->model('account/customer');
            
            $data['userInfo'] = $this->model_account_customer->userInfo($this->session->data['customer_id']);
            $this->response->setOutput($this->load->view('account/customer',$data));
        }
}