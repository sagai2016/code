<?php
class ControllerCommonHeader extends Controller {
	public function index() {


		// Menu
		$this->load->model('catalog/category');
//


		$data['categories'] = array();

		$categories = $this->model_catalog_category->getCategories(0);

		foreach ($categories as $category) {
                    
			if ($category['top']) {
                            
   

				// Level 1
				$data['categories'][] = array(
					'name'     => $category['name'],
					//'children' => $children_data,
					'column'   => $category['column'] ? $category['column'] : 1,
					'href'     => $this->url->link('product/category', 'path=' . $category['category_id'])
				);
                                
			}

		}


		return $data;

	}
                        
}
