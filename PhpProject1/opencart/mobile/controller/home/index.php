<?php

class ControllerHomeIndex extends Controller {

    public function index() {
        $this->load->model('home/index');

        $dt = $this->model_home_index;
        $data['datu'] = $dt->getDatu();
        $this->response->setOutput($this->load->view('home/index', $data));

        $dd = $this->model_home_index;
        $data['product'] = $dd->getProduct();
        
        $this->response->setOutput($this->load->view('home/index', $data));
    }

}
