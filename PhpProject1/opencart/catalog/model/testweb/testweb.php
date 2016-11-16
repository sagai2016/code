<?php

class ModelTestwebTestweb extends Model {

    public function hiopencart() {
        $data = [];

        for ($i = 0; $i < 100; ++$i) {
            $data[] = $i;
        }
        return $data;
    }

    public function datahiopencart() {
        $sql= 'SELECT * FROM '.DB_PREFIX.'hiopencarts;';
        $query = $this->db->query($sql);
        return $query->rows;
    }

}
