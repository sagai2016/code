<?php

class ControllerAccountSuccess extends Controller {

    public function index() {
        if ((!empty($this->session->data['pushCord']) &&
                !empty($this->session->data['pushCordTime'])) &&
                $this->session->data['pushCordTime'] > time() &&
                $this->session->data['pushCord'] == $this->request->get['pushCord']) {
            $id = 5555;
            $deal_detail = '新人券';
            $description = '仅可用于购买八窖珍藏系列商品时抵扣';
            $logo = 'http://' . $_SERVER['HTTP_HOST'] . '/image/catalog/demo/manufacturer/newlogo.jpg';
            $brand_name = '八窖酒票';
            $title = '100元新人酒票';
            $date_info="2018-3-31 12:30:30";
            // 辅助参数
            // $sub_title = '八窖酒库优惠券';
            // $notice = '八窖酒库优惠券';
            // $custom_url_name = '优惠券';
            // $custom_url = 'http://www.163.com';
            // $promotion_url_name = '卖酒了';
            // $promotion_url = 'http://www.baidu.com';
          
            $data['checkIsPush']=true;
            if (class_exists(JSSDK)) {
                $cardInfo = new JSSDK(WXPAY_APPID, WXPAY_APPSECRET);

                $data['info'] = $cardInfo->getCardInfo($id, $deal_detail, $description, $logo, $brand_name, $title, $sub_title, $notice, $custom_url_name, $custom_url, $promotion_url_name, $promotion_url,$date_info);
            }

            unset($this->session->data['pushCord']);
            unset($this->session->data['pushCordTime']);

            $this->response->setOutput($this->load->view('common/success_register', $data));
        }
        else
        {
            $this->response->redirect($this->url->link('common/home'));
            unset($this->session->data['pushCord']);
            unset($this->session->data['pushCordTime']);
        }
    }

}
