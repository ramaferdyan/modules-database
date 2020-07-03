<?php

class Kategori extends CI_Controller
{
    public function elektronik()
    {
        $data['products'] = $this->model_kategori->data_elektronik();
        $this->load->view('welcome/templates/header');
        $this->load->view('welcome/templates/sidebar');
        $this->load->view('welcome/elektronik', $data);
        $this->load->view('welcome/templates/footer');
    }

    public function handphone()
    {
        $data['products'] = $this->model_kategori->data_handphone();
        $this->load->view('welcome/templates/header');
        $this->load->view('welcome/templates/sidebar');
        $this->load->view('welcome/handphone', $data);
        $this->load->view('welcome/templates/footer');
    }

    public function permainan()
    {
        $data['products'] = $this->model_kategori->data_permainan();
        $this->load->view('welcome/templates/header');
        $this->load->view('welcome/templates/sidebar');
        $this->load->view('welcome/permainan', $data);
        $this->load->view('welcome/templates/footer');
    }

    public function aksesoris()
    {
        $data['products'] = $this->model_kategori->data_aksesoris();
        $this->load->view('welcome/templates/header');
        $this->load->view('welcome/templates/sidebar');
        $this->load->view('welcome/aksesoris', $data);
        $this->load->view('welcome/templates/footer');
    }
}
