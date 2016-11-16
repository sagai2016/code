<?php
class ModelMytestMytest extends Model {
    public function ceshi() {
        //$sql= 'SELECT * FROM '.DB_PREFIX.'mytest m inner join '. DB_PREFIX.'hiopencarts h on (m.test_id=h.id) where test_id'.'=1' ;
        //echo $sql;
        $query = $this->db->query("SELECT * FROM ".DB_PREFIX."mytest m inner join ". DB_PREFIX. "hiopencarts h on (m.test_id=h.id) where test_id =".'1');
        return $query->rows;
    
}
 

}
