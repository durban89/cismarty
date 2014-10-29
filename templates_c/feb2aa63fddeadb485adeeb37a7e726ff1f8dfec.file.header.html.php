<?php /* Smarty version Smarty-3.1.17, created on 2014-10-29 17:22:43
         compiled from "/Users/davidzhang/php/php_project/ci_project/cismarty/templates/admin/public/header.html" */ ?>
<?php /*%%SmartyHeaderCode:14491681254512263081c47-21281635%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'feb2aa63fddeadb485adeeb37a7e726ff1f8dfec' => 
    array (
      0 => '/Users/davidzhang/php/php_project/ci_project/cismarty/templates/admin/public/header.html',
      1 => 1412071748,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '14491681254512263081c47-21281635',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'userinfo' => 0,
    'siteurl' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_5451226311cb21_38124039',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5451226311cb21_38124039')) {function content_5451226311cb21_38124039($_smarty_tpl) {?><!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8" />
        <title>五五来客全网系统管理后台 - powered by 55like</title>
        <link href="/static/css/admin/index.css" type="text/css" rel="stylesheet" />
        <script type="text/javascript" src="/static/js/jquery.js"></script>
        <script type="text/javascript" src="/static/js/artDialog/jquery.artDialog.js?skin=default"></script>
        <script type="text/javascript" src="/static/js/artDialog/artDialog.iframeTools.js"></script>
        <script type="text/javascript" src="/static/js/jquery.form.js"></script>
        <script type="text/javascript" src="/static/js/public.js"></script>
        <script type="text/javascript" src="/static/js/admin/basic.js"></script>
        <script type="text/javascript" src="/static/js/admin/default.js"></script>
        <!--在线编辑器-->
        <script type="text/javascript" src="/static/ueditor/ueditor.config.js"></script>
        <script type="text/javascript" src="/static/ueditor/ueditor.all.js"></script>
        <script type="text/javascript" src="/static/ueditor/lang/zh-cn/zh-cn.js"></script>
        <!--在线编辑器-->

        <!-- 消息提示插件 -->
        <script type="text/javascript" src="/static/js/admin/toastmessage/jquery.toastmessage.js"></script>
        <link href="/static/js/admin/toastmessage/css/jquery.toastmessage.css" type="text/css" rel="stylesheet" />
        <!-- 消息提示插件 -->

        <!-- 弹出框插件 -->
        <script type="text/javascript" src="/static/js/artDialog/artDialog.source.js?skin=default"></script>
        <!-- 弹出框插件 -->
    </head>
    <body>
        <div class="headerBoxs">
            <ul>
                <li class="headerMenu">
                    <a href='<?php echo site_url("admin/welcome/index");?>
' class="on">Web网站</a>
                    <a href='<?php echo site_url("admin/wapadmin/index");?>
'>Wap手机版</a>
                    <a href='<?php echo site_url("admin/subscribe/index");?>
'>微信订阅号</a>
                    <a href='<?php echo site_url("admin/service/index");?>
'>微信服务号</a>
                </li>
                <li class='logoBoxs'><img src='/static/images/admin/logo.png' /></li>
                <li class="headerNav">
                    <span>欢迎您，<strong><?php echo $_smarty_tpl->tpl_vars['userinfo']->value->username;?>
</strong></span>
                    <div>
                        <a href="<?php echo $_smarty_tpl->tpl_vars['siteurl']->value;?>
" target="_blank">[前台首页]</a>
                        <a href="javascript:;" id="edpass">[更改密码]</a>
                        <a href="<?php echo site_url('admin/welcome/logout');?>
">[安全退出]</a>
                    </div>
                </li>
            </ul>
        </div><?php }} ?>
