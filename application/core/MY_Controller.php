<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * Site_Controller
 *
 * Extends the default CI Controller class so I can declare special site controllers.
 * 
 */
class MY_Controller extends MX_Controller
{
	private $_container;
	function __construct()
	{
		parent::__construct();
	}
}
include_once("Admin_controller.php");
include_once("Public_controller.php");
/* End of file MY_Controller.php */
/* Location: ./system/application/core/MY_Controller.php */