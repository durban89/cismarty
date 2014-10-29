
$(function() {
    //表单验证
    $("#submitFrom").click(function() {
        var title = $("#title").val();
        if (title == "") {
            altTip('请输入信息标题。', 'error', function() {
            });
            return false;
        }
        var type = $(":radio[name='type'][checked]").val();
        if (type == 1) {
            var content = $('#content').val();
            if (!content) {
                altTip('请输入信息内容。', 'error', function() {
                });
                return false;
            }
        } else if (type == 2) {
            var news_len = $(":checkbox[name='news_id[]']").length;
            if (news_len < 1) {
                altTip('请选择信息。', 'error', function() {
                });
                return false;
            }
        }
        var options = {
            beforeSubmit: function() {
            },
            success: function(txt) {
                if (txt == 1) {
                    altTip('信息更新成功！', 'succeed', function() {
                        var cate = $('#cate').val();
                        location.href = "/service/reply/home/index/" + cate + "/";
                    });
                    return false;
                } else {
                    altTip('信息更新失败！', 'error', function() {
                    });
                    return false;
                }
            }
        };
        $('#customerForm').ajaxSubmit(options);
        return false;
    });

    $('#type1').click(function() {
        $('#text').show();
        $('#news').hide();
    });
    $('#type2').click(function() {
        $('#text').hide();
        $('#news').show();
    });
    $(":radio[name='type'][checked]").trigger('click');

    $('.news_id').click(function() {
        var id = $(this).val(), title = $(this).parent().attr('title'), checked = $(this).attr('checked');
        if (checked) {
            $('#selected_list').append("<label title='" + title + "' id='news_" + id + "'><input type='checkbox' checked value='" + id + "'>" + title + "</label>");
        } else {
            $('#selected_list').find('#news_' + id).remove();
        }
    });

    $('#selected_list').find('input').live('click', function() {
        var id = $(this).val();
        $(this).parent().remove();
        $('.news_id').each(function() {
            if ($(this).val() == id) {
                $(this).attr('checked', false);
            }
        });
    });
});


