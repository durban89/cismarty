<?php
if (!defined("BASEPATH")) exit('No direct script access allowed');
/**
 * Created by PhpStorm.
 * User: Durban
 * Date: 14-9-25
 * Time: 下午2:13
 */
class Navmenu extends LK_Controller{


    public function __construct(){
        parent::__construct();

        $this->load->model('admin/menu');
    }

    public function index(){

        $this->ci_smarty->display('admin/'.$this->action.'/'. __FUNCTION__.'.html');
    }

    public function basic(){

        $tableinfo = $this->menu->getMenuList();
        $this->ci_smarty->assign('tableinfo', $tableinfo);
        $this->ci_smarty->assign('action',__FUNCTION__);
        $this->ci_smarty->display('admin/'.$this->action.'/'. __FUNCTION__.'.html');
    }

    public function add(){

        if ($this->input->post('submitted') == 'save') {
            $data = $this->input->post('menu_from');
            $data['ctime'] = time();
            $menu_id = $this->menu->insert($data);
            echo $menu_id ? 1 : 0;
            die;
        }

        $option = $this->menu->getMenuOption();
        $this->ci_smarty->assign('option', $option);
        $this->ci_smarty->assign('action',__FUNCTION__);
        $this->ci_smarty->display('admin/'.$this->action.'/'. __FUNCTION__.'.html');
    }

    public function edit($id=''){

        $id = (int)$id;
        if ($this->input->post('submitted') == 'save') {
            $data = $this->input->post('menu_from');
            $menu_id = $this->menu->update($data, $id);
            echo $menu_id ? 1 : 0;
            die;
        }

        $info = $this->menu->getLevelById($id, '');
        $this->ci_smarty->assign('info', $info);

        $option = $this->menu->getMenuOption($info['sub']);
        $this->ci_smarty->assign('option', $option);


        $this->ci_smarty->assign('action',__FUNCTION__);
        $this->ci_smarty->display('admin/'.$this->action.'/'. __FUNCTION__.'.html');
    }

    public function del($id){
        $this->menu->delete($id);
        redirect(site_url('admin/navmenu/basic'));
    }


}