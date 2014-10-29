<?php /* Smarty version Smarty-3.1.17, created on 2014-09-25 08:12:05
         compiled from "D:\wamp\www\test.cismarty.dev\templates\admin\setting\basic.html" */ ?>
<?php /*%%SmartyHeaderCode:314915423ce55508541-78281635%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '16800d681e6af6d20ffdd4107b3d5a5e4aeca286' => 
    array (
      0 => 'D:\\wamp\\www\\test.cismarty.dev\\templates\\admin\\setting\\basic.html',
      1 => 1411626782,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '314915423ce55508541-78281635',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'config' => 0,
    'ifopen_1' => 0,
    'ifopen_0' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_5423ce555bc073_24677361',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5423ce555bc073_24677361')) {function content_5423ce555bc073_24677361($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate ("admin/public/basic.html", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<body>
<div class="manageBoxs">
<h1><i></i>系统设置 &raquo; 基本设置</h1>
<div class="formBoxs admin_table">
    <form name="FORM" method="post" action="" id="basicFrom" enctype="multipart/form-data">
        <table width="100%" border="0" cellspacing="1" cellpadding="5">
            <tr class="tr2 td_bgB">
                <td width="10%">设置说明</td>
                <td width="55%">设置内容</td>
                <td>调用变量</td>
            </tr>
            <tr class="tr1 vt">
                <td class="td1">网站名称</td>
                <td class="td2"><input class="lk-input" value="<?php echo $_smarty_tpl->tpl_vars['config']->value['lk_sitename'];?>
" style="width: 200px" name="config[lk_sitename]"></td>
                <td class="td2"><div class="help_a" style="display: block;">
                    [lk_sitename]&nbsp;&nbsp;支持HTML代码，网站title标签内的信息请在&nbsp; SEO优化&nbsp;里设置
                </div></td>
            </tr>
            <tr class="tr1 vt">
                <td class="td1">网站访问地址</td>
                <td class="td2"><input class="lk-input" value="<?php echo $_smarty_tpl->tpl_vars['config']->value['lk_siteurl'];?>
" style="width: 200px" name="config[lk_siteurl]"></td>
                <td class="td2"><div class="help_a" style="display: block;">
                    [lk_siteurl]&nbsp;&nbsp;请在最后加上"/"。如：http://域名:端口/目录名/ 如果希望能多个域名访问您的网站，请留空。
                </div></td>
            </tr>
            <tr class="tr1 vt">
                <td class="td1">网站二维码</td>
                <td class="td2">
                    <input type="hidden" value="<?php echo $_smarty_tpl->tpl_vars['config']->value['lk_qrcode'];?>
" id="oldlogo" name="oldwxewm" />
                    <input type="file" id="lk_qrcode" name="lk_qrcode">
                    <?php if ($_smarty_tpl->tpl_vars['config']->value['lk_qrcode']) {?>
                    <a href="<?php echo $_smarty_tpl->tpl_vars['config']->value['lk_qrcode'];?>
" target="_blank">查看二维码</a>&nbsp;&nbsp;
                    <?php }?>
                </td>
                <td class="td2"><div class="help_a" style="display: block;">
                    [lk_qrcode]&nbsp;&nbsp;网站二维码【164*164】
                </div></td>
            </tr>
            <tr class="tr1 vt" style="display:none;">
                <td class="td1">网站安装目录</td>
                <td class="td2"><input class="lk-input" value="<?php echo $_smarty_tpl->tpl_vars['config']->value['lk_sitedir'];?>
" name="config[lk_sitedir]"></td>
                <td class="td2"><div class="help_a" style="display: block;">
                    [lk_sitedir]&nbsp;&nbsp;目录名称允许包含：数字、字母、下划线   例如:yybus。根目录为“/”。
                </div></td>
            </tr>
            <tr class="tr1 vt" style="display:none;">
                <td class="td1">天猫链接</td>
                <td class="td2"><input class="lk-input" value="<?php echo $_smarty_tpl->tpl_vars['config']->value['lk_tmall'];?>
" name="config[lk_tmall]"></td>
                <td class="td2"><div class="help_a" style="display: block;">
                    [lk_tmall]&nbsp;&nbsp;天猫链接
                </div></td>
            </tr>
            <tr class="tr1 vt" style="display:none;">
                <td class="td1">微博链接</td>
                <td class="td2"><input class="lk-input" value="<?php echo $_smarty_tpl->tpl_vars['config']->value['lk_weibo'];?>
" name="config[lk_weibo]"></td>
                <td class="td2"><div class="help_a" style="display: block;">
                    [lk_weibo]&nbsp;&nbsp;微博链接
                </div></td>
            </tr>
            <tr class="tr1 vt" style="display:none;">
                <td class="td1">招聘邮箱</td>
                <td class="td2"><input class="lk-input" value="<?php echo $_smarty_tpl->tpl_vars['config']->value['lk_adminmail'];?>
" name="config[lk_adminmail]"></td>
                <td class="td2"><div class="help_a" style="display: block;">
                    [lk_adminmail]&nbsp;&nbsp;招聘邮箱
                </div></td>
            </tr>
            <!--
            <tr class="tr1 vt">
                <td class="td1">公司传真</td>
                <td class="td2"><input class="lk-input" value="<?php echo $_smarty_tpl->tpl_vars['config']->value['lk_fax'];?>
" name="config[lk_fax]"></td>
                <td class="td2"><div class="help_a" style="display: block;">
                        [lk_fax]&nbsp;&nbsp;公司传真
                    </div></td>
            </tr>
            <tr class="tr1 vt">
                <td class="td1">公司邮编</td>
                <td class="td2"><input class="lk-input" value="<?php echo $_smarty_tpl->tpl_vars['config']->value['lk_code'];?>
" name="config[lk_code]"></td>
                <td class="td2"><div class="help_a" style="display: block;">
                        [lk_code]&nbsp;&nbsp;公司邮编
                    </div></td>
            </tr>
            -->
            <tr class="tr1 vt">
                <td class="td1">手机号码</td>
                <td class="td2"><input class="lk-input" value="<?php echo $_smarty_tpl->tpl_vars['config']->value['lk_mobile'];?>
" name="config[lk_mobile]"></td>
                <td class="td2">
                    <div class="help_a" style="display: block;">
                        [lk_mobile]&nbsp;&nbsp;手机号码,短信接收号码
                    </div>
                </td>
            </tr>
            <tr class="tr1 vt">
                <td class="td1">热线电话</td>
                <td class="td2"><input class="lk-input" value="<?php echo $_smarty_tpl->tpl_vars['config']->value['lk_companyhottel'];?>
" name="config[lk_companyhottel]"></td>
                <td class="td2">
                    <div class="help_a" style="display: block;">
                        [lk_companyhottel]&nbsp;&nbsp;请输入您公司的服务热线号码，一般为400电话。
                    </div>
                </td>
            </tr>

            <tr class="tr1 vt" style="display:none;">
                <td class="td1">公司名称</td>
                <td class="td2"><input class="lk-input" value="<?php echo $_smarty_tpl->tpl_vars['config']->value['lk_companyname'];?>
" name="config[lk_companyname]"></td>
                <td class="td2"><div class="help_a" style="display: block;">
                    [lk_companyname]&nbsp;&nbsp;公司名称
                </div></td>
            </tr>
            <tr class="tr1 vt">
                <td class="td1">客服QQ</td>
                <td class="td2"><input class="lk-input" value="<?php echo $_smarty_tpl->tpl_vars['config']->value['lk_qq'];?>
" name="config[lk_qq]"></td>
                <td class="td2"><div class="help_a" style="display: block;">
                    [lk_qq]&nbsp;&nbsp;在线客服QQ帐号
                </div></td>
            </tr>
            <!--<tr class="tr1 vt">-->
            <!--<td class="td1">咨询热线</td>-->
            <!--<td class="td2">-->
            <!--<input class="lk-input" value="<?php echo $_smarty_tpl->tpl_vars['config']->value['lk_hotline1'];?>
" style="width:200px;" name="config[lk_hotline1]" placeholder="咨询热线1">-->
            <!--<input class="lk-input" value="<?php echo $_smarty_tpl->tpl_vars['config']->value['lk_hotline2'];?>
" style="width:200px;" name="config[lk_hotline2]" placeholder="咨询热线2">-->
            <!--</td>-->
            <!--<td class="td2"><div class="help_a" style="display: block;">-->
            <!--[lk_hotline]&nbsp;&nbsp;咨询热线-->
            <!--</div></td>-->
            <!--</tr><tr class="tr1 vt">-->
            <!--<td class="td1">咨询热线</td>-->
            <!--<td class="td2">-->
            <!--<input class="lk-input" value="<?php echo $_smarty_tpl->tpl_vars['config']->value['lk_hotline1'];?>
" style="width:200px;" name="config[lk_hotline1]" placeholder="咨询热线1">-->
            <!--<input class="lk-input" value="<?php echo $_smarty_tpl->tpl_vars['config']->value['lk_hotline2'];?>
" style="width:200px;" name="config[lk_hotline2]" placeholder="咨询热线2">-->
            <!--</td>-->
            <!--<td class="td2"><div class="help_a" style="display: block;">-->
            <!--[lk_hotline]&nbsp;&nbsp;咨询热线-->
            <!--</div></td>-->
            <!--</tr>-->
            <!--<tr class="tr1 vt">-->
            <!--<td class="td1">视频地址：</td>-->
            <!--<td class="td2"><textarea class="textarea" name="config[lk_icp]"><?php echo $_smarty_tpl->tpl_vars['config']->value['lk_icp'];?>
</textarea></td>-->
            <!--<td class="td2"><div class="help_a" style="display: block;">-->
            <!--[lk_icp]&nbsp;&nbsp;在第三方视频网站上传的视频生成的Flash地址</a>-->
            <!--</div></td>-->
            <!--</tr>-->
            <tr class="tr1 vt">
                <td class="td1">第三方统计代码</td>
                <td class="td2">
                    <textarea class="textarea" name="config[lk_statistic]"><?php echo $_smarty_tpl->tpl_vars['config']->value['lk_statistic'];?>
</textarea>
                </td>
                <td class="td2">
                    <div class="help_a" style="display: block;">
                        [lk_statistic]&nbsp;&nbsp;在第三方网站上注册并获得统计代码，并将统计代码粘贴在下面文本框中即可
                        <br>常用统计快捷链接：<a target="_blank" href="http://www.cnzz.com">CNZZ</a>&nbsp; <a target="_blank" href="http://tongji.baidu.com">百度统计</a>&nbsp;<a target="_blank" href="http://tongji.cn.yahoo.com/">雅虎统计</a>&nbsp;<a target="_blank" href="http://www.51.la/">我要啦</a>&nbsp;<a target="_blank" href="http://count.51yes.com/">51YES</a>
                    </div>
                </td>
            </tr>
            <tr class="tr1 vt">
                <td class="td1">网站底部信息</td>
                <td class="td2">
                    <div style="width: 650px;">
                        <textarea id="footer" name="config[lk_footer]"><?php echo $_smarty_tpl->tpl_vars['config']->value['lk_footer'];?>
</textarea>
                    </div>
                </td>
                <td class="td2"><div class="help_a" style="display: block;">
                    [lk_footer]&nbsp;&nbsp;网站底部信息
                </div></td>
            </tr>
            <!--
            <tr class="tr1 vt">
                <td class="td1">热门搜索</td>
                <td class="td2"><input class="lk-input" value="<?php echo $_smarty_tpl->tpl_vars['config']->value['lk_search'];?>
" name="config[lk_search]"></td>
                <td class="td2"><div class="help_a" style="display: block;">
                        [lk_search]&nbsp;热门关键词，每个词用半角 ',' 号分开
                    </div></td>
            </tr>
            <tr class="tr1 vt">
                <td class="td1">网站状态</td>
                <td class="td2">
                    <input type="radio" <?php echo $_smarty_tpl->tpl_vars['ifopen_1']->value;?>
 name="config[lk_ifopen]" value="1" class="radio">&nbsp;开启
                    <input type="radio" <?php echo $_smarty_tpl->tpl_vars['ifopen_0']->value;?>
 name="config[lk_ifopen]" value="0" class="radio">&nbsp;关闭
                </td>
                <td class="td2"><div class="help_a" style="display: block;">
                        [lk_ifopen]&nbsp;&nbsp;关闭后普通会员将无法访问网站，管理员通过后台登录认证后可以访问网站。
                    </div></td>
            </tr>
            <tr class="tr1 vt">
                <td class="td1">网站关闭的原因</td>
                <td class="td2">
                    <textarea id="whyclosed" name="whyclosed" style="width:680px; height:260px;"><?php echo $_smarty_tpl->tpl_vars['config']->value['lk_whyclosed'];?>
</textarea>
                </td>
                <td class="td2"><div class="help_a" style="display: block;">
                        [lk_whyclosed]&nbsp;&nbsp;网站关闭的提示信息，支持HTML代码。
                    </div></td>
            </tr>
            -->
            <tr class="tr1 vt">
                <td align="right" class="td1">&nbsp;</td>
                <td class="td2" colspan="2"><input type="hidden" name="cid" id="cid" value="25" />
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

        var editor = UE.getEditor('footer');
    });

</script>
</body>
</html><?php }} ?>
