<?php /* Smarty version Smarty-3.1.17, created on 2014-09-30 05:06:48
         compiled from "D:\wamp\www\test.cismarty.dev\templates\admin\navmenu\edit.html" */ ?>
<?php /*%%SmartyHeaderCode:4528542a2111c68664-26042394%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'b5103d994441224eaecdd005bab2a4f1765fa58c' => 
    array (
      0 => 'D:\\wamp\\www\\test.cismarty.dev\\templates\\admin\\navmenu\\edit.html',
      1 => 1412053606,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '4528542a2111c68664-26042394',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_542a2111da8bb9_48269688',
  'variables' => 
  array (
    'option' => 0,
    'info' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_542a2111da8bb9_48269688')) {function content_542a2111da8bb9_48269688($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate ("admin/public/basic.html", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<link href="/static/css/admin/common.css" type="text/css" rel="stylesheet" />
<body>
<div class="manageBoxs">
    <?php echo $_smarty_tpl->getSubTemplate ('admin/navmenu/choosenav.html', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

    <div class="itemSrhBoxs">
        <ul class="keySearchBoxs"></ul>
    </div>
    <div class="formBoxs admin_table">
        <form method="post" action="" id="checkform"  name="checkform" enctype="multipart/form-data">
            <table width="100%" border="0" cellspacing="1" cellpadding="5">
                <tr class="tr1 vt">
                    <td class="td1" width="15%">&nbsp;&nbsp;所属父类<span style='color:#F30;'>*</span></td>
                    <td class="td2">&nbsp;&nbsp;
                        <select name="menu_from[sub]" id="sub">
                            <option value="0">作为一级菜单</option>
                            <?php echo $_smarty_tpl->tpl_vars['option']->value;?>

                        </select>
                    </td>
                </tr>
                <tr class="tr1 vt">
                    <td class="td1">&nbsp;&nbsp;菜单名称<span style='color:#F30;'>*</span></td>
                    <td class="td2">&nbsp;&nbsp;<input type="text" class="input input_wb" style="width:200px;" value="<?php echo $_smarty_tpl->tpl_vars['info']->value['name'];?>
" id="name" name="menu_from[name]"></td>
                </tr>
                <tr class="tr1 vt">
                    <td class="td1">&nbsp;&nbsp;自定义action</td>
                    <td class="td2">&nbsp;&nbsp;<input type="text" class="input input_wb" style="width:200px;" value="<?php echo $_smarty_tpl->tpl_vars['info']->value['topkey'];?>
" id="topkey" name="menu_from[topkey]"></td>
                </tr>
                <tr class="tr1 vt">
                    <td class="td1">&nbsp;&nbsp;标识<span style='color:#F30;'>*</span></td>
                    <td class="td2">&nbsp;&nbsp;<input type="text" class="input input_wb" style="width:200px;" value="<?php echo $_smarty_tpl->tpl_vars['info']->value['mkey'];?>
" id="mkey" name="menu_from[mkey]"></td>
                </tr>
                <tr class="tr1 vt" id="icon_tr">
                    <td class="td1">&nbsp;&nbsp;图标样式<span style='color:#F30;'>*</span></td>
                    <td class="td2">&nbsp;&nbsp;<input type="text" class="input input_wb" style="width:200px;" value="<?php echo $_smarty_tpl->tpl_vars['info']->value['icon'];?>
" id="icon" name="menu_from[icon]"></td>
                </tr>
                <tr class="tr1 vt">
                    <td class="td1">&nbsp;&nbsp;显示顺序<span style='color:#F30;'>*</span></td>
                    <td class="td2">&nbsp;&nbsp;<input type="text" class="input input_wb" style="width:200px;" value="<?php echo $_smarty_tpl->tpl_vars['info']->value['sort'];?>
" id="sort" name="menu_from[sort]"></td>
                </tr>
                <tr class="tr1 vt">
                    <td class="td1">&nbsp;&nbsp;是否显示<span style='color:#F30;'>*</span></td>
                    <td class="td2">
                        &nbsp;&nbsp;<label><input type="radio" value="0" id="isopen0" <?php if ($_smarty_tpl->tpl_vars['info']->value['isopen']==0) {?>checked<?php }?> name="menu_from[isopen]">&nbsp;不显示</label>
                        &nbsp;&nbsp;<label><input type="radio" value="1" <?php if ($_smarty_tpl->tpl_vars['info']->value['isopen']==1) {?>checked<?php }?> id="isopen1" name="menu_from[isopen]">&nbsp;显示</label>
                    </td>
                </tr>
                <tr class="tr1 vt">
                    <td class="td1">&nbsp;</td>
                    <td class="td2">
                        <input type="hidden" value="save" id="action" name="submitted">
                        <span class="btn"><span><button type="submit" value="提  交" id="submitFrom" name="submitted">提 交</button></span></span>
                    </td>
                </tr>
                </tbody>
            </table>
        </form>
    </div>
</div>
<script type="text/javascript">
    $(document).ready(function() {
        $('#submitFrom').click(function() {
            var options = {
                beforeSubmit: function() {
                },
                success: function(txt) {
                    if (txt == 1) {
                        altTip('信息更新成功！', 'succeed', function() {
                            location.href='<?php echo site_url("admin/navmenu/basic");?>
';
                        });
                        return false;
                    } else {
                        altTip('信息更新失败！', 'error', function() {
                        });
                        return false;
                    }
                }
            };
            $('#checkform').ajaxSubmit(options);
            return false;
        });

        $('#sub').change(function(){
            if ($(this).val() == 0){
                $('#icon_tr').show();
            } else {
                $('#icon_tr').hide();
            }
        });

        if( $('#sub').val() != 0 ){
            $('#icon_tr').hide();
        }

    });
</script>
</body>
</html><?php }} ?>
