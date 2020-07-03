<?php

class Registrasi extends CI_Controller
{
    public function index()
    {
        $this->form_validation->set_rules('nama', 'Nama', 'required', [
            'required'  =>  'Nama wajib diisi!'
        ]);
        $this->form_validation->set_rules('username', 'Username', 'required', [
            'required'  => 'Username wajib diisi!'
        ]);
        $this->form_validation->set_rules('email', 'Email', 'required', [
            'required'  => 'Email wajib diisi!'
        ]);
        $this->form_validation->set_rules('password_1', 'Password', 'required|matches[password_2]', [
            'required'  => 'Password wajib diisi!',
            'matches'   => 'Password Tidak Cocok'
        ]);
        $this->form_validation->set_rules('password_2', 'Password', 'required|matches[password_1]');

        if ($this->form_validation->run() == false) {
            $this->load->view('welcome/templates/header');
            $this->load->view('registrasi');
            $this->load->view('welcome/templates/footer');
        } else {
            $email = $this->input->post('email', true);
            $data = array(
                'id'    => '',
                'nama'  => $this->input->post('nama'),
                'username'  => $this->input->post('username'),
                'email'  => ($email),
                'password'  => $this->input->post('password_1'),
                'role_id'  => 2,
                'is_active' => 0,
                'date_created' => time()
            );

            // siapakan token
            $token = base64_encode(random_bytes(32));
            $user_token = [
                'email' => $email,
                'token' => $token,
                'date_created' => time()
            ];

            $this->db->insert('tb_user', $data);
            $this->db->insert('user_token', $user_token);

            $this->_sendEmail($token, 'verify');

            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Congralution! your account has been created.
            Please Activate your account</div>');
            redirect('auth/login');
        }
    }


    private function _sendEmail($token, $type)
    {
        $this->load->library('email');
        $config = array();
        $config['protocol'] = 'smtp';
        $config['smtp_host'] = 'ssl://smtp.googlemail.com';
        $config['smtp_user'] = 'holicbima@gmail.com';
        $config['smtp_pass'] = 'Melinda12345';
        $config['smtp_port'] = 465;
        $config['mail type'] = 'html';
        $config['charset'] = 'utf-8';
        $this->email->initialize($config);

        $this->email->set_newline("\r\n");

        $this->load->library('email', $config);

        $this->email->from('holicbima@gmail.com', 'Rama Ferdyan');
        $this->email->to($this->input->post('email'));

        if ($type == 'verify') {
            $this->email->subject('Account Verification');
            $this->email->message('Click this link to veryfy account : <a 
            href="' . base_url() . 'auth/verify?email=' . $this->input->post('email') . '&token=' . urlencode($token) . '">Activate</a>');
        }

        if ($this->email->send()) {
            return true;
        } else {
            echo $this->email->print_debugger();
            die;
        }
    }


    public function verify()
    {
        $email = $this->input->get('email');
        $token = $this->input->get('token');

        $user = $this->db->get_where('user', ['email' => $email])->row_array();

        if ($user) {
            $user_token = $this->db->get_where('user_token', ['$token' => $token])
                ->row_array();

            if ($user_token) {
                if (time() - $user_token['date_created'] < (60 * 60 * 24)) {
                    $this->db->set('is_active', 1);
                    $this->db->where('email', $email);
                    $this->db->update('user');

                    $this->db->delete('user_token', ['email' => $email]);

                    $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">' . $email . ' has been activated! please login.</div>');
                    redirect('auth');
                } else {

                    $this->db->delete('user', ['email']);
                    $this->db->delete('user_token', ['email' => $email]);

                    $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Account activation failed! Wrong token expired</div>');
                    redirect('auth');
                }
            } else {
                $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Account activation failed! Wrong token</div>');
                redirect('auth');
            }
        } else {
            $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Account activation failed! Wrong email</div>');
            redirect('auth');
        }
    }

    public function logout()
    {
        $this->session->unset_userdata('email');
        $this->session->unset_userdata('role_id');

        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">You have been logged out!</div>');
        redirect('auth');
    }
}
