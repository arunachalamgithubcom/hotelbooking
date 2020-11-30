<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class booking extends CI_Controller {

    function __construct() {
        parent::__construct();
		$this->load->database();
		$this->load->helper('url');
		$this->load->model('Login_model'); 
        $this->load->model('Booking_model');
		$this->load->library('session');
					 if ($this->session->userdata('user_login_access') == false) {
          redirect('welcome/index/'); // where you want to redirect
    }
	}
	public function gethotel()
	{
		$id = base64_decode($this->input->get('I'));
		$data['hotels'] = $this->Booking_model->hoteldata($id);
		error_reporting(0);
		
		$this->load->view('bookingdetails',$data);
	}

}
