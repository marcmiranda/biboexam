<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Blog extends Public_Controller {
	
	private $api_getall;
	private $api_create;
	private $api_edit;
	private $api_delete;
	
	private $api_checkuser;
	private $api_reguser;
	
	function __construct() 
	{
		parent::__construct();
		$this->api_getall = base_url() . "api/get_all_blog";
		$this->api_create = base_url() . "api/create";
		$this->api_edit   = base_url() . "api/edit/";
		$this->api_delete = base_url() . "api/delete";
		
		$this->api_checkuser = base_url() . "api/authuser";
		$this->api_reguser = base_url() . "api/reguser";
	}
	
	public function index()
	{
		$data['page'] = "index_view";
		$data['module'] = "blog";
		
		// initialize header vars
		$data['header'] = "Clean Blog";
		$data['metadescription'] = "";
		$data['metaauthor'] = "";
		
		// get blog posts
		$data['blogdata'] = $this->ci_curl("get",$this->api_getall);
		
		$this->load->view($this->_container,$data);
	}
	
	public function logout()
	{
		$this->session->unset_userdata('data');
		redirect(base_url('blog/'));
	}
	
	public function login()
	{
		$data['page'] = "login_view";
		$data['module'] = "blog";
		
		// initialize header vars
		$data['header'] = "Clean Blog";
		$data['metadescription'] = "";
		$data['metaauthor'] = "";
		
		$data['error'] = "";
		
		// get post data
		if ($this->input->post()) {
			$username = $this->input->post("txtUsername");
			$password = $this->input->post("txtPassword");
			
			// check the user
			$data['userdata'] = $this->ci_curl("post",$this->api_checkuser,array("user"=>$username,"pass"=>$password));
			//var_dump($data['userdata']);
			if ($data['userdata']->status == "failed") {
				$data['error'] = "User does not exist.";
			} else {
				// user authenticated redirect to homepage
				$this->session->set_userdata("data",$data['userdata']->data);
				$data['error'] = "";
				//var_dump($data['userdata']->data);
				//var_dump($this->session->userdata("data"));
				redirect(base_url('blog/'));
			}
		}
		
		$this->load->view($this->_container,$data);
	}
	
	public function register() 
	{
		$data['page'] = "login_view";
		$data['module'] = "blog";
		
		// initialize header vars
		$data['header'] = "Clean Blog";
		$data['metadescription'] = "";
		$data['metaauthor'] = "";
		
		// get post data
		if ($this->input->post()) {
			
			$txtEmail = $this->input->post("txtEmail");
			$txtFirstName = $this->input->post("txtFirstName");
			$txtLastName = $this->input->post("txtLastName");
			$txtUsernameR = $this->input->post("txtUsernameR");
			$txtPasswordR = $this->input->post("txtPasswordR");
			
			$postdata = array(
				'email' => $txtEmail,
				'first_name' => $txtFirstName,
				'last_name' => $txtLastName,
				'username' => $txtUsernameR,
				'password' => $txtPasswordR
			);
			
			
			// check the user
			$data['userdata'] = $this->ci_curl("post",$this->api_reguser,$postdata);
			//var_dump($data['userdata']);
			/* if ($data['userdata']->status == "failed") {
				$data['error'] = "All fields are required.";
			} else {
				// user registered redirect to homepage
				//$this->session->set_userdata("data",$data['userdata']->data);
				//$data['error'] = "";
				//var_dump($data['userdata']->data);
				//var_dump($this->session->userdata("data"));
				//redirect(base_url('blog/'));
			} */
		}
		
		$this->load->view($this->_container,$data);
	}
	
	public function about()
	{
		$data['page'] = "about_view";
		$data['module'] = "blog";
		
		// initialize header vars
		$data['header'] = "Clean Blog";
		$data['metadescription'] = "";
		$data['metaauthor'] = "";
		
		$this->load->view($this->_container,$data);
	}
	
	public function post()
	{
		$data['page'] = "post_view";
		$data['module'] = "blog";
		
		// initialize header vars
		$data['header'] = "Clean Blog";
		$data['metadescription'] = "";
		$data['metaauthor'] = "";
		
		$this->load->view($this->_container,$data);
	}
	
	public function contact()
	{
		$data['page'] = "contact_view";
		$data['module'] = "blog";
		
		// initialize header vars
		$data['header'] = "Clean Blog";
		$data['metadescription'] = "";
		$data['metaauthor'] = "";
		
		$this->load->view($this->_container,$data);
	}
	
	private function ci_curl($method,$url,$datatopost = null)
	{
		// $this->load->library('curl');
		// $this->curl->create($url);
		 
		// Optional, delete this line if your API is open
		$username = 'admin';
		$password = '1234';
		// $this->curl->http_login($username, $password);
		
		$curl_handle = curl_init();
		curl_setopt($curl_handle, CURLOPT_URL, $url);
		curl_setopt($curl_handle, CURLOPT_RETURNTRANSFER, 1);
		if ($method == 'post') {
			curl_setopt($curl_handle, CURLOPT_POST, 1);
			curl_setopt($curl_handle, CURLOPT_POSTFIELDS, $datatopost);
		}
		 
		// Optional, delete this line if your API is open
		curl_setopt($curl_handle, CURLOPT_USERPWD, $username . ':' . $password);
		
		$buffer = curl_exec($curl_handle);
		
		curl_close($curl_handle);
		
		return json_decode($buffer);
	}
}

/* End of file Blog.php */
/* Location: ./application/modules/Blog/controllers/Blog.php */