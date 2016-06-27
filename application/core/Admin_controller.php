<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Admin_Controller
 *
 * Extends the MY_Controller class so I can declare special Admin controllers
 * 
 */
 
class Admin_Controller extends MY_Controller
{
	function __construct()
	{
		parent::__construct();

		// Set container variable
		$this->_container = "admin/container.php";
	}
}

/* End of Admin_controller.php */
/* Location: ./system/application/core/Admin_controller.php */