<?php /* Smarty version Smarty-3.1.17, created on 2014-09-30 06:41:32
         compiled from "D:\wamp\www\test.cismarty.dev\templates\admin\setting\member.html" */ ?>
<?php /*%%SmartyHeaderCode:182935423cf9e95d0e7-22413756%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '267105c78d23452841883c0c2248fc4f5d3b311e' => 
    array (
      0 => 'D:\\wamp\\www\\test.cismarty.dev\\templates\\admin\\setting\\member.html',
      1 => 1412059290,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '182935423cf9e95d0e7-22413756',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_5423cf9e9f5687_07628754',
  'variables' => 
  array (
    'actionurl' => 0,
    'selfavat_1' => 0,
    'selfavat_0' => 0,
    'avatupload_1' => 0,
    'avatupload_0' => 0,
    'config' => 0,
    'status_1' => 0,
    'status_0' => 0,
    'emailactive_1' => 0,
    'emailactive_0' => 0,
    'sendemail_1' => 0,
    'sendemail_0' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5423cf9e9f5687_07628754')) {function content_5423cf9e9f5687_07628754($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate ("admin/public/basic.html", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<body>
    <div class="manageBoxs">
        <h1><i></i>系统设置 &raquo; 会员设置</h1>
        <div class="formBoxs admin_table">
            <form name="FORM" method="post" action="<?php echo $_smarty_tpl->tpl_vars['actionurl']->value;?>
" id="memberFrom" enctype="multipart/form-data">
                <table width="100%" cellspacing="0" cellpadding="0">		
                    <tr class="tr2 td_bgB">
                        <td width="50">设置说明</td>
                        <td width="300">设置内容</td>		
                        <td >调用变量</td>
                    </tr>
                    <tbody>
                        <tr class="tr1 vt" style="display:none">
                            <td class="td1">会员自定义头像</td>
                            <td class="td2">
                                <input type="radio" <?php echo $_smarty_tpl->tpl_vars['selfavat_1']->value;?>
 name="config[lk_selfavat]" value="1" class="radio">&nbsp;开启
                                <input type="radio" <?php echo $_smarty_tpl->tpl_vars['selfavat_0']->value;?>
 name="config[lk_selfavat]" value="0" class="radio">&nbsp;关闭     </td>
                            <td class="td2">
                                <div class="help_a" style="display:block">
                                    [lk_selfavat]&nbsp;&nbsp;开启：允许会员通过网络引用或者上传图片来个性头像。<br/>
                                    此处为全局控制，具体请在<a href="javascript:;">用户组设置</a>分组权限。
                                </div>
                            </td>
                        </tr>
                        <tr class="tr1 vt" style="display:none">
                            <td class="td1">会员上传头像</td>
                            <td class="td2">
                                <input type="radio" <?php echo $_smarty_tpl->tpl_vars['avatupload_1']->value;?>
 name="config[lk_avatupload]" value="1" class="radio">&nbsp;开启
                                <input type="radio" <?php echo $_smarty_tpl->tpl_vars['avatupload_0']->value;?>
 name="config[lk_avatupload]" value="0" class="radio">&nbsp;关闭                 
                            </td>
                            <td class="td2">
                                <div class="help_a" style="display:block">
                                    [lk_avatupload]&nbsp;&nbsp;开启：允许会员上传本地图片到服务器作为个性头像。
                                </div>
                            </td>
                        </tr>
                        <tr class="tr1 vt" style="display:none">
                            <td class="td1">头像尺寸</td>
                            <td class="td2"><input class="input input_wa" value="<?php echo $_smarty_tpl->tpl_vars['config']->value['lk_avatsize'];?>
" name="config[lk_avatsize]"></td>
                            <td class="td2">
                                <div class="help_a" style="display:block">
                                    [lk_avatsize]&nbsp;&nbsp;（单位：KB）开启动态缓存能有效的降低服务器负载，默认值为：900秒。
                                </div>
                            </td>
                        </tr>
                        <tr class="tr1 vt" style="display:none">
                            <td class="td1">头像高度和宽度</td>
                            <td class="td2"> 
                                <input class="input input_wc" value="<?php echo $_smarty_tpl->tpl_vars['config']->value['lk_avathight'];?>
" name="config[lk_avathight]">高   
                                <input class="input input_wc" value="<?php echo $_smarty_tpl->tpl_vars['config']->value['lk_avatwidth'];?>
" name="config[lk_avatwidth]"> 宽   
                            </td>
                            <td class="td2">
                                <div class="help_a" style="display:block">
                                    [lk_avathight] [lk_avatwidth]&nbsp;&nbsp;用户自定义头像所允许的高度和宽度。
                                </div>
                            </td>
                        </tr>
                        <tr class="tr1 vt" style="display:none">
                            <td class="td1">会员中心显示短消息数</td>
                            <td class="td2">
                                <input class="input input_wa" value="<?php echo $_smarty_tpl->tpl_vars['config']->value['lk_msg'];?>
" name="config[lk_msg]">    
                            </td>
                            <td class="td2">
                                <div class="help_a" style="display:block">
                                    [lk_msg]&nbsp;&nbsp;默认为 10 条，请根据您的模板风格设定具体数值。
                                </div>
                            </td>
                        </tr>		
                        <tr class="tr1 vt" style="display:none">
                            <td class="td1">会员中心显示收藏主题数</td>
                            <td class="td2">
                                <input class="input input_wa" value="<?php echo $_smarty_tpl->tpl_vars['config']->value['lk_fav'];?>
" name="config[lk_fav]">   
                            </td>
                            <td class="td2">
                                <div class="help_a" style="display:block">				
                                    [lk_fav]&nbsp;&nbsp; 24小时格式或者12小时格式。
                                </div>
                            </td>
                        </tr>
                        <tr class="tr1 vt" style="display:none">
                            <td class="td1">新会员注册</td>
                            <td class="td2">               
                                <input type="radio" <?php echo $_smarty_tpl->tpl_vars['status_1']->value;?>
 name="config[reg_status]" value="1" class="radio">&nbsp;开启
                                <input type="radio" <?php echo $_smarty_tpl->tpl_vars['status_0']->value;?>
 name="config[reg_status]" value="0" class="radio">&nbsp;关闭            
                            </td>              
                            <td class="td2">
                                <div class="help_a" style="display:block">
                                    [lk_status]&nbsp;&nbsp;选择“关闭”将停止网站会员的注册。
                                </div>
                            </td>
                        </tr>
                        <tr class="tr1 vt" style="display:none">
                            <td class="td1">关闭注册原因</td>
                            <td class="td2">               
                                <textarea cols="45" rows="7" class="textarea" id="closereason" name="config[reg_closereason]"><?php echo $_smarty_tpl->tpl_vars['config']->value['reg_closereason'];?>
</textarea>
                            </td>              
                            <td class="td2">
                                <div class="help_a" style="display:block">
                                    [reg_closereason]&nbsp;&nbsp;支持HTML代码。
                                </div>
                            </td>
                        </tr>    
                        <tr class="tr1 vt" style="display:none">
                            <td class="td1">用户注册Email激活</td>
                            <td class="td2">               
                                <input type="radio" <?php echo $_smarty_tpl->tpl_vars['emailactive_1']->value;?>
 name="config[reg_emailactive]" value="1" class="radio">&nbsp;开启
                                <input type="radio" <?php echo $_smarty_tpl->tpl_vars['emailactive_0']->value;?>
 name="config[reg_emailactive]" value="0" class="radio">&nbsp;关闭             
                            </td>              
                            <td class="td2">
                                <div class="help_a" style="display:block">
                                    [reg_emailactive]&nbsp;&nbsp;开启：系统会往新会员的注册Email发送一封验证邮件以确认邮箱的有效性，<br/>用户收到邮件并激活帐号后才能拥有正常的权限。
                                </div>
                            </td>
                        </tr>  
                        <tr class="tr1 vt" style="display:none">
                            <td class="td1">向注册用户发送Email</td>
                            <td class="td2">   
                                <input type="radio" <?php echo $_smarty_tpl->tpl_vars['sendemail_1']->value;?>
 name="config[reg_sendemail]" value="1" class="radio">&nbsp;开启
                                <input type="radio" <?php echo $_smarty_tpl->tpl_vars['sendemail_0']->value;?>
 name="config[reg_sendemail]" value="0" class="radio">&nbsp;关闭        
                            </td>              
                            <td class="td2">
                                <div class="help_a" style="display:block">
                                    [reg_sendemail]&nbsp;&nbsp;开启：新用户注册后系统自动发送一封Email。
                                </div>
                            </td>
                        </tr> 
                        <tr class="tr1 vt" style="display:none">
                            <td class="td1">Email内容</td>
                            <td class="td2">               
                                <textarea cols="60" rows="10" id="emailcontent"  class="textarea" name="config[reg_emailcontent]"><?php echo $_smarty_tpl->tpl_vars['config']->value['reg_emailcontent'];?>
</textarea>
                            </td>              
                            <td class="td2">
                                <div class="help_a" style="display:block">
                                    [reg_emailcontent]&nbsp;&nbsp;标签说明<br/>
                                    用户名：{!--username--} 用户密码：{!--password--}<br/>
                                    网站名：{!--sitename--} 网站链接：{!--siteurl--}<br/>
                                    管理员邮箱：{!--adminmail--}
                                </div>
                            </td>
                        </tr>
                        <tr class="tr1 vt">
                            <td class="td1">注册使用协议</td>
                            <td class="td2">               
                                <div style="width:650px">
                                    <textarea id="lk_reg_agreement" name="config[lk_reg_agreement]"><?php echo $_smarty_tpl->tpl_vars['config']->value['lk_reg_agreement'];?>
</textarea>
                                </div>
                            </td>              
                            <td class="td2">
                                <div class="help_a" style="display:block">
                                    [lk_reg_agreement]&nbsp;&nbsp;注册使用协议的详细内容，只有同意本协议规定内容之后才能完成注册。支持HTML代码。
                                </div>
                            </td>
                        </tr>
                        <tr class="tr1 vt">
                            <td class="td1">隐私注册条款</td>
                            <td class="td2">               
                                <div style="width:650px">
                                    <textarea id="lk_reg_privacy" name="config[lk_reg_privacy]"><?php echo $_smarty_tpl->tpl_vars['config']->value['lk_reg_privacy'];?>
</textarea>
                                </div>
                            </td>              
                            <td class="td2">
                                <div class="help_a" style="display:block">
                                    [lk_reg_privacy]&nbsp;&nbsp;隐私注册条款。支持HTML代码。
                                </div>
                            </td>
                        </tr>
                        <tr class="tr1 vt" style="display:none">
                            <td class="td1">同一IP注册时间限制</td>
                            <td class="td2">               
                                <input class="input input_wa" value="<?php echo $_smarty_tpl->tpl_vars['config']->value['reg_allowsameip'];?>
" name="config[reg_allowsameip]">                   
                            </td>              
                            <td class="td2">
                                <div class="help_a" style="display:block">
                                    [reg_allowsameip]&nbsp;&nbsp;（单位: 小时） 0为不限制。
                                </div>
                            </td>
                        </tr> 
                        <tr class="tr1 vt" style="display:none">
                            <td class="td1">用户注册保留字</td>
                            <td class="td2">   
                                <textarea cols="45" rows="7" class="textarea" id="bannames" name="config[reg_bannames]"><?php echo $_smarty_tpl->tpl_vars['config']->value['reg_bannames'];?>
</textarea>   
                            </td>              
                            <td class="td2">
                                <div class="help_a" style="display:block">
                                    [reg_bannames]&nbsp;&nbsp;注册的用户名中无法使用这些关键字。每个关键字用半角逗号“,”隔开，如 admin,yybus。
                                </div>
                            </td>
                        </tr>      
                        <tr class="tr1 vt" style="display:none">
                            <td class="td1">用户名长度</td>
                            <td class="td2">               
                                <input name="config[reg_minname]" value="<?php echo $_smarty_tpl->tpl_vars['config']->value['reg_minname'];?>
" class="input input_wc"> 最小值
                                <input name="config[reg_maxname]" value="<?php echo $_smarty_tpl->tpl_vars['config']->value['reg_maxname'];?>
" class="input input_wc"> 最大值        
                            </td>              
                            <td class="td2">
                                <div class="help_a" style="display:block">
                                    [reg_minname],[reg_maxname] &nbsp;&nbsp;用户注册名字符长度，推荐：最短 3 个字符，最长 15 个字符。
                                </div>
                            </td>
                        </tr>           
                        <tr class="tr1 vt" style="display:none">
                            <td class="td1">注册初始积分</td>
                            <td class="td2">               
                                <input name="config[reg_credit]" value="<?php echo $_smarty_tpl->tpl_vars['config']->value['reg_credit'];?>
" class="input input_wc">              
                            </td>              
                            <td class="td2">
                                <div class="help_a" style="display:block">
                                    [reg_credit]&nbsp;&nbsp;建议设置为0。
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
        <div style="width:100%;height:15px;float:left">&nbsp;</div>
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
                $('#memberFrom').ajaxSubmit(options);
                return false;
            });
            var lk_reg_agreement = UE.getEditor('lk_reg_agreement',{
                'toolbars':toolbar
            });
            var lk_reg_privacy = UE.getEditor('lk_reg_privacy',{
                'toolbars':toolbar
            });
        });
    </script>
</body>
</html><?php }} ?>
