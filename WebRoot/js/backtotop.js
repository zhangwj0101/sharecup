(function() {
	var $backToTopTxt = "返回顶部", $backToTopEle = $("<div class='backToTop' style='display: none;width: 18px;line-height: 1.2;padding: 5px 0;background-color: #000;color: #fff;font-size: 12px;text-align: center;position: fixed;_position: absolute;right: 10px;bottom: 100px;_bottom: 'auto';cursor: pointer;opacity: .6;filter: Alpha(opacity = 60);'></div>").appendTo($("body"))
		.text($backToTopTxt).attr("title", $backToTopTxt).click(function() {
			$("html, body").animate({ scrollTop: 0 }, 120);
	}), $backToTopFun = function() {
		var st = $(document).scrollTop(), winh = $(window).height();
		(st > 0)? $backToTopEle.show(): $backToTopEle.hide();	
		//IE6下的定位
		if (!window.XMLHttpRequest) {
			$backToTopEle.css("top", st + winh - 166);	
		}
	};
	$(window).bind("scroll", $backToTopFun);
	$(function() { $backToTopFun(); });
})();