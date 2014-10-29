<?php /* Smarty version Smarty-3.1.17, created on 2014-09-30 01:42:18
         compiled from "D:\wamp\www\test.cismarty.dev\templates\admin\login.html" */ ?>
<?php /*%%SmartyHeaderCode:10009542a0a313d72c9-42695067%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '356c5cef239469cd69a28812d33be73a3b26cfda' => 
    array (
      0 => 'D:\\wamp\\www\\test.cismarty.dev\\templates\\admin\\login.html',
      1 => 1412041331,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '10009542a0a313d72c9-42695067',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_542a0a314060d3_62783787',
  'variables' => 
  array (
    'loginurl' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_542a0a314060d3_62783787')) {function content_542a0a314060d3_62783787($_smarty_tpl) {?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
    <title>五五来客全网系统管理后台 - powered by 55like</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link rel="stylesheet" type="text/css" href="/static/css/admin/login.css" />
    <script language="JavaScript">
        if (self.parent.frames.length != 0) {
            self.parent.location = document.location;
        }
    </script>
</head>
<body style="background-color:#1875B8;font-family:Verdana;">
<form method="post" name="userLogin" action="<?php echo $_smarty_tpl->tpl_vars['loginurl']->value;?>
">
    <table border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
            <td width="248" height="613" style="background:url('/static/images/admin/left.jpg') no-repeat right;"></td>
            <td valign="top" bgcolor="#1875B8">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td width="755" height="204" style="background:url('/static/images/admin/logo.jpg') no-repeat bottom;"></td>
                    </tr>
                </table>
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td>
                                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                        <tr>
                                            <td width="122" style="background:url('/static/images/admin/lefta.png') no-repeat;" height="291"></td>
                                            <td valign="top">
                                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                <tr>
                                                    <td style="background:url('/static/images/admin/topa.jpg') no-repeat;" width="284" height="28"></td>
                                                </tr>
                                                <tr>
                                                    <td width="284" height="237" valign="middle" background="/static/images/admin/Login.jpg">
                                                        <table style="height:auto;">
                                                            <tr>
                                                                <td>
                                                                    <div class="loginbox">
                                                                        <ul>
                                                                            <li>
                                                                                <div class="menu">用户名：</div>
                                                                                <div class="input">
                                                                                    <input type="text" name="admin_user" value="" size="25" maxLength="15" class="inputs" />
                                                                                </div>
                                                                            </li>
                                                                            <li>
                                                                                <div class="menu">密　码：</div>
                                                                                <div class="input">
                                                                                    <input type="password" name="admin_pw" value="" size="25" class="inputs" />
                                                                                </div>
                                                                            </li>
                                                                            <!--<li>-->
                                                                                <!--<div class="menu">安全码：</div>-->
                                                                                <!--{*<div class="input">*}-->
                                                                                    <!--<input type="password" name="adminsafecode" class="inputs" />-->
                                                                                <!--</div>-->
                                                                            <!--</li>-->
                                                                            <li>
                                                                                <div class="menu">验证码：</div>
                                                                                <div class="input">
                                                                                    <input type="text" name="checkcode" class="inputs y" maxlength="6" value="" /><br />
                                                                                    <img src="/admin/checkcode/index" alt="" onclick="this.src = '/admin/checkcode/index?t=' + Math.random()" style="cursor:pointer;margin-top:5px;" />
                                                                                </div>
                                                                            </li>
                                                                            <li>
                                                                                <div class="menu" style="width:45px;">&nbsp;&nbsp;</div>
                                                                                <div class="input">
                                                                                    <input type="submit" class="btn" value="" />
                                                                                    <input type="reset" class="reset" value="" />
                                                                                </div>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="background:url('/static/images/admin/bottoma.jpg') no-repeat;" width="284" height="26"></td>
                                                </tr>
                                                </table>
                                            </td>
                                            <td width="121" style="background:url('/static/images/admin/righta.jpg') no-repeat;" height="291"></td>
                                        </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="118" valign="top" background="/static/images/admin/bottom.jpg">
                                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td height="45">&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td height="25" align="center" style="color:#FFF;font-family:Arial;">Copyright &copy; 2010-2015&nbsp;&nbsp;&nbsp;&nbsp;55like</td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td width="228" style="background:url('/static/images/admin/right.jpg') no-repeat;" height="409"></td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</form>
</body>
</html><?php }} ?>
