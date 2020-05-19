/**
 * Created by junyi on 2017/5/27.
 */
$(function() {
	$(".swiper-container").swiper({
		loop: true,
		autoplay: 3000
	});
});

function choose(e) {
	$(".weui-navbar__item").removeClass("weui_bar__item_on");
	$(e).addClass("weui_bar__item_on");
}