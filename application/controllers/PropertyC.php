<?php
if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class PropertyC extends CI_Controller{

	public function index(){
        $page_data['page_name']  = "addproperty";
        $this->load->view('front/index', $page_data);
    }

    function error()
    {
        $this->load->view('front/error');
    }
}