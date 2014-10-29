$(function(){
	$(".knavi li").hover(function(){
		var kthis = $(this);
		kthis.addClass("cur");
		kthis.find("span").stop().animate({height:72},150);
	},function(){
		var kthis = $(this);
		kthis.removeClass("cur");
		kthis.find("span").stop().animate({height:0},150);
	})
	$(".knavi li.kxlcd").hover(function(){
		$(this).find(".ktc").show();
		$(".kheader").stop().animate({height:123},150);
	},function(){
		$(this).find(".ktc").hide();
		$(".kheader").stop().animate({height:77},150);
	})
	$(".ksearch img").click(function(){
		$(this).siblings("form").toggle();
	})
});

