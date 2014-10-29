<?php
/**
 * Created by PhpStorm.
 * User: Durban
 * Date: 14-9-25
 * Time: 上午11:01
 */
class Configs extends CI_Model{

    public function __construct(){
        parent::__construct();

        $this->load->database();
    }

    /**
     * 更新数据库配置信息
     * @param $params
     */
    public function updateConfig($params){
        if (is_array($params)) {
            foreach ($params as $key => $value) {
                $this->db->where('ckey',$key);
                $query = $this->db->get('configs');
                if($query->num_rows){
                    $this->db->where('ckey',$key);
                    $this->db->update('configs',array('cvalue'=>$value));
                }else{
                    $this->db->insert('configs',array('ckey'=>$key,'cvalue'=>$value));
                }
            }
            $this->udpateCache();
        }
    }

    /**
     * 更新缓存
     */
    public function udpateCache(){
        $query = $this->db->get('configs');
        $result = $query->result_array();
        cache_write('lk_configs.php',$result);
    }

    /**
     * 获取缓存文件的内容
     */
    public function getCache(){
        $result = cache_read('lk_configs.php');
        $configs = array();
        foreach($result as $v){
            $configs[ $v['ckey']] = $v['cvalue'];
        }
        return $configs;
    }


}