<?php
class ModelHomeIndex extends Model {
    
     /*public function getProduct() {
        //$sql='select * from '.DB_PREFIX.'product';
        //echo $sql;
        $query=$this->db->query('select * from '.DB_PREFIX.'product '.'where product_id>60');
        
        if ($query->num_rows) {
                return array(
                        'product_id'       => $query->row['product_id'],				
                        'quantity'         => $query->row['quantity'],
                        //'stock_status'     => $query->row['stock_status'],
                        'image'            => $query->row['image'],
                        //'manufacturer_id'  => $query->row['manufacturer_id'],
                        'minimum'          => $query->row['minimum'],
                        //'manufacturer'     => $query->row['manufacturer'],
                        //'price'            => ($query->row['discount'] ? $query->row['discount'] : $query->row['price'])
                );
        } else {
                return false;
        }
    }*/ 
    
    
    public function getProduct() {
        $query=$this->db->query('select * from '.DB_PREFIX.'product order by product_id limit 2');
        return $query->rows;
    }
    
    public function getDatu() {
        //$sql='select * from '.DB_PREFIX.'product'.' WHERE product_id>=65 order by product_id desc';
        //echo $sql;exit;
        $query=$this->db->query('select * from '.DB_PREFIX.'product'.' WHERE product_id>=65 and product_id<=68 order by product_id desc');
        return $query->rows;
    }
   
    
    
    /*public function getProductOptions($product_id) {
		$product_option_data = array();

		$product_option_query = $this->db->query("SELECT * FROM " . DB_PREFIX . "product_option po LEFT JOIN `" . DB_PREFIX . "option` o ON (po.option_id = o.option_id) LEFT JOIN " . DB_PREFIX . "option_description od ON (o.option_id = od.option_id) WHERE po.product_id = '" . (int)$product_id . "' AND od.language_id = '" . (int)$this->config->get('config_language_id') . "' ORDER BY o.sort_order");

		foreach ($product_option_query->rows as $product_option) {
			$product_option_value_data = array();

			$product_option_value_query = $this->db->query("SELECT * FROM " . DB_PREFIX . "product_option_value pov LEFT JOIN " . DB_PREFIX . "option_value ov ON (pov.option_value_id = ov.option_value_id) LEFT JOIN " . DB_PREFIX . "option_value_description ovd ON (ov.option_value_id = ovd.option_value_id) WHERE pov.product_id = '" . (int)$product_id . "' AND pov.product_option_id = '" . (int)$product_option['product_option_id'] . "' AND ovd.language_id = '" . (int)$this->config->get('config_language_id') . "' ORDER BY ov.sort_order");

			foreach ($product_option_value_query->rows as $product_option_value) {
				$product_option_value_data[] = array(
					'product_option_value_id' => $product_option_value['product_option_value_id'],
					'option_value_id'         => $product_option_value['option_value_id'],
					'name'                    => $product_option_value['name'],
					'image'                   => $product_option_value['image'],
					'quantity'                => $product_option_value['quantity'],
					'subtract'                => $product_option_value['subtract'],
					'price'                   => $product_option_value['price'],
					'price_prefix'            => $product_option_value['price_prefix'],
					'weight'                  => $product_option_value['weight'],
					'weight_prefix'           => $product_option_value['weight_prefix']
				);
			}

			$product_option_data[] = array(
				'product_option_id'    => $product_option['product_option_id'],
				'product_option_value' => $product_option_value_data,
				'option_id'            => $product_option['option_id'],
				'name'                 => $product_option['name'],
				'type'                 => $product_option['type'],
				'value'                => $product_option['value'],
				'required'             => $product_option['required']
			);
		}

		return $product_option_data;
	}*/
    
    
}

