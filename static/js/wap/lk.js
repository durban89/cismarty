$(function(){		
	$(".ktmenu span").click(function(){
		$(".ktmenu .ktc").toggle();
	})
	$(".kitop_menu span").click(function(){
		$(".kitop_menu span").toggleClass("cur");
		$(".kitop_menu .ktc").toggle();
	})	
	if(typeof($.fn.fancybox)=='function'){
		$(".contFancybox").fancybox({
			padding:0
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

//    $(window).scroll(function(){
//        $("#fixnav").css({top: window.innerHeight + window.scrollY - $("#fixnav").outerHeight() });
//    });

//    $(window).onload(function(){
//        document.addEventListener('touchmove', checkBar);
//        document.addEventListener('scroll', checkBar);
//    });
});
