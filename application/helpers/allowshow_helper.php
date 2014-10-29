<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * 导航权限管理
 * User: Durban
 * Date: 14-9-24
 * Time: 下午5:00
 */
if(!function_exists('allow_show')){
    function allowShow($item){

        $CI = & get_instance();

        $CI->load->model('admin/account');

        return $CI->account->allownav($item);
    }
}