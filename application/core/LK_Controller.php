<?php
/**
 * Created by PhpStorm.
 * User: Durban
 * Date: 14-9-22
 * Time: 下午4:14
 */

class LK_Controller extends CI_Controller{
    public $action;
    public function __construct(){
        parent::__construct();

        $this->load->helper('allowshow');
        $this->load->helper('date');
        $this->load->model('admin/menu');
        $this->load->model('admin/account');

        $this->ci_smarty->assign('_LKENV',array('LK_URL'=>''));

        $this->ci_smarty->registerPlugin('function','allowshow','allowshow');
        $this->ci_smarty->registerPlugin('function','site_url','site_url');
        $this->ci_smarty->registerPlugin('function','mdate','mdate');

        //action信息
        $this->action = $this->router->fetch_class();

        if($this->action != 'welcome'){
            if(!$this->account->islogin()){
                redirect(site_url('admin/welcome/login'));
            }
        }

        //导航信息
        $_menus = $this->menu->getAllList();

        $menu_arr = array();
        if (isset($_menus[$this->action])) {
            $menu_arr = $_menus[$this->action];
        }

        //用户信息
        $userinfo = $this->account->getinfo();

        $this->ci_smarty->assign('userinfo',$userinfo);
        $this->ci_smarty->assign('_menus', $_menus);
        $this->ci_smarty->assign('menu_arr', $menu_arr);

        $this->ci_smarty->assign('siteurl','');

    }


    /**
     * 验证码验证
     * @param $postcode
     * @return bool
     */
    public function chgdcode($postcode){
        $ckcode = $this->session->userdata('lk_ckcode');
        if (!$postcode || !$ckcode)
            return FALSE;
        list($t, $n) = explode("\t", $ckcode);
        return md5($postcode . $t) == $n;
    }


    /**
     * 弹出框跳转
     * @param $url
     * @param $msg
     * @param $time
     */
    public function showmsg($url,$msg,$time){
        $this->ci_smarty->assign('url',$url);
        $this->ci_smarty->assign('msg',$msg);
        $this->ci_smarty->assign('time',$time);
        $this->ci_smarty->display('admin/public/msg.html');
        exit;
    }
} 