<?php
class ControllerHomeIndex extends Controller{
    public function  index(){
        $this->load->model('home/index');
        $dd=$this->model_home_index;
        
        $data['image']=$dd->getimage();
        
        $this->response->setOutput($this->load->view('home/index',$data));
        
    }
}

