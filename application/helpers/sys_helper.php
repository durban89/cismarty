<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * 系统函数
 * User: Durban
 * Date: 14-9-25
 * Time: 上午9:05
 */
if(!function_exists('checkCfg')){
    function checkCfg($str) {
        $fun = function_exists('get_cfg_var') ? 'get_cfg_var' : 'ini_get';
        $param = $fun($str);

        switch ($param) {
            case 1 :
                return '开启';
                break;
            case 0 :
                return '关闭';
                break;
            default :
                return $param;
                break;
        }
    }
}


if(!function_exists('GDVersion')){
    function GDVersion() {
        $gd = array();
        if (function_exists('gd_info')) {
            $gd = gd_info();
        }
        return $gd['GD Version'] ? $gd['GD Version'] : FALSE;
    }
}

if(!function_exists('getRealSize')){
    function getRealSize($size) {
        if ($size < 1024) {
            return $size . ' Byte';
        }
        if ($size < 1048576) {
            return round($size / 1024, 2) . ' KB';
        }
        if ($size < 1073741824) {
            return round($size / 1048576, 2) . ' MB';
        }
        if ($size < 1099511627776) {
            return round($size / 1073741824, 2) . ' GB';
        }
    }
}
