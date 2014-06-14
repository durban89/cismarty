<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * 默认的控制器
 * User: Durban
 * Date: 14-5-30
 * Time: 下午4:27
 */

class Welcome extends CI_controller{

    public function __construct(){
        parent::__construct();
        $this->load->library('CI_Smarty');
    }

    public function index()
    {
        $this->ci_smarty->assign('test','smarty');
        $this->ci_smarty->display('admin/test.tpl');
    }
}