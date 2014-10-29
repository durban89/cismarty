<?php /* Smarty version Smarty-3.1.17, created on 2014-09-30 06:29:45
         compiled from "D:\wamp\www\test.cismarty.dev\templates\admin\setting\safe.html" */ ?>
<?php /*%%SmartyHeaderCode:28336542a3ce2201f80-26740042%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'f38bdf6689157a8897264b0e3cc0fbf545b0316c' => 
    array (
      0 => 'D:\\wamp\\www\\test.cismarty.dev\\templates\\admin\\setting\\safe.html',
      1 => 1412058584,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '28336542a3ce2201f80-26740042',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_542a3ce227efa2_12305261',
  'variables' => 
  array (
    'config' => 0,
    'gdchecklist' => 0,
    'k' => 0,
    'v' => 0,
    'gdcodetypes' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_542a3ce227efa2_12305261')) {function content_542a3ce227efa2_12305261($_smarty_tpl) {?><?php if (!is_callable('smarty_function_html_options')) include 'D:\\wamp\\www\\test.cismarty.dev\\application\\libraries\\smarty\\plugins\\function.html_options.php';
?><?php echo $_smarty_tpl->getSubTemplate ("admin/public/basic.html", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<body>
<div class="manageBoxs">
<h1><i></i>系统设置 &raquo; 安全设置</h1>
<div class="formBoxs admin_table">
    <form name="FORM" method="post" action="" id="basicFrom" enctype="multipart/form-data">
        <table width="100%" cellspacing="0" cellpadding="0">
            <tr class="tr2 td_bgB">
                <td width="150">设置说明</td>
                <td width="300">设置内容</td>
                <td >	调用变量</td>
            </tr>

            <tr class="tr1 vt">
                <td class="td1">网站安全密钥</td>
                <td class="td2">
                    <input name="config[lk_sitehash]" value="<?php echo $_smarty_tpl->tpl_vars['config']->value['lk_sitehash'];?>
" class="input input_wa">
                </td>
                <td class="td2"><div class="help_a" style="display: block;">
                    [lk_sitehash]&nbsp;&nbsp;10位长度的一个随机序列，无特殊情况请不要修改。
                </div></td>
            </tr>

            <tr class="tr1 vt">
                <td class="td1">验证码设置</td>
                <td class="td2">
                    <?php  $_smarty_tpl->tpl_vars['v'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['v']->_loop = false;
 $_smarty_tpl->tpl_vars['k'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['gdchecklist']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['v']->key => $_smarty_tpl->tpl_vars['v']->value) {
$_smarty_tpl->tpl_vars['v']->_loop = true;
 $_smarty_tpl->tpl_vars['k']->value = $_smarty_tpl->tpl_vars['v']->key;
?>
                    <input <?php if (in_array($_smarty_tpl->tpl_vars['k']->value,$_smarty_tpl->tpl_vars['config']->value['lk_gdcheck'])) {?>checked<?php }?> name="config[lk_gdcheck][]" type="checkbox" value="<?php echo $_smarty_tpl->tpl_vars['k']->value;?>
"><?php echo $_smarty_tpl->tpl_vars['v']->value;?>

                    <?php } ?>
                </td>
                <td class="td2"><div class="help_a" style="display: block;">
                    [lk_gdcheck]&nbsp;&nbsp;关闭：将无法上传主题展示图。
                </div></td>
            </tr>

            <tr class="tr1 vt">
                <td class="td1">验证码类型</td>
                <td class="td2">
                    <select name="config[lk_gdcodetype]">
                        <?php echo smarty_function_html_options(array('options'=>$_smarty_tpl->tpl_vars['gdcodetypes']->value,'selected'=>$_smarty_tpl->tpl_vars['config']->value['lk_gdcodetype']),$_smarty_tpl);?>

                    </select>
                </td>
                <td class="td2">
                    <div class="help_a" style="display: block;">
                        [lk_gdcodetype]&nbsp;&nbsp;开启：将禁止直接从地址栏输入附件地址访问，也不允许其他站点直接链接本站的附件地址。
                    </div>
                </td>
            </tr>

            <tr class="tr1 vt">
                <td class="td1">验证码尺寸（高 * 宽）</td>
                <td class="td2">
                    高 <input style="width: 40px" name="config[lk_gdheight]" value="<?php echo $_smarty_tpl->tpl_vars['config']->value['lk_gdheight'];?>
" class="input input_wc">
                    宽 <input style="width: 40px" name="config[lk_gdwidth]" value="<?php echo $_smarty_tpl->tpl_vars['config']->value['lk_gdwidth'];?>
" class="input input_wc">
                    数量 <input style="width: 40px" name="config[lk_gdcodenum]" value="<?php echo $_smarty_tpl->tpl_vars['config']->value['lk_gdcodenum'];?>
" class="input input_wc">
                </td>
                <td class="td2"><div class="help_a" style="display: block;">
                    [lk_gdheight] [lk_gdwidth] [lk_gdcodenum]&nbsp;&nbsp; 尺寸请不要超过 60 * 150。
                </div></td>
            </tr>

            <tr class="tr1 vt">
                <td class="td1">验证问题与答案</td>
                <td class="td2">
                    问题：
                    <input class="input input_wa" value="<?php echo $_smarty_tpl->tpl_vars['config']->value['lk_checkquestion'];?>
" name="config[lk_checkquestion]">   <br/>
                    答案：
                    <input class="input input_wc" value="<?php echo $_smarty_tpl->tpl_vars['config']->value['lk_checkanswer'];?>
" name="config[lk_checkanswer]">
                </td>
                <td class="td2"><div class="help_a" style="display: block;">
                    [lk_checkquestion] [lk_checkanswer]&nbsp;&nbsp;
                    <div class="legend">
                        <ol >
                            <li> 您可以使用简单的文字问题(例如：1+1=?，请输入中文答案)</li>
                            <li>也可以使用html代码(例如将问题和答案做成小图片 &lt;img src="地址" /&gt;)</li>
                        </ol>
                    </div>
                </div></td>
            </tr>
            <tr class="tr1 vt">
                <td class="td1">注册验证问题</td>
                <td class="td2">
                    <input type="radio" <?php if ($_smarty_tpl->tpl_vars['config']->value['lk_regqa']) {?>checked<?php }?> name="config[lk_regqa]" value="1" class="radio">&nbsp;开启
                    <input type="radio" <?php if ($_smarty_tpl->tpl_vars['config']->value['lk_regqa']) {?>checked<?php }?> name="config[lk_regqa]" value="0" class="radio">&nbsp;关闭
                </td>
                <td class="td2"><div class="help_a" style="display: block;">
                    [lk_regqa]&nbsp;&nbsp;开启：会员注册需要回答验证问题。
                </div></td>
            </tr>
            <tr class="tr1 vt">
                <td class="td1">IP访问允许列表</td>
                <td class="td2">
                    <textarea class="textarea" name="config[lk_ipallow]"><?php echo $_smarty_tpl->tpl_vars['config']->value['lk_ipallow'];?>
</textarea>
                </td>
                <td class="td2"><div class="help_a" style="display: block;">
                    [lk_ipallow]&nbsp;&nbsp;只有当用户处于本列表中的 IP 地址时才可以访问网站，列表以外的地址访问将视为 IP 被禁止，每行一条 IP 纪录。既可输入完整地址，也可只输入 IP 开头，例如 "192.168."(不含引号) 可匹配 192.168.0.0~192.168.255.255 范围内的所有地址，留空为所有 IP 除明确禁止的以外均可访问。
                </div></td>
            </tr>
            <tr class="tr1 vt">
                <td class="td1">IP禁止访问列表</td>
                <td class="td2">
                    <textarea class="textarea" name="config[lk_ipdeny]"><?php echo $_smarty_tpl->tpl_vars['config']->value['lk_ipdeny'];?>
</textarea>
                </td>
                <td class="td2"><div class="help_a" style="display: block;">
                    [lk_ipdeny]&nbsp;&nbsp;当用户的IP 地址处于本列表中时将禁止其访问网站。
                </div></td>
            </tr>
            <tr class="tr1 vt">
                <td class="td1">后台登录IP限制列表</td>
                <td class="td2">
                    <textarea class="textarea" name="config[lk_adminipallow]"><?php echo $_smarty_tpl->tpl_vars['config']->value['lk_adminipallow'];?>
</textarea>
                </td>
                <td class="td2"><div class="help_a" style="display: block;">
                    [lk_adminipallow]&nbsp;&nbsp;此功能可绑定登录后台的 IP，只有在列表内的 IP 才能登录网站后台，可以绑定单个IP地址格式如：192.0.0.1，也可以绑定一段IP格式如："192.0.0."。每行一条 IP 纪录。
                </div></td>
            </tr>
            <tr class="tr1 vt">
                <td class="td1">后台登陆安全码</td>
                <td class="td2">
                    <input type="radio" <?php if ($_smarty_tpl->tpl_vars['config']->value['lk_adminsafecode']==1) {?>checked<?php }?> name="config[lk_adminsafecode]" value="1" class="radio">&nbsp;开启
                    <input type="radio" <?php if ($_smarty_tpl->tpl_vars['config']->value['lk_adminsafecode']==0) {?>checked<?php }?> name="config[lk_adminsafecode]" value="0" class="radio">&nbsp;关闭
                </td>
                <td class="td2"><div class="help_a" style="display: block;">
                    [lk_adminsafecode]&nbsp;&nbsp;开启：登录后台需填写安全密码，有助于进一步提升安全性。
                    安全码存放文件：/data/safe.inc.php，如果您未配置安全码请不要开启，否则将无法登陆后台。
                </div></td>
            </tr>
            <tr class="tr1 vt">
                <td class="td1">DDOS攻击防护</td>
                <td class="td2">
                    <input class="input input_wa" value="<?php echo $_smarty_tpl->tpl_vars['config']->value['lk_loadavg'];?>
" name="config[lk_loadavg]">
                </td>
                <td class="td2"><div class="help_a" style="display: block;">
                    [lk_loadavg] 当系统负载均衡系数超过设定值时自动启用防DDOS攻击保护，0为不限制。
                </div>
                </td>
            </tr>
            <tr class="tr1 vt">
                <td align="right" class="td1">&nbsp;</td>
                <td class="td2" colspan="2">
                    <input type="hidden" name="submitted" id="submitted" value="save" />
                    <span id="lk_submit"><a href="javascript:;" id="submitFrom">提交</a></span>
                    <span id="lk_submit"><a href="javascript:;" id="resetBtn">重填</a></span>
                </td>
            </tr>
        </table>
    </form>
</div>
<div style="width:100%;height:15px;float:left;">&nbsp;</div>
</div>
<script type="text/javascript">

    $(function() {
        $('#submitFrom').click(function() {
            var options = {
                beforeSubmit: function() {
                },
                success: function(txt) {
                    if (txt == 1) {
                        altTip('信息更新成功！', 'succeed', function() {
                            location.reload();
                        });
                        return false;
                    } else {
                        altTip('信息更新失败！', 'error', function() {
                        });
                        return false;
                    }
                }
            };
            $('#basicFrom').ajaxSubmit(options);
            return false;
        });
    });

</script>
</body>
</html><?php }} ?>
