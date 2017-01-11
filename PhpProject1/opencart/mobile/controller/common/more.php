<?php

class ControllerCommonMore extends Controller {

    public function index() {
        $this->response->setOutput($this->load->view('common/more'));
    }
    
}
