<?php /* Smarty version Smarty-3.1.17, created on 2014-09-30 01:42:29
         compiled from "D:\wamp\www\test.cismarty.dev\templates\admin\public\msg.html" */ ?>
<?php /*%%SmartyHeaderCode:19901542a0a85522754-80436849%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '05462ccd5be1e43faa0d38153c85bfc9628358f8' => 
    array (
      0 => 'D:\\wamp\\www\\test.cismarty.dev\\templates\\admin\\public\\msg.html',
      1 => 1411540052,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '19901542a0a85522754-80436849',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'url' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_542a0a855841f8_04395075',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_542a0a855841f8_04395075')) {function content_542a0a855841f8_04395075($_smarty_tpl) {?><!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">
    <title>提示信息</title>
    <style type="text/css">
        {literal}
        *{margin:0;padding:0px}
        body{background:#fff;color:#333;font:12px Verdana, Tahoma, sans-serif;text-align:center;margin:0 auto;}
        a{text-decoration:none;color:#29458C}
        a:hover{text-decoration:underline;color:#f90}
        #msg{border:1px solid #c5d7ef;text-align:left;margin:10% auto; width:50%}
        #msgtitle{padding:5px 10px;background:#f0f6fb;border-bottom:1px #c5d7ef solid}
        #msgtitle h1{font-size:14px;font-weight:bold;padding-left:10px;border-left:3px solid #acb4be;color:#1f3a87}
        #msgcontent {padding:20px 50px;}
        #msgcontent li{display:block;padding:5px;list-style:none;}
        #msgcontent p{text-align:center;margin-top:10px;padding:0}
        {/literal}
    </style>
</head>
<body>

<div id="msg">
    <div id="msgtitle">
        <h1>提示信息</h1>
    </div>
    <div id="msgcontent">
        {if $msg}{$msg}{/if}
        <p>
            {if $url}
            <a href="<?php echo $_smarty_tpl->tpl_vars['url']->value;?>
">如果您的浏览器没有自动跳转，请点击这里</a>
            <script type="text/javascript">
                setTimeout("window.location.href ='{$url}';", {if $time}{$time}{else}500{/if});
            </script>
            {else}
            <a href="{if $url}{$url}{else}javascript:history.go(-1){/if}">返回继续操作</a>
            {/if}
        </p>
    </div>
</div>
</body>
</html><?php }} ?>
