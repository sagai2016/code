<?php

class ControllerProductCategoryy extends Controller {

    public function index() {
        $this->load->language('product/category');
        $this->load->model('catalog/categoryy');
        $this->load->model('tool/image');
        $all = $this->model_catalog_categoryy;

        $pages = 1;

        empty($this->request->get['page']) || $pages = $this->request->get['page'];

        //$page = empty($page) ? 0 : $page;

        $maxSum = 15;


        $Rs = $all->getcount();
        $count = (int) $Rs['count'];

        $pageSum = ceil($count / $maxSum);
        $pageCount = ($pages - 1) * $maxSum;

        $Rs = $all->getAll($pageCount, $maxSum);
        $data['page'] = $pageSum;

        $data['categories'] = [];
        $results = $this->model_catalog_categoryy->getCategory();

        $categories = [];
        foreach ($results as $k => $v) {


            $v['name'] = $v['name'];
            $v['href'] = $this->url->link('product/category', 'path=' . $v['category_id']);
            $categories[] = $v;
        }
        
        $data['categories'] = $categories;







        $pagination = new Pagination();
        $pagination->total = $count;
        $pagination->page = $pages;
        $pagination->limit = $maxSum;
        $pagination->url = $this->url->link('product/categoryy' . '&page={page}');

        $data['pagination'] = $pagination->render();
        $data['results'] = sprintf($this->language->get('text_pagination'), ($count) ? (($pages - 1) * $maxSum) + 1 : 0, ((($pages - 1) * $maxSum) > ($count - $maxSum)) ? $count : ((($pages - 1) * $maxSum) + $maxSum), $maxSum, ceil($maxSum / $maxSum));

        //var_dump($data['pagination']);

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

        $this->response->setOutput($this->load->view('product/categoryy', $data));
    }

}
