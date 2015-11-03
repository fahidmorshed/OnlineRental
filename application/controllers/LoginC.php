<?php
if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class LoginC extends CI_Controller{

    public function index()
    {
        $page_data['page_name']     =  "login";
        $page_data['page_title']    = translate('login');
        $this->load->view('front/index', $page_data);
    }

    function do_login()
    {
        $email      =   $this->input->post('email');
        $password   =   $this->input->post('password');

        $query      =   $this->db->get_where('user' , array('email' => $email , 'password' => $password));
        if ($query->num_rows() > 0)
        {
            $row = $query->row();
            $this->session->set_userdata('user_name', $row->name);
            redirect(base_url() . 'index.php/homeC' , 'refresh');
            //$this->session->set_userdata('user_name', )
        }

        else {
            redirect(base_url() . 'index.php/loginC/register' , 'refresh');
        }   
    }

    function do_loggout(){
        $email = "";
        $password = "";
        $this->session->unset_userdata('user_name');
        $this->session->sess_destroy();
        redirect(base_url() . 'index.php/homeC' , 'refresh');
    }

    function register($param1 = '')
    {
       //echo 'dsdsdsd';
        if ($param1 == 'create') 
        {
            
            $data['name']     =   $this->input->post('name');
            $data['email']       =   $this->input->post('email');
            $data['password']      =   $this->input->post('password');
            $data['phone']      =   $this->input->post('phone');
            $data['address']   =   $this->input->post('address'); 
            $this->db->insert('user' , $data);
            redirect(base_url() . 'index.php/homeC' , 'refresh');
            
            

        }
        $page_data['page_name']     = "registers";
       
        $this->load->view('front/index', $page_data);
       
    }

    function error()
    {
        $this->load->view('front/error');
    }
}