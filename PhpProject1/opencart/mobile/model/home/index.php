<?php
class ModelHomeIndex extends Model {

    
    
    public function getProduct() {
        $query=$this->db->query('select * from '.DB_PREFIX.'product order by product_id limit 1');
        return $query->rows;
    }
    
    public function getDatu() {
        //$sql='select * from '.DB_PREFIX.'product'.' WHERE product_id>=65 order by product_id desc';
        //echo $sql;exit;
        $query=$this->db->query('select * from '.DB_PREFIX.'product p LEFT JOIN ' .DB_PREFIX . 'product_to_category p2c on (p.product_id=p2c.product_id) where p2c.category_id=63'.' order by p.sort_order desc ,p.product_id desc limit 2');
        return $query->rows;
    }
   

    
    
}