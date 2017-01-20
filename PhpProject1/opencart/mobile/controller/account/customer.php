<?php
class ControllerAccountCustomer extends Controller {
	public function index() {
        
            $this->response->setOutput($this->load->view('account/customer'));
        }
}