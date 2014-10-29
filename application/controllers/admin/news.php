<?php
if (!defined("BASEPATH")) exit('No direct script access allowed');
/**
 * 信息中心
 * User: Durban
 * Date: 14-9-24
 * Time: 下午5:31
 */

class News extends LK_Controller{

    public function __construct(){
        parent::__construct();

    }

    public function index(){

        $this->ci_smarty->display('admin/'.$this->action.'/index.html');
    }
}