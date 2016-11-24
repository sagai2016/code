<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class ControllerCommonTestweb extends Controller {

    public function index() {

        $this->load->model('testweb/testweb');
        //ModelTestwebTestweb
        $Dt = $this->model_testweb_testweb;

        $data['test'] = 'hi opencart';
        $data['data'] = $Dt->hiopencart();
        $data['datahiopencart'] = $Dt->datahiopencart();
        $this->response->setOutput($this->load->view('common/testweb', $data));
    }
    
    public function add()
    {
        echo 'aaa';
    }

}
