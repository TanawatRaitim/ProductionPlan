<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Test extends CI_Controller {
	
	private $data;
	
	public function __construct()
	{
		parent::__construct();
		$this->load->library('assets');
	}

	

	public function index()
	{
		
		$this->data['css'] = $this->assets->get_css();
		$this->data['scripts'] = $this->assets->get_script();
		$this->data['title'] = 'test page';
		$this->data['nav'] = 'this is nav';
		
		$view1['my_data'] = 'data1';
		$this->data['content'] = $this->load->view('view1',$view1,TRUE);
		
		
		
		$this->load->view('template/template', $this->data);
	}

	
}