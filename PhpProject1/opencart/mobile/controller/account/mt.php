<?php

class ControllerAccountMt extends Controller {
    /*
      err message
      0 = 用户已领取
      1 = 卡已发完明天请早
      2 = 活动尚未开始或您今天已领取过卡券了
      3 = 准备领票
      4 = 领票成功
     */

    private $card_style_config = ['WLYC' => [50, '五粮液'], 'MTC' => [50, '茅台']];

    public function index() {
        if (!empty($this->session->data['customer_id'])) {
            $data = [];

            $this->response->setOutput($this->load->view('account/mt', $data));
        } else {
            echo '未登录';
           // $this->response->redirect($this->url->link('account/login'));
        }
    }

    // MT 活动
    public function goods_card_mt() {
        $start = 0;
        $over = 24;
        $this->goods_card($start, $over, 'MTC');
    }

    // WLY 活动
    public function goods_card_wly() {
        $start = 0;
        $over = 24;
        $this->goods_card($start, $over, 'WLYC');
    }

    // MT 领卡回发
    public function goods_card_mt_postback() {
        $start = 0;
        $over = 24;
        $this->postback($start, $over, 'MTC');
    }

    // WLY 领卡回发
    public function goods_card_wly_postback() {
        $start = 0;
        $over = 24;
        $this->postback($start, $over, 'WLYC');
    }

    // 发卡成功后回发方法
    /*
     * 微信发卡成功后回发操作
     * $start Int 启时时间
     * $over Int  结束时间
     * $p String 商品类型 （拼音首字母 - 大写）
     */
    private function postback($start, $over, $p = '') {
        // 启始配置判定方法
        $rs = $this->start_config_card($start, $over, $p);
        // 写入数据
        $this->model_catalog_product->updatecashCard($rs[0]['mtcard'], '100', $rs[0]['num_send'], time());
        $this->model_catalog_product->addUserCashCard($rs[0]['mtcard'], $this->session->data['customer_id'], time());
        // 输出信息
        die(json_encode(['msg' => 4]));
    }

    // 商品卡发卡方法
    /*
     * 微信发卡成功后回发操作
     * $start Int 启时时间
     * $over Int  结束时间
     * $p String 商品类型 （拼音首字母 - 大写）
     */
    private function goods_card($start, $over, $p = '') {
        // 启始配置判定方法
        $this->start_config_card($start, $over, $p);
        // 发卡
        $info = $this->push_card($p);
        // 输出信息
        echo json_encode(['msg' => 3, 'info' => $info]);
    }

    // 启始配置判定方法
    /*
     * 发卡前启始配置判定及配置
     * $start Int 启时时间
     * $over Int  结束时间
     * $p String 商品类型 （拼音首字母 - 大写）
     * return Array  返回结果
     */
    private function start_config_card($start, $over, $p = '') {

        date_default_timezone_set('PRC');
        $time = strtotime(date('Y-m-d'));
        if (date('H') >= $start && date('H') <= $over) {
            $this->load->model('catalog/product');
            //用户判定
            $user_rs = $this->model_catalog_product->UserCashCardCount($p, $this->session->data['customer_id']);
            empty($user_rs[0]['count']) || die(json_encode(['msg' => 0]));
            //卡判定券判定
            $product_rs = $this->model_catalog_product->cashCard($p . $time);
            empty($product_rs[0]) || $product_rs[0]['num_send'] >= 100 && die(json_encode(['msg' => 1]));

            //缺值填补
            $product_rs[0]['num_send'] = empty($product_rs[0]['num_send']) ? 1 : $product_rs[0]['num_send'] + 1;
            empty($product_rs[0]['mtcard']) && $product_rs[0]['mtcard'] = $p . $time;
            // 返回结果
            return $product_rs;
        }
        // 输出信息
        die(json_encode(['msg' => 2]));
    }

    // 发卡
    /*
     * 发卡设定
     * $p 商品类型 （拼音首字母 - 大写）
     * return Array  返回结果
     */
    private function push_card($p) {

        // 配置卡
        $card_title = '优惠券';
        $brand_name = '八窖酒库';
        $deal_detail = $this->card_style_config[$p][0] . '元' . $card_title;
        $description = '不可与其他优惠共享';
        $logo = 'http://' . filter_input(INPUT_SERVER, 'HTTP_HOST', FILTER_SANITIZE_STRING) . '/image/catalog/demo/manufacturer/newlogo.jpg';
        $id = strtolower($p . $this->card_style_config[$p][0]);
        $title = join('元', $this->card_style_config[$p]) . $card_title;

        // weixin jssdk 设置卡
        if (class_exists(JSSDK)) {
            $cardInfo = new JSSDK(WXPAY_APPID, WXPAY_APPSECRET);
            $info = $cardInfo->getCardInfo($id, $deal_detail, $description, $logo, $brand_name, $title);
        }
        // 返回结果
        return $info;
    }

}
