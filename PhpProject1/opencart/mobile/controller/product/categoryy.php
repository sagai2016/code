<?php

class ControllerProductCategoryy extends Controller {

    private $maxSum = 15; //每夜最多显示多少条数量
    private $count = 0;
    private $pages = 1;
    private $all = [];

    public function index() {

        $data = $this->content();
        $data['categories'] = [];
        $results = $this->all->getCategory();
        $categories = [];
        foreach ($results as $v) {
            $v['name'] = $v['name'];
            $v['href'] = $this->url->link('product/category', 'path=' . $v['category_id']);
            $categories[] = $v;
        }

        $data['categories'] = $categories;

        $this->response->setOutput($this->load->view('product/categoryy', $data));
    }

    public function back() {
        if (!empty($this->content())) {
            echo json_encode($this->content());
        }
        else
        {
            echo json_encode('stop');
        }
    }

    private function content() {

        $this->load->language('product/category');
        $this->load->model('catalog/categoryy');
        $this->load->model('tool/image');
        $this->all = $this->model_catalog_categoryy;

        empty($this->request->get['page']) || $this->pages = $this->request->get['page'];


        $data = [];

        $rsCount = $this->all->getcount(); //得到的是产品的总数量

        $this->count = (int) $rsCount['count'];

        $pageSum = ceil($this->count / $this->maxSum); //得到最大页数

        $pageCount = ( $this->pages - 1) * $this->maxSum; //显示产品的起始数量，最少显示0条，依次每页增加15条

        $Rs = $this->all->getAll($pageCount, $this->maxSum);
        $i = 0;
        foreach ($Rs as $t) {
            $data['all'][$i]['product_id'] = $t['product_id'];
            $data['all'][$i]['name'] = $t['name'];
            $data['all'][$i]['image'] = $t['image'];


            if (isset($t['image'])) {
                $data['all'][$i]['image'] = $this->model_tool_image->resize($t['image'], $this->config->get($this->config->get('config_theme') . '_image_product_width'), $this->config->get($this->config->get('config_theme') . '_image_product_height'));
            } else {
                $data['all'][$i]['image'] = $this->model_tool_image->resize('placeholder.png', $this->config->get($this->config->get('config_theme') . '_image_product_width'), $this->config->get($this->config->get('config_theme') . '_image_product_height'));
            }
            ++$i;
        }
        return $data;
    }

}
