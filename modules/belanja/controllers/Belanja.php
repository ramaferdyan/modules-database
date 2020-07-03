<?php

class Belanja extends CI_Controller
{

    public function index()
    {
        $this->load->model('login/model_auth');

        $data['data'] = $this->belanja_model->get_data()->result();
        $this->load->view('belanja_view', $data);
    }
}
