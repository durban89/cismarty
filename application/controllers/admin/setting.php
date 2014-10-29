<?php
if (!defined("BASEPATH")) exit('No direct script access allowed');
/**
 * 基本设置
 * User: Durban
 * Date: 14-9-24
 * Time: 下午5:30
 */


class Setting extends LK_Controller{

    var $timezone;
    var $attachdirs;
    var $watertypes;
    var $gdchecklist;
    var $gdcodetypes;

    public function __construct(){
        parent::__construct();

        $this->timezone = array('-12' => '(标准时-12:00) 日界线西', '-11' => '(标准时-11:00) 中途岛、萨摩亚群岛', '-10' => '(标准时-10:00) 夏威夷', '-9' => '(标准时-9:00) 阿拉斯加', '-8' => '(标准时-8:00) 太平洋时间(美国和加拿大)', '-7' => '(标准时-7:00) 山地时间(美国和加拿大)', '-6' => '(标准时-6:00) 中部时间(美国和加拿大)、墨西哥城', '-5' => '(标准时-5:00) 东部时间(美国和加拿大)、波哥大', '-4' => '(标准时-4:00) 大西洋时间(加拿大)、加拉加斯', '-3.5' => '(标准时-3:30) 纽芬兰', '-3' => '(标准时-3:00) 巴西、布宜诺斯艾利斯、乔治敦', '-2' => '(标准时-2:00) 中大西洋', '-1' => '(标准时-1:00) 亚速尔群岛、佛得角群岛', '0' => '(格林尼治标准时) 西欧时间、伦敦、卡萨布兰卡', '1' => '(标准时+1:00) 中欧时间、安哥拉、利比亚', '2' => '(标准时+2:00) 东欧时间、开罗，雅典', '3' => '(标准时+3:00) 巴格达、科威特、莫斯科', '3.5' => '(标准时+3:30) 德黑兰', '4' => '(标准时+4:00) 阿布扎比、马斯喀特、巴库', '4.5' => '(标准时+4:30) 喀布尔', '5' => '(标准时+5:00) 叶卡捷琳堡、伊斯兰堡、卡拉奇', '5.5' => '(标准时+5:30) 孟买、加尔各答、新德里', '6' => '(标准时+6:00) 阿拉木图、 达卡、新亚伯利亚', '7' => '(标准时+7:00) 曼谷、河内、雅加达', '8' => '(北京时间+8:00) 北京、重庆、香港、新加坡', '9' => '(标准时+9:00) 东京、汉城、大阪、雅库茨克', '9.5' => '(标准时+9:30) 阿德莱德、达尔文', '10' => '(标准时+10:00) 悉尼、关岛', '11' => '(标准时+11:00) 马加丹、索罗门群岛', '12' => '(标准时+12:00) 奥克兰、惠灵顿、堪察加半岛');
        $this->attachdirs = array(0 => '按天存放', 1 => '按月存放', 2 => '按栏目存放');
        $this->watertypes = array(0 => '不启用', 1 => '文字水印', 2 => '图片水印');
        $this->gdchecklist = array(1 => '注册', 2 => '前台登录', 4 => '发表主题', 8 => '发表评论', 16 => '后台登录');
        $this->gdcodetypes = array(1 => '数字验证码', 2 => '英文验证码', 4 => '随机验证码');

        $this->load->helper('cache');
        $this->load->helper('file');
        $this->load->model('admin/configs');
        $this->load->helper('upload');

    }

    public function index(){

        $this->ci_smarty->display('admin/'.$this->action.'/index.html');
    }

    /**
     * 基本设置
     */
    public function basic(){

        if($this->input->post('submitted') == 'save'){
            $configs = $this->input->post('config');

            //文件上传
            if($save_name = upload_file('lk_qrcode','jpg|png|gif',100000)){
                $configs['lk_qrcode'] = $save_name;
            }

            $this->configs->updateConfig($configs);
            echo 1;
            exit;
        }

        $config = $this->configs->getCache();
        $this->ci_smarty->assign('config',$config);
        $this->ci_smarty->display('admin/'.$this->action.'/basic.html');
    }

    /**
     * 邮箱设置
     */
    public function email(){

        if($this->input->post('submitted') == 'save'){
            $this->load->helper('email');
            $configs = $this->input->post('config');

            if(mail_test_send(
                $configs['lk_smtpuser'],
                $configs['lk_smtpuser'],
                $configs['lk_mailtype'],
                $configs['lk_smtpport'],
                $configs['lk_smtpuser'],
                $configs['lk_smtppw'],
                $configs['lk_smtphost'],
                $configs['lk_smtpauth'],
                '邮箱测试邮件',
                '这是一封邮箱测试邮件')){
                $this->configs->updateConfig($configs);

                echo 1;
            }else{
                echo 0;
            }

            exit;
        }

        $config = $this->configs->getCache();
        $this->ci_smarty->assign('config',$config);
        $this->ci_smarty->display('admin/'.$this->action.'/email.html');
    }

    /**
     * SEO设置
     */
    public function seo(){
        if($this->input->post('submitted') == 'save'){
            $configs = $this->input->post('config');

            $this->configs->updateConfig($configs);
            echo 1;
            exit;
        }
        $config = $this->configs->getCache();
        $this->ci_smarty->assign('config',$config);
        $this->ci_smarty->display('admin/'.$this->action.'/seo.html');
    }

    /**
     * 成员设置
     */
    public function member(){
        if($this->input->post('submitted') == 'save'){
            $configs = $this->input->post('config');

            $this->configs->updateConfig($configs);
            echo 1;
            exit;
        }
        $config = $this->configs->getCache();
        $this->ci_smarty->assign('config',$config);
        $this->ci_smarty->display('admin/'.$this->action.'/member.html');
    }

    /**
     * 附件设置
     */
    public function attachment(){
        if($this->input->post('submitted') == 'save'){
            $configs = $this->input->post('config');

            $this->configs->updateConfig($configs);
            echo 1;
            exit;
        }

        $config = $this->configs->getCache();

        $range_position = range(0, 8);
        $this->ci_smarty->assign('range_position', $range_position);

        $this->ci_smarty->assign('attachdirs',$this->attachdirs);
        $this->ci_smarty->assign('watertypes',$this->watertypes);
        $this->ci_smarty->assign('config',$config);
        $this->ci_smarty->display('admin/'.$this->action.'/attachment.html');
    }

    /**
     * 功能设置
     */
    public function core(){
        if($this->input->post('submitted') == 'save'){
            $configs = $this->input->post('config');

            $this->configs->updateConfig($configs);
            echo 1;
            exit;
        }
        $config = $this->configs->getCache();
        $this->ci_smarty->assign('timezone',$this->timezone);
        $this->ci_smarty->assign('config',$config);
        $this->ci_smarty->display('admin/'.$this->action.'/core.html');
    }

    /**
     * 安全设置
     */
    public function safe(){
        if($this->input->post('submitted') == 'save'){
            $configs = $this->input->post('config');

            $configs['lk_gdcheck'] = $configs['lk_gdcheck'] ? serialize($configs['lk_gdcheck']) : serialize(array());

            $this->configs->updateConfig($configs);
            echo 1;
            exit;
        }

        $config = $this->configs->getCache();
        $config['lk_gdcheck'] = $config['lk_gdcheck'] ? unserialize($config['lk_gdcheck']) : array();

        $this->ci_smarty->assign('gdchecklist',$this->gdchecklist);
        $this->ci_smarty->assign('gdcodetypes',$this->gdcodetypes);
        $this->ci_smarty->assign('config',$config);
        $this->ci_smarty->display('admin/'.$this->action.'/safe.html');
    }
}