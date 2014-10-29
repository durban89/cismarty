// JavaScript Document
(function($) {
    $.fn.extend({
        Scroll: function(opt, callback) {
            if (!opt)
                var opt = {};
            var _btnUp = $("#" + opt.up); //Shawphy:向上按钮 
            var _btnDown = $("#" + opt.down); //Shawphy:向下按钮 
            var _this = this.eq(0).find("ul:first");
            var lineH = _this.find("li:first").height(); //获取行高 
            var line = opt.line ? parseInt(opt.line, 10) : parseInt(this.height() / lineH, 10); //每次滚动的行数，默认为一屏，即父容器高度 
            var speed = opt.speed ? parseInt(opt.speed, 10) : 200; //卷动速度，数值越大，速度越慢（毫秒） 
            var m = line; //用于计算的变量 
            var count = _this.find("li").length; //总共的<li>元素的个数 
            var upHeight = line * lineH;
            if (m == 1) {
                $("#topArrow").hide();
            }
            function scrollUp() {//往下滚
                if (!_this.is(":animated")) { //判断元素是否正处于动画，如果不处于动画状态，则追加动画。 
                    if (m < count) { //判断 m 是否小于总的个数 
                        if (m == 1) {
                            m += line;
                            _this.animate({marginTop: "-=" + (upHeight + 10) + "px"}, speed);
                        } else {
                            m += line;
                            _this.animate({marginTop: "-=" + upHeight + "px"}, speed);
                        }
                    }
                    if (m > 1) {
                        document.getElementById("topArrow").style.display = "block";
                        //$("#topArrow").show();
                    }
                    if (m == 8) {
                        document.getElementById("bottomArrow").style.display = "none";
                        //$("#bottomArrow").hide();
                    }
                }
            }
            function scrollDown() {//往下滚
                if (!_this.is(":animated")) {
                    if (m > line) { //判断m 是否大于一屏个数 
                        if (m == 2) {
                            m -= line;
                            _this.animate({marginTop: "+=" + (upHeight + 10) + "px"}, speed);
                        } else {
                            m -= line;
                            _this.animate({marginTop: "+=" + upHeight + "px"}, speed);
                        }

                    }
                    if (m < 8) {
                        document.getElementById("bottomArrow").style.display = "block";
                        //$("#bottomArrow").show();
                    }
                    if (m == 1) {
                        document.getElementById("topArrow").style.display = "none";
                        // $("#topArrow").hide();
                    }
                }
            }
            _btnUp.bind("click", scrollUp);
            _btnDown.bind("click", scrollDown);
        }
    });
})(jQuery);

var uc_basic = {
    //修改用户密码
    editpass: function() {
        art.dialog.open('/admin/admincp.php?action=account&admintype=edit&', {
            id: "editpass",
            title: "修改登录密码",
            height: 240,
            width: 320,
            lock: true
        });
        return false;
    },
    //修改密码，提交操作
    chkeditpass: function() {
        var password = $("#password").val();
        var repass = $("#repass").val();
        if (!password) {
            showMsg('请输入新密码！');
            return false;
        } else {
            if (repass == '') {
                showMsg('请重复上面密码！');
                return false;
            }
            if (password != repass) {
                showMsg('对不起，两次的密码不一致，请重新输入！');
                return false;
            }
        }
        $.ajax({
            type: 'get',
            url: "/ajax/admin/",
            data: {act: "editpass", password: password},
            timeout: 90000,
            beforeSend: function() {
            },
            dataType: 'json',
            success: function(o) {
                refreshs('恭喜您，密码修改成功，请重新登录！', '/admin/login/');
                return false;
            },
            complete: function() {
            },
            error: function() {
            }
        });
    },
    //修改密码，提交操作
    chkgetpass: function() {
        var mobile = $("#phoneNum").val();
        var mobilechkcode = $("#chkmobliecode").val();
        if (!IsMobile(mobile)) {
            art.dialog.tips("<span style='font-size:12px;'>请填写您登录的手机号码</span>");
            return false;
        }
        if (mobilechkcode == "") {
            art.dialog.tips("<span style='font-size:12px;'>请输入您手机收到的验证码！</span>");
            return false;
        }
        $.ajax({
            type: 'get',
            url: "/ajax/admin/",
            data: {act: "sendpassword", mobile: mobile, mobilechkcode: mobilechkcode},
            timeout: 90000,
            beforeSend: function() {
            },
            dataType: 'json',
            success: function(o) {
                //art.dialog.tips(o.data);	
                //art.dialog.tips(o.data);	
                //top.location.href = '/admin/login/';
                refreshs(o.data, '/admin/login/');
                return false;
            },
            complete: function() {
            },
            error: function() {
            }
        });
    }

}

$(function() {
    $("#edpass").click(function() {
        uc_basic.editpass();
    });
    $("#edprofile").click(function() {
        uc_basic.editprofile();
    });
    $(".cateChoose").find("a").click(function() {
        var object = $(this).attr("rel");
        $(this).siblings().removeClass("on");
        $(this).addClass("on");
        $(".inputBoxs").hide();
        $("#" + object).css("display", "block");
    });
    $("#saveProfiles").click(function() {
        var options = {
            success: function() {
                art.dialog.tips('<span style="font-size:12px;color:green;">恭喜您，操作成功！</span>');
                setTimeout("window.top.location.reload()", 1000);
            }
        };
        $('#editprofile').ajaxSubmit(options);
        return false;
    });
    $("#getPassWordBtn").click(function() {
        uc_basic.chkgetpass();
    });
    
});