<?php
class Karyawan_m extends CI_Model{

    function get_all(){
        return $this->db->get("karyawan");
    }

    function get_nik_new(){
        return $this->db->query("SELECT MAX(nik)+1 AS nik_new FROM karyawan");
    }

    
}


?>