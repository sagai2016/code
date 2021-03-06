<?php

class ModelCatalogCategoryy extends Model {

    public function getAll($start, $limit) {
        $table = 'p.product_id,p.image,pd.name,p.price,p.quantity';
        $query = $this->categoryy($table, [$start, $limit]);

        return $query->rows;
        
    }

    public function getcount() {
        $table = "count(p.product_id) as count";
        $query = $this->categoryySql($table, [1]);
        return $query->row;
    }

    private function categoryySql($table, $limit = []) {
        $sql = 'select ' . $table .
                ' from ' .
                DB_PREFIX . 'product p LEFT JOIN ' .
                DB_PREFIX . 'product_description pd on (p.product_id=pd.product_id)' .
                ' where p.quantity>0 and p.product_id<151 and language_id=' . $this->config->get('config_language_id') .
                ' order by  p.sort_order desc ,p.product_id desc  limit ' . join(',', $limit);
           
        $query = $this->db->query($sql);
        return $query;
    }

    //后期改动中要有分类    这个sql语句只取八窖珍藏的数据category_id=63
    private function categoryy($table, $limit = []) {
        $sql = 'select ' . $table .
                ' from ' .
                DB_PREFIX . 'product p LEFT JOIN ' .
                DB_PREFIX . 'product_description pd on (p.product_id=pd.product_id) LEFT JOIN ' .
                DB_PREFIX . 'product_to_category p2c on (pd.product_id=p2c.product_id)' .
                ' where p.quantity>0 and p2c.category_id=63 and language_id=' . $this->config->get('config_language_id') .
                ' order by  p.sort_order desc ,p.product_id desc  limit ' . join(',', $limit);
    $query = $this->db->query($sql);
        return $query;
    }

    public function getCategory($parent_id = 0) {
        $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "category c LEFT JOIN " . DB_PREFIX . "category_description cd ON (c.category_id = cd.category_id) LEFT JOIN " . DB_PREFIX . "category_to_store c2s ON (c.category_id = c2s.category_id) WHERE c.parent_id = '" . (int) $parent_id . "' AND cd.language_id = '" . (int) $this->config->get('config_language_id') . "' AND c2s.store_id = '" . (int) $this->config->get('config_store_id') . "'  AND c.status = '1' ORDER BY c.sort_order, LCASE(cd.name)");
        return $query->rows;
    }

}
