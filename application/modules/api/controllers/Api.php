<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

//require_once(APPPATH.'libraries/Format.php');
require_once(APPPATH.'libraries/REST_Controller.php');

class Api extends REST_Controller 
{
	public function get_all_blog_get()
	{
		$sql = "SELECT blogs.*,users.first_name,users.last_name FROM blogs LEFT JOIN users ON blogs.user_id = users.id";
		$data = $this->db->query($sql);
		$this->response($data->result());
	}

	public function create_post()
	{
		$data = array();
		$data['status'] = 'success';
		$data['error'] = '';
		$data['message'] = 'Blog post created.';
		
		if (empty($this->post())) {
			// no posted data
			$data['status'] = 'failed';
			$data['error'] = 'bad_request';
			$data['message'] = 'No data posted.';
			$this->response($data, 400);
		} elseif ($this->post()) {
			// data is posted
			// check for data validity
			$title = $this->post('title');
			$slug = $this->post('slug');
			$content = $this->post('content');
			$user_id = $this->post('user_id');
			
			// only slug is allowed to be blank
			if (!empty($title) && !empty($content) && !empty($user_id)) {
				// valid data posted (only checks for empty values)
				// save to db
				$sql = "INSERT INTO blogs (title,slug,content,user_id) VALUES (".$this->db->escape($title).", ".$this->db->escape($slug).", ".$this->db->escape($content).", ".$this->db->escape($user_id).")";
				$this->db->query($sql);
			} else {
				// invalid data posted
				$data['status'] = 'failed';
				$data['error'] = 'bad_request';
				$data['message'] = 'All required fields must be posted.';
				$this->response($data, 400);
			}
			
			// return response
			$this->response($data, 200);
		} 
		
		// return generic error response
		$data['status'] = 'failed';
		$data['error'] = 'internal_server_error';
		$data['message'] = 'There was an internal server error. Please try again later.';
		$this->response($data, 500);
	}
	
	public function edit_post($blog_id)
	{
		$data = array();
		$data['status'] = 'success';
		$data['error'] = '';
		$data['message'] = 'Blog post edited.';
		
		if (empty($this->post())) {
			// no posted data
			$data['status'] = 'failed';
			$data['error'] = 'bad_request';
			$data['message'] = 'No data posted.';
			$this->response($data, 400);
		} elseif ($this->post()) {
			// data is posted
			// check for data validity
			$title = $this->post('title');
			$slug = $this->post('slug');
			$content = $this->post('content');
			$user_id = $this->post('user_id');
			$id = $blog_id;
			
			// only slug is allowed to be blank
			if (!empty($title) && !empty($content) && !empty($user_id) && !empty($id)) {
				// valid data posted (only checks for empty values)
				// check if id exists
				$query = $this->db->query("SELECT id FROM blogs WHERE id=".$id);
				if ($query->row() != null) {
					// save to db
					$sql = "UPDATE blogs SET title=".$this->db->escape($title).", slug=".$this->db->escape($slug).", content=".$this->db->escape($content).", user_id=".$this->db->escape($user_id)." WHERE id=".$this->db->escape($id);
					$this->db->query($sql);
				} else {
					$data['status'] = 'failed';
					$data['error'] = 'bad_request';
					$data['message'] = 'Blog ID does not exist.';
					$this->response($data, 400);
				}
			} else {
				// invalid data posted
				$data['status'] = 'failed';
				$data['error'] = 'bad_request';
				$data['message'] = 'All required fields must be posted.';
				$this->response($data, 400);
			}
			
			// return response
			$this->response($data, 200);
		} 
		
		// return generic error response
		$data['status'] = 'failed';
		$data['error'] = 'internal_server_error';
		$data['message'] = 'There was an internal server error. Please try again later.';
		$this->response($data, 500);
	}
	
	public function delete_post()
	{
		$data = array();
		$data['status'] = 'success';
		$data['error'] = '';
		$data['message'] = 'Blog post deleted.';
		
		if (empty($this->post())) {
			// no posted data
			$data['status'] = 'failed';
			$data['error'] = 'bad_request';
			$data['message'] = 'No data posted.';
			$this->response($data, 400);
		} elseif ($this->post()) {
			// data is posted
			// check for data validity
			$id = $this->post('id');
			
			// only slug is allowed to be blank
			if (!empty($id)) {
				// valid data posted (only checks for empty values)
				// check if id exists
				$query = $this->db->query("SELECT id FROM blogs WHERE id=".$id);
				if ($query->row() != null) {
					// save to db
					$sql = "DELETE FROM blogs WHERE id=".$this->db->escape($id);
					$this->db->query($sql);
				} else {
					$data['status'] = 'failed';
					$data['error'] = 'bad_request';
					$data['message'] = 'Blog ID does not exist.';
					$this->response($data, 400);
				}
			} else {
				// invalid data posted
				$data['status'] = 'failed';
				$data['error'] = 'bad_request';
				$data['message'] = 'All required fields must be posted.';
				$this->response($data, 400);
			}
			
			// return response
			$this->response($data, 200);
		} 
		
		// return generic error response
		$data['status'] = 'failed';
		$data['error'] = 'internal_server_error';
		$data['message'] = 'There was an internal server error. Please try again later.';
		$this->response($data, 500);
	}
	
	public function authuser_post()
	{
		$data = array();
		$data['status'] = 'success';
		$data['error'] = '';
		$data['message'] = 'User authenticated.';
		
		if (empty($this->post())) {
			// no posted data
			$data['status'] = 'failed';
			$data['error'] = 'bad_request';
			$data['message'] = 'No data posted.';
			$this->response($data, 400);
		} elseif ($this->post()) {
			// data is posted
			// check for data validity
			$user = $this->post('user');
			$pass = $this->post('pass');
			
			// check user
			if (!empty($user) && !empty($pass)) {
				// valid data posted (only checks for empty values)
				// check if id exists
				$query = $this->db->query("SELECT * FROM users WHERE username='".$user."' AND password='".$pass."'");
				$data['data'] = $query->result();
				if ($query->row() == null) {
					$data['status'] = 'failed';
					$data['error'] = 'bad_request';
					$data['message'] = 'User does not exist.';
					$this->response($data, 400);
				}
			} else {
				// invalid data posted
				$data['status'] = 'failed';
				$data['error'] = 'bad_request';
				$data['message'] = 'All required fields must be posted.';
				$this->response($data, 400);
			}
			
			// return response
			$this->response($data, 200);
		} 
		
		// return generic error response
		$data['status'] = 'failed';
		$data['error'] = 'internal_server_error';
		$data['message'] = 'There was an internal server error. Please try again later.';
		$this->response($data, 500);
	}
	
	public function reguser_post()
	{
		$data = array();
		$data['status'] = 'success';
		$data['error'] = '';
		$data['message'] = 'User registered.';
		
		if (empty($this->post())) {
			// no posted data
			$data['status'] = 'failed';
			$data['error'] = 'bad_request';
			$data['message'] = 'No data posted.';
			$this->response($data, 400);
		} elseif ($this->post()) {
			// data is posted
			// check for data validity
			$email = $this->post('email');
			$username = $this->post('username');
			$first_name = $this->post('first_name');
			$last_name = $this->post('last_name');
			$password = $this->post('password');
			
			// all is required
			if (!empty($email) && !empty($username) && !empty($first_name) && !empty($last_name) && !empty($password)) {
				// valid data posted (only checks for empty values)
				// save to db
				$sql = "INSERT INTO users (email_address,username,first_name,last_name,password) 
				VALUES (".$this->db->escape($email).", ".$this->db->escape($username).", ".$this->db->escape($first_name).", ".$this->db->escape($last_name).", ".$this->db->escape($password).")";
				//var_dump($sql);
				$this->db->query($sql);
			} else {
				// invalid data posted
				$data['status'] = 'failed';
				$data['error'] = 'bad_request';
				$data['message'] = 'All required fields must be posted.';
				$this->response($data, 400);
			}
			
			// return response
			$this->response($data, 200);
		} 
		
		// return generic error response
		$data['status'] = 'failed';
		$data['error'] = 'internal_server_error';
		$data['message'] = 'There was an internal server error. Please try again later.';
		$this->response($data, 500);
	}
}

/* End of file Api.php */
/* Location: ./application/modules/api/controllers/Api.php */