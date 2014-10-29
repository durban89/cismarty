// JavaScript Document
var news = {
    //验证机构添加金融产品
    chkAddGoods: function(formName) {
        var title = $("#title").val();
        if (title == "") {
            altTip("请输入标题！", 'error', function() {
            });
            return false;
        }
        var path = $("#path").val();
        if (path == "") {
            altTip("请输入图片地址或选择需要上传的图片！", 'error', function() {
            });
            return false;
        }
        var contents = $("#contents").val();
        if (contents == "") {
            var txt = "对不起，";
            altTip("请输入信息详情！", 'error', function() {
            });
            return false;
        }

        var options = {
            beforeSubmit: function() {
            },
            success: function(txt) {
                if (txt == 1) {
                    altTip('信息更新成功！', 'succeed', function() {
                        location.href='/service/news/home/';
                    });
                    return false;
                } else {
                    altTip('信息更新失败！', 'error', function() {
                    });
                    return false;
                }
            }
        };
       $('#' + formName).ajaxSubmit(options);
        return false;
    },
    //删除资讯
    del: function(id) {
        art.dialog.confirm('<span style="font-size:12px;color:red;">您确认要删除此资讯吗？</span>', function() {
            $.ajax({
                type: 'get',
                url: "/service/news/home/del/",
                data: {id: id},
                timeout: 90000,
                beforeSend: function() {
                    $("#itemListBoxs").prepend('<img src="/static/images/loading.gif" align="absmiddle"> 数据加载中......');
                },
                dataType: 'json',
                success: function(o) {
                    if (o.isok) {
                        art.dialog.tips("<b style='font-size:12px;color:Green;'>" + o.data + "</b>");
                        setTimeout("window.parent['targetBoxs'].location.reload()", 1000);
                        return false;
                    } else {
                        art.dialog.tips("<b style='font-size:12px;color:red;'>" + o.data + "</b>");
                        return false;
                    }
                },
                complete: function() {
                },
                error: function() {
                }
            });
        }, function() {
        });
    }


}
