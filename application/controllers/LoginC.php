<?php
if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class LoginC extends CI_Controller{

    public function index()
    {
        if($this->session->userdata('user_name') != ""){
            redirect(base_url() . 'index.php/homeC' , 'refresh');
        }
        $page_data['page_name']     =  "login";
        $page_data['page_title']    = translate('login');
        $page_data['try']           = "not_tried";
        $page_data['message']       = "";
        $this->load->view('front/index', $page_data);
    }

    function login_try()
    {
        $page_data['page_name']     =  "login";
        $page_data['page_title']    = translate('login');
        $page_data['try']           = "tried";
        $page_data['message']       = "";
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

            $this->session->set_userdata('user_id', $row->user_id);
            redirect(base_url() . 'index.php/homeC' , 'refresh');
            //$this->session->set_userdata('user_name', )
        }

        else {
            redirect(base_url() . 'index.php/loginC/login_try' , 'refresh');
        }   
    }

    function do_loggout(){
        if($this->session->userdata('user_name') == ""){
            redirect(base_url() . 'index.php/loginC/error' , 'refresh');
        }
        $email = "";
        $password = "";
        $page_data['try'] = "not_tried";
        $this->session->unset_userdata('user_name');
        $this->session->sess_destroy();
        redirect(base_url() . 'index.php/homeC' , 'refresh');
    }

    function register($param1 = '')
    {
       //echo 'dsdsdsd';
        if($this->session->userdata('user_name') != ""){
                redirect(base_url() . 'index.php/loginC/error' , 'refresh');
            }
        $page_data['page_name']     = "registers";
        $page_data['page_title']    = translate('registers');
        
        if ($param1 == 'create') 
        {
            $this->load->model('user_model');
            
            $data['name']     =   $this->input->post('name');
            $data['last_name'] = $this->input->post('lastname');
            $data['email']       =   $this->input->post('email');
            $data['password']      =   $this->input->post('password');
            $cpassword      =$this->input->post('cpassword');
            $data['phone']      =   $this->input->post('phone');
            $data['address']   =   $this->input->post('address');
            
            //$data['image_id'] = $this->input->post('userfile');
            
            $check_mail = $this->db->get_where('user', array('email' => $data['email']));
            if($check_mail->num_rows() > 0){
                $param1='';
                $this->register('already_reg');
            }

            else if($data['password'] != $cpassword){
                $param1='';
                $this->register('password_mismatch');
            }
            else{
                $this->db->insert('user' , $data);
                $query      =   $this->db->get_where('user' , array('email' => $data['email'] , 'password' => $data['password']));
                if ($query->num_rows() > 0)
                {
                    $row = $query->row();
                    $this->session->set_userdata('user_name', $row->name);
                    $this->session->set_userdata('user_id', $row->user_id);
                    //$this->user_model->sendEmail($data['email']);   //certificate issue...
                    redirect(base_url() . 'index.php/homeC' , 'refresh');
                    
                }
                //$user_id = $this->session->userdata('user_id');
                //$user_name = $this->session->userdata('user_name');
                //do_upload();
                //$this->crud_model->file_up($user_name, 'user', $user_id);

                //$this->session->set_userdata('user_name', $data['name']);
                
            }

        }
        else if($param1 == "password_mismatch"){
            $page_data['message']   = "Error: Password didn't match!";
            $page_data['try']           = "tried";
            $this->load->view('front/index', $page_data);
        }
        else if($param1 == "already_reg"){
            $page_data['message']   = "Error: Already registered!";
            $page_data['try']           = "tried";
            $this->load->view('front/index', $page_data);
        }
        
        else{
            $page_data['message']   = "";
            $page_data['try']           = "tried";
            $param1 ="";
            $this->load->view('front/index', $page_data);
        };
        
       
    }

    function error()
    {
        $this->load->view('front/error');
    }


    function do_upload(){
        if($this->session->userdata('user_name') == ""){
                redirect(base_url() . 'index.php/loginC/error' , 'refresh');
            }
     $config =  array(
                  'upload_path'     => "./uploads/",
                  'allowed_types'   => "gif|jpg|png|jpeg|pdf",
                  'overwrite'       => TRUE,
                  'max_size'        => "2048000",  // Can be set to particular file size
                  'max_height'      => "768",
                  'max_width'       => "1024"  
                );    
                $this->load->library('upload', $config);
                if($this->upload->do_upload())
                {
                    $data = array('upload_data' => $this->upload->data());
                    $this->load->view('upload_success',$data);
                }
                else
                {
                $error = array('error' => $this->upload->display_errors());
                $this->load->view('file_view', $error);
                }    
}
}