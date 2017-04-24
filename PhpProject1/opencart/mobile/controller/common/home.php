<?php
class ControllerCommonHome extends Controller {

    public function index() {
       
        $data['openmenuwxmsg'] = $this->session->data['openmenuwxmsg'];
        
        $this->load->model('home/index');
        //menu
        $this->load->model('catalog/category');


        if(!empty($this->session->data['openmenuwxmsg']) && empty($this->session->data['customer_id'] )
         ){
            header('Location:/mobile/index.php?route=account/login');
        }

        $dt = $this->model_home_index;
        $data['datu'] = $dt->getDatu();
        $data['product'] = $dt->getProduct();


        $categories = $this->model_catalog_category->getCategories(0);
        
        foreach ($categories as $category) {

            if ($category['top']) {
                // Level 1
                $data['categories'][] = array(
                    'name' => $category['name'],
                    'column' => $category['column'] ? $category['column'] : 1,
                    'href' => $this->url->link('product/category', 'path=' . $category['category_id'])
                );
            }
        }
    $this->coupon();        
        
        //酒券积分活动
        $data['num'] = '';
        if (!empty($this->session->data['customer_id'])) {
        $data['num'] = md5($this->session->data['customer_id']);
        }

        
        $this->response->setOutput($this->load->view('common/home', $data));

        
        

    }

    private function coupon(){
        if(!empty($this->request->get['cartid'])){
            $this->session->data['coupon']=$this->request->get['cartid'];
            $cardInfo = new JSSDK(WXPAY_APPID, WXPAY_APPSECRET);
             $res=$cardInfo->getCardCheack($_GET['encrypt_code'],$_GET['card_id']);
        }
    }

    public function openmenuwxmsg(){
        if($this->request->post['state']=='off'){
            unset($this->session->data['openmenuwxmsg']);
            setcookie('openmenuwxmsg',true,time()+365*24*3600);
            echo json_encode(true);
        }
    }

}
