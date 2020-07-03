<?php

class Belanja_model extends CI_Model
{
    public function get_data()
    {
        $query = $this->db->get('tb_barang');
        return $query;
    }
}
