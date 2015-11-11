<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Upload_Controller extends CI_Controller {    
public function __construct() {
    parent::__construct();   
}       
public function file_view(){
    $this->load->view('file_view', array('error' => ' ' ));    
}
public function do_upload(){
	$user_id = $this->session->userdata('user_id');
     $config =  array(
                  'upload_path'     => "./images/users/",
                  'allowed_types'   => "gif|jpg|png|jpeg|pdf",
                  'overwrite'       => TRUE,
                  'max_size'        => "2048000",  // Can be set to particular file size
                  'max_height'      => "768",
                  'max_width'       => "1024",
                  'file_name'		=>  "user_"."$user_id"
        );    
		$this->load->library('upload', $config);
		if($this->upload->do_upload())
			{
			$page_data['page_name'] = "home";
    	    $this->load->view('front/index', $page_data);
			}
		else
			{
			$page_data['page_name'] = "file_view";
        	$this->load->view('front/index', $page_data);
			}    
		
		$update_data = array(
               'image_id' => "user_"."$user_id".".jpg"
               
            );

		$this->db->where('user_id', $user_id);
		$this->db->update('user', $update_data); 

	}
}
?>