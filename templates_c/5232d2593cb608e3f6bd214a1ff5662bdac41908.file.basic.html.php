<?php /* Smarty version Smarty-3.1.17, created on 2014-09-30 01:58:24
         compiled from "D:\wamp\www\test.cismarty.dev\templates\admin\navmenu\basic.html" */ ?>
<?php /*%%SmartyHeaderCode:24498542a0b012bd814-12087804%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '5232d2593cb608e3f6bd214a1ff5662bdac41908' => 
    array (
      0 => 'D:\\wamp\\www\\test.cismarty.dev\\templates\\admin\\navmenu\\basic.html',
      1 => 1412042304,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '24498542a0b012bd814-12087804',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_542a0b012e8799_25698796',
  'variables' => 
  array (
    'actionurl' => 0,
    'tableinfo' => 0,
    'strPages' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_542a0b012e8799_25698796')) {function content_542a0b012e8799_25698796($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate ("admin/public/basic.html", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<link href="/static/css/admin/common.css" type="text/css" rel="stylesheet" />
<link href="/static/css/colorpicker.css" rel="stylesheet"/>
<script type="text/javascript" src="/static/js/colorpicker.js"></script>
<script type="text/javascript" src="/static/js/datepicker/WdatePicker.js"></script>
<body>
<div class="manageBoxs">
    <?php echo $_smarty_tpl->getSubTemplate ('admin/navmenu/choosenav.html', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

    <div class="itemSrhBoxs">
        <ul class="keySearchBoxs">
            <li style="padding:0px;">&nbsp;</li>
        </ul>
    </div>
    <div id="itemListBoxs" class="itemListBoxs m10">
        <form action="<?php echo $_smarty_tpl->tpl_vars['actionurl']->value;?>
" name="FORM" method="post">
            <table width="100%" border="0" cellspacing="1" cellpadding="5" style="background:#EAEAEA;">
                <tr class="itemTitleTr">
                    <td width="5%" align="center" class="tac"><span class="cp" onClick="CheckAll(document.FORM, 1)">全选</span></td>
                    <td width="5%" align="center">启用</td>
                    <td>【顺序】菜单名称</td>
                    <td width="15%" align="center">标识</td>
                    <td width="30%" align="center">链接地址</td>
                    <td width="10%" align="center">操作</td>
                </tr>
                <?php echo $_smarty_tpl->tpl_vars['tableinfo']->value;?>

                <?php if ($_smarty_tpl->tpl_vars['strPages']->value) {?>
                <tr class="listPageTr">
                    <td colspan="9" align="center"><div class="pageBoxs"> <?php echo $_smarty_tpl->tpl_vars['strPages']->value;?>
</div></td>
                </tr>
                <?php }?>
                <tr class="listPageTr">
                    <td colspan="10" align="left" style="background:#FEFFEE;">
                        <span id="lk_submit"><a href="javascript:;" onClick="CheckAll(document.FORM);">全选</a></span>
                        <span id="lk_submit"><a href="javascript:;" onClick="CheckAll(document.FORM, '');">反选</a></span>
                        <div style="width:auto;float:right;">
                                <span style="width:auto;float:left;padding:3px 15px 0 0;font-size:14px;">
                                    <span>选中操作：</span>
                                    <select id="job" name="job">
                                        <option value="del">删除</option>
                                    </select>
                                </span>
                            <span><input type="submit" value="提交" id="submit" onclick="return confirm('您确定执行该操作吗？');" /></span>
                        </div>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</div>
<script type="text/javascript">
    $(function() {
        $('.menu_filed b').live('click', function() {
            var obj = $(this).parent(), id = $(obj).attr('rel');
            $(".child_" + id).show();
            obj.attr('class', 'menu_filed_an');
        });
        $('.menu_filed_an b').live('click', function() {
            var obj = $(this).parent(), id = $(obj).attr('rel');
            $(".child_" + id).hide();
            obj.attr('class', 'menu_filed');
        });
    });
</script>
</body>
</html>
<?php }} ?>
