<?php /* Smarty version Smarty-3.1.17, created on 2014-09-30 01:56:33
         compiled from "D:\wamp\www\test.cismarty.dev\templates\admin\navmenu\choosenav.html" */ ?>
<?php /*%%SmartyHeaderCode:12964542a0d6ff12626-48468775%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '53bc98387c718938ab98cb52e064c43c985a45a0' => 
    array (
      0 => 'D:\\wamp\\www\\test.cismarty.dev\\templates\\admin\\navmenu\\choosenav.html',
      1 => 1412042193,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '12964542a0d6ff12626-48468775',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_542a0d700222b1_88181742',
  'variables' => 
  array (
    'action' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_542a0d700222b1_88181742')) {function content_542a0d700222b1_88181742($_smarty_tpl) {?><h1>
    <i></i>菜单管理 &raquo; <?php if ($_smarty_tpl->tpl_vars['action']->value=='basic') {?>菜单列表<?php } elseif ($_smarty_tpl->tpl_vars['action']->value=='add') {?>添加菜单<?php } else { ?>编辑菜单<?php }?>
</h1>
<div class="itemCateNav">
    <div class="cateChoose">
        <a href="<?php echo site_url("admin/navmenu/basic");?>
"<?php if ($_smarty_tpl->tpl_vars['action']->value=='basic') {?> class='on'<?php }?>><span id="txt">菜单管理</span><span id="bgr"></span></a>
        <a href="<?php echo site_url("admin/navmenu/add");?>
"<?php if ($_smarty_tpl->tpl_vars['action']->value=='add') {?> class='on'<?php }?>><span id="txt">添加菜单</span><span id="bgr"></span></a>
        <?php if ($_smarty_tpl->tpl_vars['action']->value=='edit') {?>
        <a href="javascript:;" class='on'><span id="txt">编辑菜单</span><span id="bgr"></span></a>
        <?php }?>
    </div>
</div><?php }} ?>
