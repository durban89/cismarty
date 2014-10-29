<?php /* Smarty version Smarty-3.1.17, created on 2014-09-25 08:12:04
         compiled from "D:\wamp\www\test.cismarty.dev\templates\admin\public\basic_nav.html" */ ?>
<?php /*%%SmartyHeaderCode:4945423ce54c6ad73-20675900%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '33b29266b9ee9ed07467d6116d00a569ced81b40' => 
    array (
      0 => 'D:\\wamp\\www\\test.cismarty.dev\\templates\\admin\\public\\basic_nav.html',
      1 => 1411632590,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '4945423ce54c6ad73-20675900',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'menu_arr' => 0,
    'v' => 0,
    'row' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_5423ce54cc8985_43801819',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5423ce54cc8985_43801819')) {function content_5423ce54cc8985_43801819($_smarty_tpl) {?><h1><?php echo $_smarty_tpl->tpl_vars['menu_arr']->value['name'];?>
</h1>
<?php  $_smarty_tpl->tpl_vars['v'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['v']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['menu_arr']->value['subcate']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['v']->key => $_smarty_tpl->tpl_vars['v']->value) {
$_smarty_tpl->tpl_vars['v']->_loop = true;
?>
<?php if ($_smarty_tpl->tpl_vars['v']->value['isopen']&&allowShow($_smarty_tpl->tpl_vars['v']->value['allow'])) {?>
<div class="maxNavBoxs">
    <a href="javascript:;" class="current maxA" target="targetBoxs"><i></i><span></span><?php echo $_smarty_tpl->tpl_vars['v']->value['name'];?>
</a>
    <ul class="sonNavBox" style="display:block;">
        <?php  $_smarty_tpl->tpl_vars['row'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['row']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['v']->value['subcate']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['row']->key => $_smarty_tpl->tpl_vars['row']->value) {
$_smarty_tpl->tpl_vars['row']->_loop = true;
?>
        <?php if ($_smarty_tpl->tpl_vars['row']->value['isopen']&&allowShow($_smarty_tpl->tpl_vars['v']->value['allow'])) {?>
        <a href="<?php if ($_smarty_tpl->tpl_vars['row']->value['topkey']) {?><?php echo site_url("admin/".((string)$_smarty_tpl->tpl_vars['row']->value['topkey'])."/".((string)$_smarty_tpl->tpl_vars['row']->value['mkey']));?>
<?php } else { ?><?php echo site_url("admin/".((string)$_smarty_tpl->tpl_vars['v']->value['mkey'])."/".((string)$_smarty_tpl->tpl_vars['row']->value['mkey']));?>
<?php }?>" class="minA" target="targetBoxs"><i></i><span></span><?php echo $_smarty_tpl->tpl_vars['row']->value['name'];?>
</a>
        <?php }?>
        <?php } ?>
    </ul>
</div>
<?php }?>
<?php } ?><?php }} ?>
