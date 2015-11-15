<?php
class user_model extends CI_Model{
    //insert into user table
    function insertUser($data)
    {
        return $this->db->insert('user', $data);
    }
    
    //send verification email to user's email id
    function sendEmail($to_email)
    {
        $from_email = 'x.fahid@gmail.com'; //change this to yours
        $subject = 'Verify Your Email Address';
        $message = 'Dear User,<br /><br />Please click on the below activation link to verify your email address.<br /><br /> http://www.mydomain.com/user/verify/' . md5($to_email) . '<br /><br /><br />Thanks<br />Mydomain Team';
        
        //configure email settings
        $config['protocol'] = 'smtp';
        $config['smtp_host'] = 'ssl://smtp.googlemail.com'; //smtp host name
        $config['smtp_port'] = '465'; //smtp port number
        $config['smtp_user'] = $from_email;
        $config['smtp_pass'] = ''; //$from_email password
        $config['mailtype'] = 'html';
        $config['charset'] = 'iso-8859-1';
        //$config['SMTPSecure'] = 'tls';
        $config['wordwrap'] = TRUE;
        $config['newline'] = "\r\n"; //use double quotes
        //@mail($to_email, $subject, $message, "", "-f " . $from_email);
        $this->load->library('email');
        $this->email->initialize($config);
        //send mail
        $this->email->from($from_email, 'Admin');
        $this->email->to($to_email);
        $this->email->subject($subject);
        $this->email->message($message);
        if(!$this->email->send())
        {
            echo "$this->email->print_debugger()";
            //redirect(base_url() . 'index.php/searchC' , 'refresh');
            
        }
        else{
            redirect(base_url() . 'index.php/homeC' , 'refresh');
        }
    }
    
    //activate user account
    function verifyEmailID($key)
    {
        $data = array('status' => 1);
        $this->db->where('md5(email)', $key);
        return $this->db->update('user', $data);
    }	
}
?>