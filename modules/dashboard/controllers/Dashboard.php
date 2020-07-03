<?php

class Dashboard extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        if ($this->session->userdata('role_id') != '2') {
            $this->session->set_flashdata('pesan', '<div class="alert alert-danger alert-dismissible fade show" role="alert">
                Anda Belum Login!
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>');
            redirect('auth/login');
        }
    }

    public function tambah_ke_keranjang($id)
    {

        $barang = $this->model_barang->find($id);

        $data = array(
            'id'      => $barang->id_brg,
            'qty'     => 1,
            'price'   => $barang->harga,
            'name'    => $barang->nama_brg
        );

        $this->cart->insert($data);
        redirect('welcome');
    }

    public function detail_keranjang()
    {
        $this->load->view('welcome/templates/header');
        $this->load->view('welcome/templates/sidebar');
        $this->load->view('belanja/keranjang');
        $this->load->view('welcome/templates/footer');
    }

    public function hapus_keranjang()
    {

        $this->cart->destroy();
        redirect('welcome');
    }

    public function pembayaran()
    {
        $this->load->view('welcome/templates/header');
        $this->load->view('welcome/templates/sidebar');
        $this->load->view('belanja/pembayaran');
        $this->load->view('welcome/templates/footer');
    }

    public function proses_pesanan()
    {
        $is_processed = $this->model_invoice->index();
        if ($is_processed) {
            $this->cart->destroy();
            $this->load->view('welcome/templates/header');
            $this->load->view('welcome/templates/sidebar');
            $this->load->view('belanja/proses_pesanan');
            $this->load->view('welcome/templates/footer');
        } else {
            echo "Maaf, Pesanan Anda Gagal diproses!";
        }
    }

    public function detail($id_brg)
    {
        $data['barang'] = $this->model_barang->detail_brg($id_brg);
        $this->load->view('welcome/templates/header');
        $this->load->view('welcome/templates/sidebar');
        $this->load->view('welcome/detail_barang', $data);
        $this->load->view('welcome/templates/footer');
    }
    public function search(){
        $keyword = $this->input->post('keyword');
        $data['dashboard']=$this->model_barang->get_keyword($keyword);
        $this->load->view('welcome/templates/header');
        $this->load->view('welcome/templates/sidebar');
        $this->load->view('dashboard', $data);
        $this->load->view('welcome/templates/footer');
    }
}
