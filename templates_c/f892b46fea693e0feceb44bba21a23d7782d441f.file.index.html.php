<?php /* Smarty version Smarty-3.1.17, created on 2014-10-29 17:22:43
         compiled from "/Users/davidzhang/php/php_project/ci_project/cismarty/templates/admin/main/index.html" */ ?>
<?php /*%%SmartyHeaderCode:188182125054512263407cc3-01784581%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'f892b46fea693e0feceb44bba21a23d7782d441f' => 
    array (
      0 => '/Users/davidzhang/php/php_project/ci_project/cismarty/templates/admin/main/index.html',
      1 => 1412071748,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '188182125054512263407cc3-01784581',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'userinfo' => 0,
    'sys' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_54512263514b13_02600073',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54512263514b13_02600073')) {function content_54512263514b13_02600073($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate ("admin/public/basic.html", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<link href="/static/css/admin/common.css" type="text/css" rel="stylesheet" />
<body>
<div class="mainBoxs">
    <div class="LK_L" style="right:0px">
        <dl style="width:97.5%;">
            <dt class="basebat"><span>您的资料</span></dt>
            <dd class="admin_table">
                <table width="100%">
                    <tbody>
                    <tr class="tr1 vt">
                        <td class="td1">用户名</td>
                        <td class="td2"><?php echo $_smarty_tpl->tpl_vars['userinfo']->value->username;?>
</td>
                    </tr>
                    <tr class="tr1 vt">
                        <td class="td1">级别</td>
                        <td class="td2"><?php echo $_smarty_tpl->tpl_vars['userinfo']->value->grouptitle;?>
</td>
                    </tr>
                    <tr class="tr1 vt">
                        <td class="td1">上次登录时间</td>
                        <td class="td2"><?php echo mdate("%Y-%m-%dT%H:%i:%s%Q",$_smarty_tpl->tpl_vars['userinfo']->value->lastlogintime);?>
</td>
                    </tr>
                    <tr class="tr1 vt">
                        <td class="td1">上次登录IP</td>
                        <td class="td2"><?php echo (($tmp = @$_smarty_tpl->tpl_vars['userinfo']->value->lastloginip)===null||$tmp==='' ? '这是第一次登录' : $tmp);?>
</td>
                    </tr>
                    </tbody>
                </table>
            </dd>
        </dl>
        <dl style="width:97.5%;">
            <dt class="basebat"><span>系统信息</span></dt>
            <dd class="admin_table">
                <table width="100%">
                    <tbody>
                    <tr class="tr1 vt">
                        <td class="td1">服务器软件</td>
                        <td class="td2"><?php echo $_smarty_tpl->tpl_vars['sys']->value['serverSoft'];?>
</td>
                    </tr>
                    <tr class="tr1 vt">
                        <td class="td1">PHP版本</td>
                        <td class="td2"><?php echo $_smarty_tpl->tpl_vars['sys']->value['PHPVersion'];?>
</td>
                    </tr>
                    <tr class="tr1 vt">
                        <td class="td1">全局变量</td>
                        <td class="td2"><?php echo $_smarty_tpl->tpl_vars['sys']->value['globalRegister'];?>
</td>
                    </tr>
                    <tr class="tr1 vt">
                        <td class="td1">GD库版本</td>
                        <td class="td2"><?php echo $_smarty_tpl->tpl_vars['sys']->value['gdVersion'];?>
</td>
                    </tr>
                    <tr class="tr1 vt">
                        <td class="td1">PHP 内存限制</td>
                        <td class="td2"><?php echo $_smarty_tpl->tpl_vars['sys']->value['php_memory_limit'];?>
</td>
                    </tr>
                    <tr class="tr1 vt">
                        <td class="td1">域名地址</td>
                        <td class="td2"><?php echo $_smarty_tpl->tpl_vars['sys']->value['domain'];?>
</td>
                    </tr><tr class="tr1 vt">
                        <td class="td1">操作系统</td>
                        <td class="td2"><?php echo $_smarty_tpl->tpl_vars['sys']->value['serverOS'];?>
</td>
                    </tr>
                    <tr class="tr1 vt">
                        <td class="td1">MySQL版本</td>
                        <td class="td2"><?php echo $_smarty_tpl->tpl_vars['sys']->value['MySQLVersion'];?>
</td>
                    </tr>
                    <tr class="tr1 vt">
                        <td class="td1">上传文件</td>
                        <td class="td2"><?php echo $_smarty_tpl->tpl_vars['sys']->value['uploadFile'];?>
</td>
                    </tr>
                    <tr class="tr1 vt">
                        <td class="td1">最大执行时间</td>
                        <td class="td2"><?php echo $_smarty_tpl->tpl_vars['sys']->value['max_execution_time'];?>
</td>
                    </tr>
                    <tr class="tr1 vt">
                        <td class="td1">当前脚本占用内存</td>
                        <td class="td2"><?php echo $_smarty_tpl->tpl_vars['sys']->value['current_memory'];?>
</td>
                    </tr>
                    <tr class="tr1 vt">
                        <td class="td1">服务器时间</td>
                        <td class="td2"><?php echo $_smarty_tpl->tpl_vars['sys']->value['serverTime'];?>
</td>
                    </tr>
                    </tbody>
                </table>
            </dd>
        </dl>
        <dl style="width:97.5%;margin-bottom:15px;">
            <dt class="basebat"><span>开发团队</span></dt>
            <dd class="admin_table">
                <table width="100%">
                    <tbody>
                    <tr class="tr1 vt">
                        <td class="td1">系统支持</td>
                        <td class="td2"><a href="http://www.55like.com" target="_blank">上海五五来客科技股份有限公司</a></td>
                    </tr>
                    <tr class="tr1 vt">
                        <td class="td1">程序开发</td>
                        <td class="td2">Nicky Hung 邓永斌</td>
                    </tr>
                    <tr class="tr1 vt">
                        <td class="td1">页面设计</td>
                        <td class="td2">Johnny</td>
                    </tr>
                    <tr class="tr1 vt">
                        <td class="td1">程序版本</td>
                        <td class="td2">55like! Admin Models v1.0 Build 2013-05-01 </td>
                    </tr>
                    <tr class="tr1 vt">
                        <td class="td1">联系方式</td>
                        <td class="td2">
                            <a href="mailto:55like@163.com">55like@163.com</a>
                            24小时服务热线：138 1702 6239&nbsp;&nbsp;
                            业务咨询:021-6044 6660 / 6044 6661&nbsp;&nbsp;
                            售后服务：021-6044 6662 / 6044 6663
                        </td>
                    </tr>
                    <tr class="tr1 vt">
                        <td class="td1">官方地址</td>
                        <td class="td2">
                            <a href="http://www.55like.com" target="_blank">http://www.55like.com</a>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </dd>
        </dl>
    </div>
</div>

</body>
</html><?php }} ?>
