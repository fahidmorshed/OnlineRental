<?php
if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class InboxC extends CI_Controller{

	public function index(){
         if($this->session->userdata('user_name') == ""){
                redirect(base_url() . 'index.php/inboxC/error' , 'refresh');
        }
        $page_data['page_name']     = "inbox";
        $page_data['page_title']    = translate('inbox');
        $page_data['user_name']     = $this->session->userdata('user_name');
        $page_data['user_id']       = $this->session->userdata('user_id');
        $page_data['message']       = "";
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