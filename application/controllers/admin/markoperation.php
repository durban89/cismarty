<?php
if (!defined("BASEPATH")) exit('No direct script access allowed');
/**
 * Created by PhpStorm.
 * User: Durban
 * Date: 14-9-24
 * Time: 下午6:21
 */
class Markoperation extends LK_Controller{

    public function __construct(){
        parent::__construct();
    }

    public function index(){

        $this->ci_smarty->display('admin/'.$this->action.'/index.html');
    }
}