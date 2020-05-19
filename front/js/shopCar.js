/**
 * Created by on 2017/5/27.
 */

function FloatAdd(arg1, arg2) {
	var r1, r2, m;
	try {
		r1 = arg1.toString().split(".")[1].length
	} catch(e) {
		r1 = 0
	}
	try {
		r2 = arg2.toString().split(".")[1].length
	} catch(e) {
		r2 = 0
	}
	m = Math.pow(10, Math.max(r1, r2));
	return(arg1 * m + arg2 * m) / m;
}
// 乘法
function FloatMul(arg1, arg2) {
	var m = 0,
		s1 = arg1.toString(),
		s2 = arg2.toString();
	try {
		m += s1.split(".")[1].length
	} catch(e) {}
	try {
		m += s2.split(".")[1].length
	} catch(e) {}
	return Number(s1.replace(".", "")) * Number(s2.replace(".", "")) /
		Math.pow(10, m);
}
/**
 * 增加商品数量
 * 
 * @param e
 */
function addNum(e, id, path) {
	
	var value = $(e).parent().find("input").val();
	$(e).parent().find("input").val(++value);
	countInfo();
	
	var url = path + "/front/mng/ShopCarnum?id=" + id + "&num=" +
		$(e).parent().find("input").val();
	$.ajax({
		type: 'post',
		url: url,
		dataType: "JSON",
		success: function(date) {
			if(date.code == 200) {
				countInfo();
			} else {
				alert("数量更改失败，请重试！");
			}
		}
	});
	

}

/**
 * 减少商品数量
 * 
 * @param e
 */
function reduceNum(e, id, path) {
	var value = $(e).parent().find("input").val();
	if(--value > 0) {
		$(e).parent().find("input").val(value);
		countInfo();

		/*
				var url = path + "/front/mng/shopcarnum?id=" + id + "&num=" +
					$(e).parent().find("input").val();
				$.ajax({
					type: 'post',
					url: url,
					dataType: "JSON",
					success: function(date) {
						if(date.code == 200) {
							countInfo();
						} else {
							alert("数量更改失败，请重试！");
						}
					}
				});*/
	}

}
/**
 * 选中或取消选中某件商品
 * 
 * @param e
 */
function chooseItem(e, id, path) {
	if($(e).attr("choose") == "true") {
		$(e).find(".shopCarItemChooseed").css({
			display: "none"
		});
		$(e).find(".shopCarItemUnchoose").css({
			display: "block"
		});
		$(e).attr("choose", false);
		updatesign(id, path, false);
	} else {
		$(e).find(".shopCarItemChooseed").css({
			display: "block"
		});
		$(e).find(".shopCarItemUnchoose").css({
			display: "none"
		});
		$(e).attr("choose", true);
		updatesign(id, path, true);
	}
	isAllChoose();
}

function updatesign(id, path, sign) {
	var url = path + "/front/mng/shopsign?id=" + id + "&sign=" + sign;
	$.ajax({
		type: 'post',
		url: url,
		dataType: "JSON",
		success: function(date) {
			if(date.code != 200) {
				alert("选中失败，请重试！");
			}
		}
	});
}
/**
 * 全选或取消全选
 * 
 * @param e
 */
function chooseAll(e) {
	if($(e).attr("choose") == "true") {
		$(".shopCarToolsLeftChecked").css({
			display: "none"
		});
		$(".shopCarToolsLeftUnchecked").css({
			display: "block"
		});
		$(e).attr("choose", "false");
		for(var i = 0; i < $(".shopCarItemChooseBtn").length; i++) {
			$($(".shopCarItemChooseBtn")[i]).attr("choose", "false");
			$($(".shopCarItemChooseBtn")[i]).find(".shopCarItemChooseed").css({
				display: "none"
			});
			$($(".shopCarItemChooseBtn")[i]).find(".shopCarItemUnchoose").css({
				display: "block"
			});
		}
	} else if($(e).attr("choose") == "false") {
		$(".shopCarToolsLeftChecked").css({
			display: "block"
		});
		$(".shopCarToolsLeftUnchecked").css({
			display: "none"
		});
		$(e).attr("choose", "true");
		for(var i = 0; i < $(".shopCarItemChooseBtn").length; i++) {
			$($(".shopCarItemChooseBtn")[i]).attr("choose", "true");
			$($(".shopCarItemChooseBtn")[i]).find(".shopCarItemChooseed").css({
				display: "block"
			});
			$($(".shopCarItemChooseBtn")[i]).find(".shopCarItemUnchoose").css({
				display: "none"
			});
		}
	}
	countInfo();
}
/**
 * 判断是否要选中
 * 
 * @returns {boolean}
 */
function isAllChoose() {
	countInfo();
	for(var i = 0; i < $(".shopCarItemChooseBtn").length; i++) {
		if($($(".shopCarItemChooseBtn")[i]).attr("choose") == "false") {
			$(".shopCarToolsLeft").attr("choose", "false");
			$(".shopCarToolsLeftChecked").css({
				display: "none"
			});
			$(".shopCarToolsLeftUnchecked").css({
				display: "block"
			});
			return false;
		}
	}
	$(".shopCarToolsLeft").attr("choose", "true");
	$(".shopCarToolsLeftChecked").css({
		display: "block"
	});
	$(".shopCarToolsLeftUnchecked").css({
		display: "none"
	});
}
/**
 * 统计购物车选中商品的信息
 */
function countInfo() {
	var allProduct = 0;
	for(var i = 0; i < $(".shopCarItemChooseBtn").length; i++) {
		if($($(".shopCarItemChooseBtn")[i]).attr("choose") == "true") {
			var count = $($(".shopCarItemChooseBtn")[i]).parent().find(
				".shopCarItemInfoToolsInput").val();
			var price = $($(".shopCarItemChooseBtn")[i]).parent().find(
				".shopCarItemInfoPrice>span").html();
			var singlePrice = FloatMul(parseFloat(count), parseFloat(price))
				.toFixed(2);
			allProduct = FloatAdd(parseFloat(allProduct),
				parseFloat(singlePrice)).toFixed(2);
			console.log("数量:" + count + " x 单价:" + price + "=" + singlePrice +
				" 总计:" + allProduct);
		}
	}
	$("#allprice1").text(allProduct);
	$("#allprice").val(allProduct);
	
}

function removeItem(e) {
	$(e).parents(".shopCarItem").remove();
}