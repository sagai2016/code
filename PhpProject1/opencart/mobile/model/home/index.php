<?php
class ModelHomeIndex extends Model {
    public function getimage() {
        $query=$this->db->query('select * from '.DB_PREFIX.'image');
        
        return $query->rows;
    }
}

