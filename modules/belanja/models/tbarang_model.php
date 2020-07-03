<?php
class tbarang_model extends CI_Model
{

    //ambil data tb_barang dari database
    function get_tb_barang_list($limit, $start)
    {
        $query = $this->db->get('tb_barang', $limit, $start);
        return $query;
    }

}
