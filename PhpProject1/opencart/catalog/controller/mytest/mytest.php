<?php
class ControllerMytestMytest extends Controller {
    public function index() {
        $this->load->model('mytest/mytest');
        $dt=$this->model_mytest_mytest;
        
        $data['a']='123';
        $data['test']='456';
        
        
        $data['database']=$dt->ceshi();
        
        $this->response->setOutput($this->load->view('mytest/mytest',$data));
        
    }
}

