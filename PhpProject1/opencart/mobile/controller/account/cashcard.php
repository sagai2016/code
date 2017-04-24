<?php

class ControllerAccountCashcard extends Controller {

    public function index() {
	
	$data=[];

	$data['startTime']=0;
	$data['overTime']=24;	

	//$data['time']=(time())*1000;
	//$time = strtotime(date('Ymd'));//当天24点时间
	// if(date('H')>=9 && date('H')<=10){
	// 	$data['startTime']=0;
	// 	$data['overTime']=24;	
	// }
	
	// if(date('H')>=16 && date('H')<=18){
	// 	$data['startTime']=16;
	// 	$data['overTime']=18;	
	// }

	$this->response->setOutput($this->load->view('account/cashcard', $data));
	
    }
    
}
