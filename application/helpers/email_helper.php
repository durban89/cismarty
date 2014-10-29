<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * 邮件发送函数
 * User: Durban
 * Date: 14-9-25
 * Time: 下午3:29
 */
if(!function_exists('send')){
    function mail_send($mailto,$subject,$message){
        $CI = & get_instance();
        $CI->load->library('email');
        $CI->load->model('admin/configs');
        $config = $CI->configs->getCache();

        $config = array(
            'protocol'=>$config['lk_mailtype'] ? 'smtp' : 'mail',
            'smtp_port'=>$config['lk_smtpport'] ? $config['lk_smtpport'] : '',
            'smtp_user'=>$config['lk_smtpuser'] ? $config['lk_smtpuser'] : '',
            'smtp_pass'=>$config['lk_smtppw'] ? $config['lk_smtppw'] : '',
            'smtp_host'=>$config['lk_smtphost'] ? $config['lk_smtphost'] : '',
            '_smtp_auth'=>$config['lk_smtpauth'] ? TRUE : FALSE,
        );
        $CI->email->initialize($config);
        $CI->email->from($config['lk_smtpuser']);
        $CI->email->to($mailto);
        $CI->email->subject($subject);
        $CI->email->message($message);
        if($CI->email->send()){
            return TRUE;
        }else{
            return FALSE;
        }
    }

    function mail_test_send(
        $mailfrom,
        $mailto,
        $mailtype,
        $smtp_port,
        $smtp_user,
        $smtp_pass,
        $smtp_host,
        $smtp_auth,
        $subject,
        $message
    ){

        $CI = & get_instance();
        $CI->load->library('email');

        $config = array(
            'protocol'=>$mailtype ? 'smtp' : 'mail',
            'smtp_port'=>$smtp_port ? $smtp_port : '',
            'smtp_user'=>$smtp_user ? $smtp_user : '',
            'smtp_pass'=>$smtp_pass ? $smtp_pass : '',
            'smtp_host'=>$smtp_host ? $smtp_host : '',
            '_smtp_auth'=>$smtp_auth ? TRUE : FALSE,
        );

        $CI->email->initialize($config);
        $CI->email->from($mailfrom);
        $CI->email->to($mailto);
        $CI->email->subject($subject);
        $CI->email->message($message);
        if($CI->email->send()){
            return TRUE;
        }else{
            echo $CI->email->print_debugger();
            return FALSE;
        }

    }
}