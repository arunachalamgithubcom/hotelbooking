<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

    function __construct() {
        parent::__construct();
		$this->load->database();
		$this->load->library('session');
		$this->load->helper('url');
		
		$this->load->model('Login_model'); 
        $this->load->model('Booking_model');
	
	}
	public function index()
	{
		$this->load->view('welcome_message');
	}
	public function logout() {
        $this->session->sess_destroy();
        $this->session->set_flashdata('response', 'logged_out');
        redirect(base_url(), 'refresh');
    }
	public function availablehotel()
	{
				 if ($this->session->userdata('user_login_access') == false) {
          redirect('welcome/index/'); // where you want to redirect
    }
		$data['hotels']=$this->Booking_model->gethoteldata();
		error_reporting(0);
		$this->load->view('booking',$data);
	}
	public function rateASC()
	{
				 if ($this->session->userdata('user_login_access') == false) {
          redirect('welcome/index/'); // where you want to redirect
    }
		$data['hotels']=$this->Booking_model->gethoteldataratewiseASC();
		error_reporting(0);
		$this->load->view('booking',$data);
	}
	public function rateDESC()
	{
				 if ($this->session->userdata('user_login_access') == false) {
          redirect('welcome/index/'); // where you want to redirect
    }
		$data['hotels']=$this->Booking_model->gethoteldataratewiseDESC();
		error_reporting(0);
		$this->load->view('booking',$data);
	}
		public function priceASC()
	{
				 if ($this->session->userdata('user_login_access') == false) {
          redirect('welcome/index/'); // where you want to redirect
    }
		$data['hotels']=$this->Booking_model->gethoteldatapricewiseASC();
		error_reporting(0);
		$this->load->view('booking',$data);
	}
	public function priceDESC()
	{
				 if ($this->session->userdata('user_login_access') == false) {
          redirect('welcome/index/'); // where you want to redirect
    }
		$data['hotels']=$this->Booking_model->gethoteldatapricewiseDESC();
		error_reporting(0);
		$this->load->view('booking',$data);
	}
	public function updateprofile()
	{
				 if ($this->session->userdata('user_login_access') == false) {
          redirect('welcome/index/'); // where you want to redirect
    }
		$data = array(
			'Firstname' => $this->input->post('firstname'),
			'Lastname' => $this->input->post('lastname'),			
			'Designation' => $this->input->post('designation'),
			'Dob' => $this->input->post('dob'),
			'Email' => $this->input->post('email'),
			'Mobile' => $this->input->post('mobile'),
			
		);
		$id=$this->input->post('id');
		 $this->Login_model->Updateuser($id,$data);

		 $this->session->set_flashdata('response',"updated Successfully");
        redirect('welcome/viewprofile?I='.base64_encode($id));
	}
	public function viewprofile()
	{
				 if ($this->session->userdata('user_login_access') == false) {
          redirect('welcome/index/'); // where you want to redirect
    }
		$id = base64_decode($this->input->get('I'));
		$data['user'] = $this->Login_model->userdata($id);
	
		$this->load->view('editprofile',$data);
	}
	public function register()
	{
		   $lname = "myname"; 
	        $emrand = substr($lname,0,3).rand(1000,2000);
		    $file_name = $_FILES['profileimg']['name'];
		    $fileSize = $_FILES["profileimg"]["size"]/1024;
			$fileType = $_FILES["profileimg"]["type"];
            $str=explode("/",$fileType);
		//	$new_file_name='';
	
            $new_file_name = $emrand.'.'.$str[1];
			
			 move_uploaded_file($_FILES['profileimg']['tmp_name'],'./assets/profileimg/'.$new_file_name);

		$data = array(
			'Firstname' => $this->input->post('firstname'),
			'Lastname' => $this->input->post('lastname'),			
			'Designation' => $this->input->post('designation'),
			'Dob' => $this->input->post('dob'),
			'Email' => $this->input->post('email'),
			'Mobile' => $this->input->post('mobile'),
			'Password' => $this->input->post('password'),
			'Profileimg' =>$new_file_name,
		);
		$this->Login_model->adduser($data);
		$this->session->set_flashdata('response',"Registered Successfully");
         redirect(base_url(), 'refresh');
						 
	}
	public function login() 
	{
        $credential = array(
		'Email' =>$this->input->post('email'), 
		'Password' =>$this->input->post('password')
		);
		
        $query = $this->Login_model->getUserForLogin($credential);
        if ($query->num_rows() > 0) {
            $row = $query->row();
            $this->session->set_userdata('user_login_access', '1');
			$this->session->set_userdata('user_login_id', $row->id);
          
            redirect('welcome/availablehotel/');
        }
		else
		{
			 $this->session->set_flashdata('response',"Invalid credential");
             redirect('welcome/index/');
		}
	}
	
}
