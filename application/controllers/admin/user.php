<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * 用户登录
 * User: Durban
 * Date: 14-6-5
 * Time: 下午1:22
 */

class User extends CI_Controller{
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