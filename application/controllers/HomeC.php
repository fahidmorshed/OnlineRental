<?php
if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class HomeC extends CI_Controller
{
    
    function __construct()
    {
        //   This is theconstructor for Homepage
        //   Loads The Database
        //   Set up the necessary headers
        //   Configures cache query
        //   crud model is set to ip data
        parent::__construct();
        $this->load->database();
        //$this->load->library('paypal');
        /*cache control*/
		//ini_set("user_agent","My-Great-Marketplace-App");
		$cache_time	 =  $this->db->get_where('general_settings',array('type' => 'cache_time'))->row()->value;
		if(!$this->input->is_ajax_request()){
			$this->output->set_header('HTTP/1.0 200 OK');
			$this->output->set_header('HTTP/1.1 200 OK');
			$this->output->set_header('Last-Modified: '.gmdate('D, d M Y H:i:s', time()).' GMT');
			$this->output->set_header('Cache-Control: no-store, no-cache, must-revalidate');
			$this->output->set_header('Cache-Control: post-check=0, pre-check=0');
			$this->output->set_header('Pragma: no-cache');
            if($this->router->fetch_method() == 'index'){
                $this->output->cache($cache_time);
            }
		}
		$this->config->cache_query();
        $this->crud_model->ip_data();
    }
    
    /* FUNCTION: Loads Homepage*/
    public function index()
    {
        //$page_data['slider']            = 'slider';
        //$page_data['slider_news']       = $this->crud_model->get_special('2','5');
        $page_data['category_place_1']  = $this->crud_model->get_category('2','5');
        $page_data['page_name']         = "home";
        $page_data['page_title']        = translate('home');
        // if($this->session->userdata('user_name')){
        //     $page_data['user_name']         = $this->session->userdata('user_name');
        // }
        // else{
        //     $page_data['user_name']         = "Guest";
        // }
        //$page_data['current_user']      = "NA";
        $this->load->view('front/index', $page_data);
    }

    function test(){
        $page_data['page_name']         = "compose_mail";
        $page_data['page_title']        = translate('compose_mail');
        $this->load->view('front/index', $page_data);
    }
    
    // function search(){
    //     $page_data['page_name']     = "search";
    //     $page_data['page_title']    = translate('search');
    //     // if($this->session->userdata('user_name')){
    //     //     $page_data['user_name']         = $this->session->userdata('user_name');
    //     // }
    //     // else{
    //     //     $page_data['user_name']         = "Guest";
    //     // }
    //     $this->load->view('front/index', $page_data); 
    // }

/*    function login()
    {
        $page_data['page_name']     = "login";
        $page_data['page_title']    = translate('login');
        if($this->session->userdata('user_name')){
            $page_data['user_name']         = $this->session->userdata('user_name');
        }
        else{
            $page_data['user_name']         = "Guest";
        }
        $this->load->view('front/index', $page_data);
    }
*/
    // function my_profile()
    // {
         
    //     $page_data['page_name']     = "my_profile";
    //     $page_data['page_title']    = translate('my_profile');
    //     // if($this->session->userdata('user_name')){
    //     //     $page_data['user_name']         = $this->session->userdata('user_name');
    //     // }
    //     // else{
    //     //     $page_data['user_name']         = "Guest";
    //     // }
    //     $this->load->view('front/index', $page_data);
    // }
  // function do_login()
  //   {
  //       $email      =   $this->input->post('email');
  //       $password   =   $this->input->post('password');

  //       $query      =   $this->db->get_where('user' , array('email' => $email , 'password' => $password));
  //       if ($query->num_rows() > 0)
  //       {
  //           $row = $query->row();
  //           $this->session->set_userdata('user_name', $row->name);
  //           redirect(base_url() . 'index.php/home/index' , 'refresh');
  //       }

  //       else {
  //           redirect(base_url() . 'index.php/home/registers' , 'refresh');
  //       }   
  //   }

  //   function do_loggout(){
  //       $email = "";
  //       $password = "";
  //       $this->session->unset_userdata('user_name');
  //       $this->session->sess_destroy();
  //       redirect(base_url() . 'index.php/home/index' , 'refresh');
  //   }
    
  /*  function home1()
    {
        $page_data['slider']        = 'slider1';
        $page_data['page_name']     = "home1";
        $page_data['page_title']    = translate('home1');
        $this->load->view('front/index', $page_data);
    }*/
    // function addproperty(){
    //     $page_data['page_name']  = "addpropertyview";
    //     $this->load->view('front/index', $page_data);
    // }

    // function registers($param1 = '')
    // {
    //    //echo 'dsdsdsd';
    //     if ($param1 == 'create') 
    //     {
            
    //         $data['name']     =   $this->input->post('name');
    //         $data['email']       =   $this->input->post('email');
    //         $data['password']      =   $this->input->post('password');
    //         $data['phone']      =   $this->input->post('phone');
    //         $data['address']   =   $this->input->post('address'); 
    //         $this->db->insert('user' , $data);
    //         redirect(base_url() . 'index.php/home' , 'refresh');
            
            

    //     }
    //     $page_data['page_name']     = "registers";
       
    //     $this->load->view('front/index', $page_data);
       
    // }

  



    function news_detail()
    {
        
        $page_data['page_name']     = "news_detail";
        $page_data['page_title']    = translate('news_detail');
        $this->load->view('front/index', $page_data);
    }

/*    function page1()
    {
        
        $page_data['page_name']     = "page1";
        $page_data['page_title']    = translate('page1');
        $this->load->view('front/index', $page_data);
    }

    function page2()
    {
        
        $page_data['page_name']     = "page2";
        $page_data['page_title']    = translate('page2');
        $this->load->view('front/index', $page_data);
    }

    function page3()
    {
        
        $page_data['page_name']     = "page3";
        $page_data['page_title']    = translate('page3');
        $this->load->view('front/index', $page_data);
    }

    function page4()
    {
        
        $page_data['page_name']     = "page4";
        $page_data['page_title']    = translate('page4');
        $this->load->view('front/index', $page_data);
    }

    function page5()
    {
        
        $page_data['page_name']     = "page5";
        $page_data['page_title']    = translate('page5');
        $this->load->view('front/index', $page_data);
    }
*/
  

    function error()
    {
        $this->load->view('front/error');
    }

    //SITEMAP
/*    function sitemap(){
        $otherurls = array(
                        base_url().'index.php/home/contact/',
                        base_url().'index.php/home/legal/terms_conditions',
                        base_url().'index.php/home/legal/privacy_policy'
                    );
        $producturls = array();
        $products = $this->db->get_where('product',array('status'=>'ok'))->result_array();
        foreach ($products as $row) {
            $producturls[] = $this->crud_model->product_link($row['product_id']);
        }
        $vendorurls = array();
        $vendors = $this->db->get_where('vendor',array('status'=>'approved'))->result_array();
        foreach ($vendors as $row) {
            $vendorurls[] = $this->crud_model->vendor_link($row['vendor_id']);
        }
        $page_data['otherurls']  = $otherurls;
        $page_data['producturls']  = $producturls;
        $page_data['vendorurls']  = $vendorurls;
        $this->load->view('front/sitemap', $page_data);
    }
    */
    
}

/* End of file home.php */
/* Location: ./application/controllers/home.php */
