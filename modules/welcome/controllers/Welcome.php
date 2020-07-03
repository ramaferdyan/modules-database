<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Welcome extends CI_Controller
{
	
	public function index()
	{
		$data['products'] = $this->model_barang->tampil_data();
		$this->load->view('templates/header');
		$this->load->view('templates/sidebar');
		$this->load->view('dashboard/dashboard', $data);
		$this->load->view('templates/footer');
	}

	public function search()
	{
		$keyword = $this->input->post('keyword');
		$produk = $this->model_barang->search($keyword);
		$data['products'] = $produk;
		$hasil = $this->load->view('dashboard/view', $data, true);
		$callback = array(
			 'hasil' => $hasil,
			 );
		echo json_encode($callback);
	}

}
