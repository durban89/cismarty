<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * 默认的控制器
 * User: Durban
 * Date: 14-5-30
 * Time: 下午4:27
 */

class Welcome extends LK_Controller{

    public function __construct(){
        parent::__construct();
        $this->load->model('admin/account');
    }

    public function index()
    {
        //判断用户是否登录
        if($this->account->islogin()){
            $this->ci_smarty->display('admin/index.html');
        }else{
            redirect(site_url('admin/welcome/login'));
        }
    }

    public function login(){

        if($this->input->post('admin_user')
            && $this->input->post('admin_pw')
            && $this->input->post('checkcode')){

            $username = $this->input->post('admin_user');
            $password = $this->input->post('admin_pw');
            $checkcode = $this->input->post('checkcode');

            if(!$this->chgdcode($checkcode)){
                $this->showmsg(site_url('admin/welcome/login'),'验证码错误！',1000);
            }

            if($this->account->login($username,$password)){
                $this->showmsg(site_url('admin/welcome/index'),'恭喜！登录成功！',1000);
            }else{
                $this->showmsg(site_url('admin/welcome/login'),'用户名或密码错误，请重新登录！',1000);
            }

        }else{
            if($this->account->islogin()){
                redirect(site_url('admin/welcome/index'));
            }else{
                $this->ci_smarty->assign('loginurl',site_url('admin/welcome/login'));
                $this->ci_smarty->display('admin/login.html');
            }

        }
    }

    public function logout(){
        $this->account->logout();
        $this->showmsg(site_url('admin/welcome/login'),'恭喜！退出登录成功！',1000);
    }


}