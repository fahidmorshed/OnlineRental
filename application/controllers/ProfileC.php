<?php
if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class ProfileC extends CI_Controller{

	public function index(){
        $page_data['page_name']     = "my_profile";
        $page_data['page_title']    = translate('my_profile');
        $this->load->view('front/index', $page_data);
    }

    function error()
    {
        $this->load->view('front/error');
    }
}