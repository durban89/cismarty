<?php /* Smarty version Smarty-3.1.17, created on 2014-09-25 08:17:29
         compiled from "D:\wamp\www\test.cismarty.dev\templates\admin\setting\email.html" */ ?>
<?php /*%%SmartyHeaderCode:175035423cf995e9132-41603077%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '9f1494f25e7ef51a7a425ec30878a66ada5eda41' => 
    array (
      0 => 'D:\\wamp\\www\\test.cismarty.dev\\templates\\admin\\setting\\email.html',
      1 => 1411630007,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '175035423cf995e9132-41603077',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'actionurl' => 0,
    'config' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_5423cf9979e9a5_22415669',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5423cf9979e9a5_22415669')) {function content_5423cf9979e9a5_22415669($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate ("admin/public/basic.html", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<body>
    <div class="manageBoxs">
        <h1><i></i>系统设置 &raquo; 邮箱设置</h1>
        <div class="formBoxs admin_table">
            <form name="FORM" method="post" action="<?php echo $_smarty_tpl->tpl_vars['actionurl']->value;?>
" id="emailFrom" enctype="multipart/form-data">
                <table width="100%" cellspacing="0" cellpadding="0">		
                    <tr class="tr2 td_bgB">
                        <td width="130">设置说明</td>
                        <td width="300">设置内容</td>		
                        <td>调用变量</td>
                    </tr>
                    <tbody>
                        <tr class="tr1 vt">
                            <td class="td1">邮件发送方式</td>
                            <td class="td2">
                                <input type="radio" <?php if ($_smarty_tpl->tpl_vars['config']->value['lk_mailtype']==1) {?>checked<?php }?> name="config[lk_mailtype]" value="1" class="radio">&nbsp;SMTP方式
                                <input type="radio" <?php if ($_smarty_tpl->tpl_vars['config']->value['lk_mailtype']==0) {?>checked<?php }?> name="config[lk_mailtype]" value="0" class="radio">&nbsp;Mail函数方式
                            </td>
                            <td class="td2">
                                <div class="help_a" style="display:block">
                                    [lk_mailtype]&nbsp;&nbsp;Mail函数方式需服务器端支持。
                                </div>
                            </td> 
                        </tr>      
                        <tr class="tr1 vt">
                            <td class="td1">邮箱SMTP服务器地址</td>
                            <td class="td2">
                                <input name="config[lk_smtphost]" value="<?php echo $_smarty_tpl->tpl_vars['config']->value['lk_smtphost'];?>
" class="input input_wa"> 
                            </td>
                            <td class="td2">
                                <div class="help_a" style="display:block">
                                    [lk_smtphost]&nbsp;&nbsp;SMTP服务器，只有正确设置才能使用发邮件功能。
                                </div>
                            </td>
                        </tr>
                        <tr class="tr1 vt">
                            <td class="td1">SMTP服务器验证</td>
                            <td class="td2"> 
                                <input type="radio" <?php if ($_smarty_tpl->tpl_vars['config']->value['lk_smtpauth']==1) {?>checked<?php }?> name="config[lk_smtpauth]" value="1" class="radio">&nbsp;开启
                                <input type="radio" <?php if ($_smarty_tpl->tpl_vars['config']->value['lk_smtpauth']==0) {?>checked<?php }?> name="config[lk_smtpauth]" value="0" class="radio">&nbsp;关闭
                            </td>
                            <td class="td2">
                                <div class="help_a" style="display:block">
                                    [lk_smtpauth]&nbsp;&nbsp; SMTP服务器验证。
                                </div>
                            </td>
                        </tr>
                        <tr class="tr1 vt">
                            <td class="td1">邮箱帐号</td>
                            <td class="td2">
                                <input name="config[lk_smtpuser]" value="<?php echo $_smarty_tpl->tpl_vars['config']->value['lk_smtpuser'];?>
" class="input input_wa">                     
                            </td>
                            <td class="td2">
                                <div class="help_a" style="display:block">
                                    [lk_smtpuser] &nbsp;&nbsp;请填写完整的帐户信息。例如：55like@163.com			        
                                </div>
                            </td>
                        </tr>		
                        <tr class="tr1 vt">
                            <td class="td1">邮箱密码</td>
                            <td class="td2">			
                                <input name="config[lk_smtppw]" type="password"  value="<?php echo $_smarty_tpl->tpl_vars['config']->value['lk_smtppw'];?>
" class="input input_wa">    
                            </td>
                            <td class="td2">
                                <div class="help_a" style="display:block">				
                                    [lk_smtppw]&nbsp;&nbsp;邮箱密码。
                                </div>
                            </td>
                        </tr>
                        <tr class="tr1 vt">
                            <td class="td1">SMTP端口</td>
                            <td class="td2">  
                                <input name="config[lk_smtpport]"  value="<?php echo $_smarty_tpl->tpl_vars['config']->value['lk_smtpport'];?>
" class="input input_wc">          
                            </td>              
                            <td class="td2">
                                <div class="help_a" style="display:block">
                                    [lk_smtpport]&nbsp;&nbsp;默认为25。如果您使用Gmail邮箱，请设定端口值：465
                                </div>
                            </td>
                        </tr>
                        <tr class="tr1 vt">
                            <td align="right" class="td1">&nbsp;</td>
                            <td class="td2" colspan="2">
                                <input type="hidden" name="cid" id="cid" value="25" />
                                <input type="hidden" name="submitted" id="submitted" value="save" />
                                <span id="lk_submit"><a href="javascript:;" id="submitFrom">提交</a></span>
                                <span id="lk_submit"><a href="javascript:;" id="resetBtn">重填</a></span>
                            </td>
                        </tr>
                    </tbody>
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
                                location.reload();
                            });
                            return false;
                        }
                    }
                };
                $('#emailFrom').ajaxSubmit(options);
                return false;
            });
        });
    </script>
</body>
</html><?php }} ?>
