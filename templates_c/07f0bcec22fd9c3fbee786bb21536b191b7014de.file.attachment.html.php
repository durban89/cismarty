<?php /* Smarty version Smarty-3.1.17, created on 2014-09-30 05:56:10
         compiled from "D:\wamp\www\test.cismarty.dev\templates\admin\setting\attachment.html" */ ?>
<?php /*%%SmartyHeaderCode:29557542a3be8262766-68734827%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '07f0bcec22fd9c3fbee786bb21536b191b7014de' => 
    array (
      0 => 'D:\\wamp\\www\\test.cismarty.dev\\templates\\admin\\setting\\attachment.html',
      1 => 1412056567,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '29557542a3be8262766-68734827',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_542a3be8404756_83490167',
  'variables' => 
  array (
    'actionurl' => 0,
    'config' => 0,
    'attachdirs' => 0,
    'watertypes' => 0,
    'range_position' => 0,
    'v' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_542a3be8404756_83490167')) {function content_542a3be8404756_83490167($_smarty_tpl) {?><?php if (!is_callable('smarty_function_html_options')) include 'D:\\wamp\\www\\test.cismarty.dev\\application\\libraries\\smarty\\plugins\\function.html_options.php';
?><?php echo $_smarty_tpl->getSubTemplate ("admin/public/basic.html", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<link href="/static/css/colorpicker.css" rel="stylesheet"/>
<script type="text/javascript" src="/static/js/colorpicker.js"></script>
<body>
    <div class="manageBoxs">
        <h1><i></i>系统设置 &raquo; 附件设置</h1>
        <div class="formBoxs admin_table">
            <form name="FORM" method="post" action="<?php echo $_smarty_tpl->tpl_vars['actionurl']->value;?>
" id="attachmentFrom" enctype="multipart/form-data">
                <table width="100%" cellspacing="0" cellpadding="0">
                    <tr class="tr2 td_bgB">
                        <td width="50">设置说明</td>
                        <td width="300">设置内容</td>
                        <td >	调用变量</td>
                    </tr>
                    <tbody>
                        <tr class="tr1 vt">
                            <td class="td1">附件上传功能</td>
                            <td class="td2">
                                <input type="radio" <?php if ($_smarty_tpl->tpl_vars['config']->value['lk_allowupload']==1) {?>checked<?php }?> name="config[lk_allowupload]" value="1" class="radio">&nbsp;开启
                                <input type="radio" <?php if ($_smarty_tpl->tpl_vars['config']->value['lk_allowupload']==0) {?>checked<?php }?> name="config[lk_allowupload]" value="0" class="radio">&nbsp;关闭
                            </td>
                            <td class="td2">
                                <div class="help_a" style="display: block;">
                                [lk_allowupload]&nbsp;&nbsp;此处为全局设置，关闭则所有会员都无法上传附件。
                                </div>
                            </td>
                        </tr>

                        <tr class="tr1 vt">
                            <td class="td1">主题图片上传</td>
                            <td class="td2">
                                <input type="radio" <?php if ($_smarty_tpl->tpl_vars['config']->value['lk_uploadtopicimg']==1) {?>checked<?php }?> name="config[lk_uploadtopicimg]" value="1" class="radio">&nbsp;开启
                                <input type="radio" <?php if ($_smarty_tpl->tpl_vars['config']->value['lk_uploadtopicimg']==0) {?>checked<?php }?> name="config[lk_uploadtopicimg]" value="0" class="radio">&nbsp;关闭
                            </td>
                            <td class="td2">
                                <div class="help_a" style="display: block;">
                                    [lk_uploadtopicimg]&nbsp;&nbsp;关闭：将无法上传主题展示图。
                                </div>
                            </td>
                        </tr>

                        <tr class="tr1 vt">
                            <td class="td1">附件防盗链</td>
                            <td class="td2">
                                <input type="radio" <?php if ($_smarty_tpl->tpl_vars['config']->value['lk_attoutlink']==1) {?>checked<?php }?> name="config[lk_attoutlink]" value="1" class="radio">&nbsp;开启
                                <input type="radio" <?php if ($_smarty_tpl->tpl_vars['config']->value['lk_attoutlink']==0) {?>checked<?php }?> name="config[lk_attoutlink]" value="0" class="radio">&nbsp;关闭
                            </td>
                            <td class="td2">
                                <div class="help_a" style="display: block;">
                                    [lk_attoutlink]&nbsp;&nbsp;开启：将禁止直接从地址栏输入附件地址访问，也不允许其他站点直接链接本站的附件地址。
                                </div>
                            </td>
                        </tr>

                        <tr class="tr1 vt">
                            <td class="td1">附件显示方式</td>
                            <td class="td2">
                                <input type="radio" <?php if ($_smarty_tpl->tpl_vars['config']->value['lk_attoutput']==1) {?>checked<?php }?> name="config[lk_attoutput]" value="1" class="radio">&nbsp;直接地址
                                <input type="radio" <?php if ($_smarty_tpl->tpl_vars['config']->value['lk_attoutput']==0) {?>checked<?php }?> name="config[lk_attoutput]" value="0" class="radio">&nbsp;程序输出
                            </td>
                            <td class="td2"><div class="help_a" style="display: block;">
                                [lk_attoutput]&nbsp;&nbsp;直接地址：将直接显示附件的真实地址。<br/>
                                程序输出：通过程序输出附件，同时开启防盗链功能可以实现附件保护功能。
                            </div></td>
                        </tr>

                        <tr class="tr1 vt">
                            <td class="td1">附件大于多少时使用直接地址输出</td>
                            <td class="td2">
                                <input class="input input_wa" value="<?php echo $_smarty_tpl->tpl_vars['config']->value['lk_outputmaxsize'];?>
" name="config[lk_outputmaxsize]">
                            </td>
                            <td class="td2"><div class="help_a" style="display: block;">
                                [lk_outputmaxsize]&nbsp;&nbsp;（单位：KB）当附件比较大时，直接输出可减少PHP进程消耗，减轻服务器负担。0为关闭此功能。

                            </div></td>
                        </tr>
                        <tr class="tr1 vt">
                            <td class="td1">附件存放目录</td>
                            <td class="td2">
                                <select name="config[lk_attachdir]">
                                    <?php echo smarty_function_html_options(array('options'=>$_smarty_tpl->tpl_vars['attachdirs']->value,'selected'=>$_smarty_tpl->tpl_vars['config']->value['lk_attachdir']),$_smarty_tpl);?>

                                </select>
                            </td>
                            <td class="td2"><div class="help_a" style="display: block;">
                                [lk_attachdir]&nbsp;&nbsp;本设置只针对新上传的附件，已有的附件不受影响。
                            </div></td>
                        </tr>
                        <tr class="tr1 vt">
                            <td class="td1">单个附件尺寸</td>
                            <td class="td2">
                                <input class="input input_wa" value="<?php echo $_smarty_tpl->tpl_vars['config']->value['lk_uploadmaxsize'];?>
" name="config[lk_uploadmaxsize]">
                            </td>
                            <td class="td2"><div class="help_a" style="display: block;">
                                [lk_uploadmaxsize]&nbsp;&nbsp;（单位：KB）最大值不能超过系统配置文件规定的大小，最大值一般为 2048 KB。
                            </div></td>
                        </tr>
                        <tr class="tr1 vt">
                            <td class="td1">一次上传附件数量</td>
                            <td class="td2">
                                <input class="input input_wa" value="<?php echo $_smarty_tpl->tpl_vars['config']->value['lk_attachnum'];?>
" name="config[lk_attachnum]">
                            </td>
                            <td class="td2"><div class="help_a" style="display: block;">
                                [lk_attachnum]&nbsp;&nbsp;此项设定可以允许会员批量上传图片。
                            </div></td>
                        </tr>
                        <tr class="tr1 vt">
                            <td class="td1">允许上传附件类型</td>
                            <td class="td2">
                                <input class="input input_wb" value="<?php echo $_smarty_tpl->tpl_vars['config']->value['lk_uploadfiletype'];?>
" name="config[lk_uploadfiletype]">
                            </td>
                            <td class="td2"><div class="help_a" style="display: block;">
                                [lk_uploadfiletype]&nbsp;&nbsp;多个附件后缀名之间请用半角逗号“,”分隔。
                            </div></td>
                        </tr>
                        <tr class="tr1 vt">
                            <td class="td1">水印类型</td>
                            <td class="td2">
                                <select name="config[lk_watertype]">
                                    <?php echo smarty_function_html_options(array('options'=>$_smarty_tpl->tpl_vars['watertypes']->value,'selected'=>$_smarty_tpl->tpl_vars['config']->value['lk_watertype']),$_smarty_tpl);?>

                                </select>
                            </td>
                            <td class="td2"><div class="help_a" style="display: block;">
                                [lk_watertype]&nbsp;&nbsp;上传的图片附件中添加图片或文字水印。
                            </div></td>
                        </tr>
                        <tr class="tr1 vt">
                            <td class="td1">水印文字</td>
                            <td class="td2">
                                <input class="input input_wa" value="<?php echo $_smarty_tpl->tpl_vars['config']->value['lk_watertext'];?>
" name="config[lk_watertext]">
                            </td>
                            <td class="td2"><div class="help_a" style="display: block;">
                                [lk_watertext]
                            </div></td>
                        </tr>
                        <tr class="tr1 vt">
                            <td class="td1">水印字体</td>
                            <td class="td2">
                                <input class="input input_wa" value="<?php echo $_smarty_tpl->tpl_vars['config']->value['lk_waterfont'];?>
" name="config[lk_waterfont]">
                            </td>
                            <td class="td2"><div class="help_a" style="display: block;">
                                [lk_waterfont]&nbsp;&nbsp;请上传相应的字体文件到/images/font目录，留空则为系统默认字体。
                            </div></td>
                        </tr>

                        <tr class="tr1 vt">
                            <td class="td1">水印字体大小</td>
                            <td class="td2">
                                <input class="input input_wa" value="<?php echo $_smarty_tpl->tpl_vars['config']->value['lk_waterfontsize'];?>
" name="config[lk_waterfontsize]">
                            </td>
                            <td class="td2"><div class="help_a" style="display: block;">
                                [lk_waterfontsize]&nbsp;&nbsp;（单位: 小时） 0为不限制。
                            </div></td>
                        </tr>

                        <tr class="tr1 vt">
                            <td class="td1">水印文字颜色</td>
                            <td class="td2">
                                <input readonly class="input input_wa" id="waterfontcolor" value="<?php echo $_smarty_tpl->tpl_vars['config']->value['lk_waterfontcolor'];?>
" name="config[lk_waterfontcolor]"/>
                                &nbsp;
                                <div id="color_picker" class="color_picker" style="background-color:<?php echo $_smarty_tpl->tpl_vars['config']->value['lk_waterfontcolor'];?>
"></div>

                            </td>
                            <td class="td2"><div class="help_a" style="display: block;">
                                [lk_waterfontcolor]&nbsp;&nbsp;格式："#"+6位颜色代码，如黑色：#000000
                            </div></td>
                        </tr>
                        <tr class="tr1 vt">
                            <td class="td1">水印图片</td>
                            <td class="td2">
                                <input class="input input_wa" value="<?php echo $_smarty_tpl->tpl_vars['config']->value['lk_waterimg'];?>
" name="config[lk_waterimg]">
                            </td>
                            <td class="td2"><div class="help_a" style="display: block;">
                                [lk_waterimg]&nbsp;&nbsp;默认图片为/images/water/mark.png，您可在此目录放置不同水印图片以实现不同的效果，<br/>
                                如需透明水印，请使用 GIF 格式的图片文件。
                            </div></td>
                        </tr>
                        <tr class="tr1 vt">
                            <td class="td1">水印透明度</td>
                            <td class="td2">
                                <input class="input input_wa" value="<?php echo $_smarty_tpl->tpl_vars['config']->value['lk_watertransition'];?>
" name="config[lk_watertransition]">
                            </td>
                            <td class="td2"><div class="help_a" style="display: block;">
                                [lk_watertransition]&nbsp;&nbsp;范围为 1~100 的整数，数值越小水印图片越透明。
                            </div></td>
                        </tr>
                        <tr class="tr1 vt">
                            <td class="td1">Jpeg水印质量</td>
                            <td class="td2">
                                <input class="input input_wa" value="<?php echo $_smarty_tpl->tpl_vars['config']->value['lk_waterquality'];?>
" name="config[lk_waterquality]">
                            </td>
                            <td class="td2"><div class="help_a" style="display: block;">
                                [lk_waterquality]&nbsp;&nbsp;范围为 0~100 的整数，数值越大结果图片效果越好，但尺寸也越大。
                            </div></td>
                        </tr>

                        <tr class="tr1 vt">
                            <td class="td1"> 水印处理条件</td>
                            <td class="td2">
                                <input style="width: 50px;" name="config[lk_waterminh]" value="<?php echo $_smarty_tpl->tpl_vars['config']->value['lk_waterminh'];?>
" class="input input_wc">高
                                <input style="width: 50px;" name="config[lk_waterminw]" value="<?php echo $_smarty_tpl->tpl_vars['config']->value['lk_waterminw'];?>
" class="input input_wc"> 宽
                            </td>
                            <td class="td2">
                                <div class="help_a" style="display: block;">
                                    [lk_waterminh][lk_waterminw] &nbsp;&nbsp;图片高度或者宽度小于此值将不做水印处理，0 为不限制。
                                </div>
                            </td>
                        </tr>

                        <tr class="tr1 vt">
                            <td class="td1"> 水印位置</td>
                            <td class="td2">
                                <div class="water">
                                    <?php  $_smarty_tpl->tpl_vars['v'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['v']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['range_position']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['v']->key => $_smarty_tpl->tpl_vars['v']->value) {
$_smarty_tpl->tpl_vars['v']->_loop = true;
?>
                                    <li>
                                        <label>
                                            <input type="radio"  <?php if ($_smarty_tpl->tpl_vars['config']->value['lk_waterposition']==$_smarty_tpl->tpl_vars['v']->value) {?> checked <?php }?>  value="<?php echo $_smarty_tpl->tpl_vars['v']->value;?>
" name="config[lk_waterposition]">&nbsp;#<?php echo $_smarty_tpl->tpl_vars['v']->value;?>

                                        </label>
                                    </li>
                                    <?php } ?>
                                </div>
                            </td>
                            <td class="td2"><div class="help_a" style="display: block;">
                                [lk_waterposition] &nbsp;&nbsp;水印添加的位置（3x3 共 9 个位置可选）。
                            </div></td>
                        </tr>

                        <tr class="tr1 vt">
                            <td align="right" class="td1">&nbsp;</td>
                            <td class="td2" colspan="2"><input type="hidden" name="cid" id="cid" value="25" />
                                <input type="hidden" name="submitted" id="submitted" value="save" />
                                <span id="lk_submit"><a href="javascript:;" id="submitFrom">提交</a></span>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </form>
        </div>

        <script type="text/javascript">
            $(document).ready(function(){
                $('#color_picker').ColorPicker({
                    onShow: function (colpkr) {
                        $(colpkr).fadeIn(500);
                        return false;
                    },
                    onHide: function (colpkr) {
                        $(colpkr).fadeOut(500);
                        return false;
                    },
                    onChange: function (hsb, hex, rgb) {
                        $('#color_picker').css('backgroundColor', '#' + hex);
                        $('#waterfontcolor').val('#' + hex);
                    },
                    onSubmit: function(hsb, hex, rgb,el){
                        $(el).ColorPickerHide();
                    }
                });

                $('#waterfontcolor').ColorPicker({
                    onSubmit: function(hsb, hex, rgb, el) {
                        $(el).val('#'+hex);
                        $('#color_picker').css('backgroundColor', '#'+hex);
                        $(el).ColorPickerHide();
                    },
                    onBeforeShow: function () {
                        $(this).ColorPickerSetColor(this.value);
                    }
                }).bind('keyup', function(){
                    $(this).ColorPickerSetColor(this.value);
                });
            });
        </script>

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
                    $('#attachmentFrom').ajaxSubmit(options);
                    return false;
                });
            });
        </script>
    </div>
</body>
</html><?php }} ?>
