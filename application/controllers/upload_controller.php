<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Upload_Controller extends CI_Controller {    
public function __construct() {
    parent::__construct();   
}       
public function file_view(){
    $this->load->view('file_view', array('error' => ' ' ));    
}
public function do_upload(){
	if($this->session->userdata('user_name') == ""){
                redirect(base_url() . 'index.php/profileC/error' , 'refresh');
    }
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
			$page_data['page_name']     = "my_profile";
	        $page_data['page_title']    = translate('my_profile');
	        $page_data['user_name']     = $this->session->userdata('user_name');
	        $page_data['user_id']       = $this->session->userdata('user_id');
	        $page_data['message']       = "Upload Successful";
	        $query      =   $this->db->get_where('user' , array('name' => $page_data['user_name'] , 'user_id' => $page_data['user_id']));
	        $row = $query->row();
	        $page_data['row'] = $row;
	        $this->load->view('front/index', $page_data);
			$update_data = array('image_id' => "user_"."$user_id".".jpg");

			$this->db->where('user_id', $user_id);
			$this->db->update('user', $update_data); 
			redirect(base_url() . 'index.php/profileC' , 'refresh');
			}
		else
			{
			$page_data['page_name']     = "my_profile";
	        $page_data['page_title']    = translate('my_profile');
	        $page_data['user_name']     = $this->session->userdata('user_name');
	        $page_data['user_id']       = $this->session->userdata('user_id');
			$page_data['message'] = "Error: Upload Failed!";
        	$this->load->view('front/index', $page_data);
			}    
		
	}
}
?>