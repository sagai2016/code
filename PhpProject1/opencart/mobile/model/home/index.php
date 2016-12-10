<?php
class ModelHomeIndex extends Model {

    
    
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
   

    
    
}