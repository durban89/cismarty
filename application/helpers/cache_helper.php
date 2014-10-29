<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * 缓存文件操作
 * User: Durban
 * Date: 14-9-25
 * Time: 上午10:24
 */

if(!function_exists('cache_read')){
    function cache_read($file, $dir = '', $mode = '') {
        $file = _get_cache_file($file, $dir);
        if(!is_file($file)) return NULL;
        return $mode ? read_file($file) : include $file;
    }
}

if(!function_exists('cache_write')){
    function cache_write($file, $string, $dir = '') {
        if(is_array($string)) {
            $string = "<?php return ".var_export($string, true)."; ?>";
            $string =  str_replace(array(chr(13), chr(10), "\n", "\r", "\t", '  '),array('', '', '', '', '', ''), $string);
        }
        $file = _get_cache_file($file, $dir);
        return write_file($file, $string);
    }
}


if(!function_exists('cache_delete')){
    function cache_delete($file, $dir = '') {
        $file = _get_cache_file($file, $dir);
        return unlink($file);
    }
}


if(!function_exists('_get_cache_file')){
    function _get_cache_file($file, $dir) {
        $path = config_item('cache_path') ? config_item('cache_path') : APPPATH . 'cache/';
        return ($dir ? $path.$dir.'/'.$file : $path.$file);
    }
}
