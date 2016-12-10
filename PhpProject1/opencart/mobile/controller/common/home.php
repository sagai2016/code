<?php

class ControllerCommonHome extends Controller {

    public function index() {


        $this->load->model('home/index');
        //menu
        $this->load->model('catalog/category');

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
        
        


        $this->response->setOutput($this->load->view('common/home', $data));
    }

}
