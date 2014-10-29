/**
 * Created by Durban on 14-8-19.
 */
$(document).ready(function() {
    $(".kzt_down span").click(function(){
        $(this).siblings(".ktc").toggle();
    })
    if(typeof($.fn.fancybox)=='function'){
        $(".contFancybox").fancybox({
            padding:15
        });
        $(".imgsFancybox").fancybox({
            padding:15,
            openEffect:"elastic",
            openSpeed:150,
            closeEffect:"elastic",
            closeSpeed:150,
            closeClick:true
        });
    }

    $(".mtf5_1").click(function(){
        $('#loginDialog').hide();
        $('#registerDialog').hide();
        $('#forgetDialog').hide();
    });

    $(".h55_pt10").find(".lh42_w49").click(function(){
        $(this).addClass("fh42_w49").siblings(".lh42_w49").removeClass("fh42_w49");
        $(".qhuan").find("li").eq($(this).index()).show().siblings("li").hide();
    });

    $(".p1_bk1").find("img").attr("src",$(".ul_img").find("li").eq(0).find("img").attr("src"));
    $(".ul_img").find("li").click(function(){
        $(".p1_bk1").find("img").attr("src",$(this).find("img").attr("src"));
    });

    /***/
    $(".dh ul li").hover(function(){
        $(this).find("div").show();
    },function(){
        $(this).find("div").hide();
    });
    $(".dj_yc").click(function(){
        $(".shifyc").toggle();
    });

    $(".w38_1").click(function(){
        $(this).toggleClass("w38_2");
        if(this.className=="w38_1"){
            $(".fixed_5").animate({right:-282},200);
        }else{
            $(".fixed_5").animate({right:0},200);
        }
    });

});