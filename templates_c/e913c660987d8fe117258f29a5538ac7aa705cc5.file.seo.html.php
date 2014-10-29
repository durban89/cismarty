<?php /* Smarty version Smarty-3.1.17, created on 2014-09-25 08:17:32
         compiled from "D:\wamp\www\test.cismarty.dev\templates\admin\setting\seo.html" */ ?>
<?php /*%%SmartyHeaderCode:160445423cf9c2f3e47-47442964%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'e913c660987d8fe117258f29a5538ac7aa705cc5' => 
    array (
      0 => 'D:\\wamp\\www\\test.cismarty.dev\\templates\\admin\\setting\\seo.html',
      1 => 1411626782,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '160445423cf9c2f3e47-47442964',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'actionurl' => 0,
    'config' => 0,
    'IN_REWRITE' => 0,
    'rewriteenable_1' => 0,
    'rewriteenable_0' => 0,
    'extenable_1' => 0,
    'extenable_0' => 0,
    'IN_SEO' => 0,
    'seoenable_1' => 0,
    'seoenable_0' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.17',
  'unifunc' => 'content_5423cf9c36cfe5_63437214',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5423cf9c36cfe5_63437214')) {function content_5423cf9c36cfe5_63437214($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate ("admin/public/basic.html", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<body>
    <div class="manageBoxs">
        <h1><i></i>系统设置 &raquo; SEO设置</h1>
        <div class="formBoxs admin_table">
            <form name="FORM" method="post" action="<?php echo $_smarty_tpl->tpl_vars['actionurl']->value;?>
" id="basicFrom" enctype="multipart/form-data">
                <table width="100%" border="0" cellspacing="1" cellpadding="5">	
                    <tr class="tr2 td_bgB">
                        <td width="15%">设置说明</td>
                        <td width="45%">设置内容</td>		
                        <td>调用变量</td>
                    </tr>
                    <tr class="tr1 vt" style="display:none;">
                        <td class="td1">URL重写扩展名</td>
                        <td class="td2">
                            <?php echo $_smarty_tpl->tpl_vars['config']->value['lk_rewriteext'];?>

                        </td>
                        <td class="td2"><div class="help_a" style="display: block;">
                                [lk_rewriteext]&nbsp;&nbsp;只针对rewrite开启的情况，默认为 html。如果设置其他后缀名请重新设定url重写配置文件。
                            </div></td> 
                    </tr>

                    <?php if ($_smarty_tpl->tpl_vars['IN_REWRITE']->value) {?>
                    <tr class="tr1 vt" style="display:none;">
                        <td class="td1">是否开启伪静态</td>
                        <td class="td2">
                            <input type="radio" <?php echo $_smarty_tpl->tpl_vars['rewriteenable_1']->value;?>
 name="config[lk_rewriteenable]" value="1" class="radio">&nbsp;开启
                            <input type="radio" <?php echo $_smarty_tpl->tpl_vars['rewriteenable_0']->value;?>
 name="config[lk_rewriteenable]" value="0" class="radio">&nbsp;关闭             
                        </td>
                        <td class="td2"><div class="help_a" style="display: block;">
                                [lk_rewriteenable]&nbsp;&nbsp;
                            </div></td>
                    </tr>
                    <?php }?>

                    <tr class="tr1 vt" style="display:none;">
                        <td class="td1">伪静态是否添加扩展名</td>
                        <td class="td2">
                            <input type="radio" <?php echo $_smarty_tpl->tpl_vars['extenable_1']->value;?>
 name="config[lk_extenable]" value="1" class="radio">&nbsp;开启
                            <input type="radio" <?php echo $_smarty_tpl->tpl_vars['extenable_0']->value;?>
 name="config[lk_extenable]" value="0" class="radio">&nbsp;关闭             
                        </td>
                        <td class="td2"><div class="help_a" style="display: block;">
                                [lk_extenable]&nbsp;&nbsp;如果选择添加扩展，将在每个链接后加扩展名，否则所有链接将以目录形式展现。<br/>
                                目录形式：show/1，连接形式：show/1.html
                            </div></td>
                    </tr>

                    <tr class="tr1 vt" style="display:none;">
                        <td class="td1">分类伪静态目录</td>
                        <td class="td2">
                            <input name="config[lk_chtmldir]" value="<?php echo $_smarty_tpl->tpl_vars['config']->value['lk_chtmldir'];?>
" class="input input_wa"> 
                        </td>
                        <td class="td2"><div class="help_a" style="display: block;">
                                [lk_chtmldir]&nbsp;&nbsp;分类全局伪静态目录，此参数需要伪静态规则配合。默认为：category。
                            </div></td>
                    </tr>

                    <tr class="tr1 vt" style="display:none;">
                        <td class="td1">主题伪静态目录</td>
                        <td class="td2"> 
                            <input name="config[lk_shtmldir]" value="<?php echo $_smarty_tpl->tpl_vars['config']->value['lk_shtmldir'];?>
" class="input input_wa">                                            
                        </td>
                        <td class="td2"><div class="help_a" style="display: block;">
                                [lk_shtmldir]&nbsp;&nbsp; 主题伪静态目录。
                            </div></td>
                    </tr>

                    <?php if ($_smarty_tpl->tpl_vars['IN_SEO']->value) {?>
                    <tr class="tr1 vt" style="display:none;">
                        <td class="td1">是否开启SEO模块</td>
                        <td class="td2">
                            <input type="radio" <?php echo $_smarty_tpl->tpl_vars['seoenable_1']->value;?>
 name="config[lk_seoenable]" value="1" class="radio">&nbsp;开启
                            <input type="radio" <?php echo $_smarty_tpl->tpl_vars['seoenable_0']->value;?>
 name="config[lk_seoenable]" value="0" class="radio">&nbsp;关闭             
                        </td>
                        <td class="td2"><div class="help_a" style="display: block;">
                                [lk_seoenable]&nbsp;&nbsp;
                            </div></td>
                    </tr>
                    <?php }?>
                    <tr class="tr1 vt">
                        <td class="td1">网站标题（Title）</td>
                        <td class="td2">
                            <textarea name="config[lk_seotitle]" class="textarea"><?php echo $_smarty_tpl->tpl_vars['config']->value['lk_seotitle'];?>
</textarea>                        
                        </td>
                        <td class="td2"><div class="help_a" style="display: block;">
                                [lk_seotitle] &nbsp;&nbsp;显示网站标题，如果有多个关键字，建议用 "|"、","(不含引号) 等符号分隔。			        
                            </div>
                            </div></td>
                    </tr>	

                    <tr class="tr1 vt">
                        <td class="td1">网站关键字（Keywords）</td>
                        <td class="td2">
                            <textarea name="config[lk_seokeywords]" class="textarea"><?php echo $_smarty_tpl->tpl_vars['config']->value['lk_seokeywords'];?>
</textarea>  
                        </td>
                        <td class="td2"><div class="help_a" style="display: block;">				
                                [lk_seokeywords]&nbsp;&nbsp;显示网站内容的关键字，多个关键字间请用半角逗号 "," 隔开。
                            </div></td>
                    </tr>
                    <tr class="tr1 vt">
                        <td class="td1">网站描述（Description）</td>
                        <td class="td2">  
                            <textarea class="textarea" name="config[lk_seodescription]"><?php echo $_smarty_tpl->tpl_vars['config']->value['lk_seodescription'];?>
</textarea>       
                        </td>              
                        <td class="td2"><div class="help_a" style="display: block;">
                                [lk_seodescription]&nbsp;&nbsp;网站描述主旨鲜明、简单明了,要有创意、突出热点,多样化、独立化,出现关键词、优化词
                            </div></td>
                    </tr>
                    <tr class="tr1 vt" style="display:none;">
                        <td class="td1">其他头部信息</td>
                        <td class="td2">               
                            <textarea class="textarea" name="config[lk_seomore]"><?php echo $_smarty_tpl->tpl_vars['config']->value['lk_seomore'];?>
</textarea>  
                        </td>              
                        <td class="td2"><div class="help_a" style="display: block;">
                                [lk_seomore]&nbsp;&nbsp;在 <head></head> 中添加其他的 html 代码。
                            </div></td>
                    </tr>
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
        });
    </script>
</body>
</html><?php }} ?>
