<?php
if (!defined("BASEPATH")) exit('No direct script access allowed');
/**
 * 主面板
 * User: Durban
 * Date: 14-9-25
 * Time: 上午8:58
 */
class Main extends LK_Controller {
    public function __construct(){
        parent::__construct();

        $this->load->database();
        $this->load->helper('sys');
        $this->load->model('admin/account');
    }

    public function index(){

        $this->account->getinfo();

        $sys = array();
        $sys['serverSoft'] = $_SERVER['SERVER_SOFTWARE'];
        $sys['serverOS'] = PHP_OS;
        $sys['PHPVersion'] = PHP_VERSION;
        $sys['MySQLVersion'] = $this->db->version();
        $sys['globalRegister'] = checkCfg('register_globals');

        if (ini_get('file_uploads')) {
            $uploadFile = ini_get('upload_max_filesize') . ' / 允许';
        } else {
            $uploadFile = '<span class="r">不支持</span>';
        }

        $sys['uploadFile'] = $uploadFile;
        $gdVersion = GDVersion();
        $sys['gdVersion'] = $gdVersion ? $gdVersion : '<span class="r">不支持</span>';
        $sys['domain'] = $_SERVER['SERVER_NAME'];

        $sys['serverTime'] = date('Y-m-d H:i:s',time());
        $sys['max_execution_time'] = ini_get('max_execution_time') . ' seconds';
        $sys['php_memory_limit'] = ini_get('memory_limit');
        $sys['current_memory'] = function_exists('memory_get_usage') ? getRealSize(memory_get_usage()) : '未知';

        $this->ci_smarty->assign('sys', $sys);

        $this->ci_smarty->display('admin/'.$this->action.'/index.html');
    }
}