<?php
if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class ProfileC extends CI_Controller{

	public function index(){
        if($this->session->userdata('user_name') == ""){
                redirect(base_url() . 'index.php/profileC/error' , 'refresh');
        }
        $page_data['page_name']     = "my_profile";
        $page_data['page_title']    = translate('my_profile');
        $page_data['user_name']     = $this->session->userdata('user_name');
        $page_data['user_id']       = $this->session->userdata('user_id');
        $page_data['message']       = "";
        $query      =   $this->db->get_where('user' , array('name' => $page_data['user_name'] , 'user_id' => $page_data['user_id']));
        $row = $query->row();
        $page_data['row'] = $row;
        $this->load->view('front/index', $page_data);
    }

    function browse_profile($other_id){
        $page_data['page_name']     = "profile";
        $page_data['page_title']    = translate('profile');
        $page_data['user_name']     = $this->session->userdata('user_name');
        $page_data['user_id']       = $this->session->userdata('user_id');
        $page_data['message']       = "";
        $query      =   $this->db->get_where('user' , array('name' => $page_data['user_name'] , 'user_id' => $page_data['user_id']));
        $other_query = $this->db->get_where('user' , array('user_id' => $other_id));
        $row = $query->row();
        $other_row = $other_query->row();
        $page_data['row'] = $row;
        $page_data['other_row'] = $other_row;
        $this->load->view('front/index', $page_data);
    }

    function edit(){
        if($this->session->userdata('user_name') == ""){
                redirect(base_url() . 'index.php/profileC/error' , 'refresh');
        }
        $page_data['user_name'] = $this->session->userdata('user_name');
        $page_data['user_id'] = $this->session->userdata('user_id');
        $page_data['page_name'] = "my_profile_edit";
        $query      =   $this->db->get_where('user' , array('name' => $page_data['user_name'] , 'user_id' => $page_data['user_id']));
        $row = $query->row();
        $page_data['row'] = $row;
        $this->load->view('front/index', $page_data);
    }

    function submit_change(){
        if($this->session->userdata('user_name') == ""){
                redirect(base_url() . 'index.php/profileC/error' , 'refresh');
        }
        $data['name']     =   $this->input->post('name');
        $data['last_name'] = $this->input->post('lastname');
        $data['email']       =   $this->input->post('email');
        $data['password']      =   $this->input->post('password');
        $data['phone']      =   $this->input->post('phone');
        $data['address']   =   $this->input->post('address');

        $user_id = $this->session->userdata('user_id');
        $this->session->set_userdata('user_name', $data['name']);
        $this->db->where('user_id', $user_id);
        $this->db->update('user', $data);

        $page_data['page_name']     = "my_profile";
        $page_data['page_title']    = translate('my_profile');
        $page_data['user_name']     = $this->session->userdata('user_name');
        $page_data['user_id']       = $this->session->userdata('user_id');
        $page_data['message']       = "Update Successful";

        $query      =   $this->db->get_where('user' , array('name' => $page_data['user_name'] , 'user_id' => $page_data['user_id']));
        $row = $query->row();
        $page_data['row'] = $row;
        $this->load->view('front/index', $page_data);

    }

    function error()
    {
        $this->load->view('front/error');
    }
}