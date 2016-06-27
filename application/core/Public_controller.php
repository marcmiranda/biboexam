<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Public_Controller
 *
 * Extends the MY_Controller class so I can declare special Public controllers
 * 
 */

class Public_Controller extends MY_Controller
{
	function __construct()
	{
		parent::__construct();

		// Set container variable
		$this->_container = "public/container.php";
	}
}

/* End of Public_controller.php */
/* Location: ./system/application/core/Public_controller.php */