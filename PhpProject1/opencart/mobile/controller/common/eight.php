<?php

class ControllerCommonEight extends Controller {

    public function index() {
        $this->response->setOutput($this->load->view('common/eight'));
    }
    
}
