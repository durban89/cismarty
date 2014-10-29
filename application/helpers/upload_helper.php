<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * 上传函数
 * User: Durban
 * Date: 14-9-25
 * Time: 下午1:44
 */
if(!function_exists('upload_file')){
//    function upload_more_file(){
//        $CI = & get_instance();
//        $CI->load->library('upload');
//        $CI->upload->set_upload_path('static/attachments');
//        $CI->upload->set_allowed_types('gif|jpg|png');
//        $CI->upload->do_upload('lk_qrcode');
//        $info = $CI->upload->data();
//    }

    function upload_file($field,$filetype,$maxsize){
        $CI = & get_instance();
        $CI->load->library('upload');
        $CI->upload->initialize(array('encrypt_name'=>TRUE,'overwrite'=>TRUE));
        $CI->upload->set_upload_path('static/attachments');
        $CI->upload->set_allowed_types($filetype);
        $CI->upload->set_max_filesize($maxsize);
        $CI->upload->do_upload($field);
        $info = $CI->upload->data();
        if($info['client_name']){
            return '/static/attachments/'.$info['client_name'];
        }else{
            return '';
        }
    }
}