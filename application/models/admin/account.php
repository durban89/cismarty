<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * 后台管理员 Account
 * User: Durban
 * Date: 14-6-5
 * Time: 下午1:43
 */

class Account extends CI_Model{

    private $title = '';
    private $userid;
    private $username;
    private $groupid;

    function __construct(){
        parent::__construct();
        $this->load->database();
    }

    function update(){

    }

    public function getid(){
        if($this->islogin()){
            return $this->userid;
        }else{
            return false;
        }
    }

    /**
     * 添加信息
     */
    function add(){
        $this->input->post('title');
    }

    function del(){

    }

    /**
     * 获得用户所在组的id
     * @return bool
     */
    function getgroupid(){
        if($this->islogin()){
            $this->db->where('id',$this->userid);
            $query = $this->db->get('account');
            if($query->num_rows()){
                $row = $query->row();
                return $row->groupid;
            }else{
                return false;
            }
        }else{
            return false;
        }
    }

    function getinfo(){
        if($this->islogin()){
            $this->db->where('id',$this->userid);
            $this->db->select('*');
            $this->db->from('account');
            $this->db->join('groups','account.groupid = groups.groupid');
            $query = $this->db->get();
            if($query->num_rows()){
                $row = $query->row();

                return $row;
            }else{
                return false;
            }
        }else{
            return false;
        }
    }

    function islogin(){
        if(isset($this->session->userdata['lk_loginuser']) && $data = $this->session->userdata['lk_loginuser']){
            if($data['userid']){
                $this->userid = $data['userid'];
                return true;
            }else{
                return false;
            }
        }else{
            return false;
        }
    }

    function login($username,$password){
        $this->db->where('username',$username);
        $this->db->where('password',md5($password));
        $query = $this->db->get('account');
        if($query->num_rows()){
            $row = $query->row();
            $userdata = array(
                'userid'=>$row->id,
                'username'=>$row->username
            );

            $update_data = array();
            $update_data['loginip'] = $this->input->ip_address();
            $update_data['logintime'] = time();
            $update_data['lastloginip'] = $row->loginip;
            $update_data['lastlogintime'] = $row->logintime;

            $this->db->update('account',$update_data);
            $this->session->set_userdata('lk_loginuser',$userdata);
            return true;
        }else{
            return false;
        }
    }

    function logout(){
        $this->session->unset_userdata('lk_loginuser');
        return false;
    }

    function allownav($item){
        if (defined('SUPERMANAGER'))
            return true;
        $groupid = $this->getgroupid();
        $this->db->where('groupid',$groupid);
        $query = $this->db->get('groups');
        $admingroups = $query->row();
        if ($admingroups) {
            $confing = unserialize($admingroups->adminright);

            if (!$confing) {
                return true;
            }
            if (!in_array($item, $confing)) {
                return false;
            }
        } else {
            return false;
        }
        return true;
    }
}