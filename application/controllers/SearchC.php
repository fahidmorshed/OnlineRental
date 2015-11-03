<?php
if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class SearchC extends CI_Controller{

	public function index(){
        $page_data['page_name']     = "search";
        $page_data['page_title']    = translate('search');
        $this->load->view('front/index', $page_data); 
    }

    function get_result(){
    	echo "NOT IMPLEMENTED...";
    }

    function error()
    {
        $this->load->view('front/error');
    }
}