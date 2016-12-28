<?php
class ModelHomeIndex extends Model {

    
    
    public function getProduct() {
        $query=$this->db->query('select * from '.DB_PREFIX.'product order by product_id limit 4');
        return $query->rows;
    }
    
    public function getDatu() {
        //$sql='select * from '.DB_PREFIX.'product'.' WHERE product_id>=65 order by product_id desc';
        //echo $sql;exit;
        $query=$this->db->query('select * from '.DB_PREFIX.'product'.' order by product_id desc limit 5');
        return $query->rows;
    }
   

    
    
}