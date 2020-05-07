<?php
class Karyawan extends CI_Controller{
    
    public function __construct() {
        parent::__construct();
        $this->load->helper('url');
        $this->load->model('karyawan_m');
    }

    public function index(){
        $data['get_all']        = $this->karyawan_m->get_all();
        $data['title']			= "Data Karyawan";
        $data['title_page']		= "Master Karyawan";
        $data['page_content'] 	= "karyawan_v";
        $this->load->view('utama_v',$data);
    }

    public function add(){
        $data['get_nik_new']    = $this->karyawan_m->get_nik_new()->result();
        $data['title_page']		= "Add Karyawan";
        $data['page_content']   = "karyawan_add_v";
        $this->load->view('utama_v', $data);
    }

    public function save(){

    }

    public function edit(){

    }

    public function update(){

    }

    public function delete(){

    }
}
?>