<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>添加地址</title>
<meta name="viewport"
	content="width=device-width,initial-scale=1,user-scalable=0">
<link rel="stylesheet" href="../css/weufffi.min.css" />
<link rel="stylesheet" href="../css/jquery-weui.min.css" />

</head>

<body>
	<!--地址列表-->
	<div class="contentBox">
		<form action="AddressUpdate.do" method="post">
			<div class="weui-cells weui-cells_form">
				<div class="weui-cell">
					<div class="weui-cell__hd">
						<label class="weui-label">手机号</label>
					</div>
					<div class="weui-cell__bd">
						<input name="mobile" class="weui-input" type="number"
							placeholder="请输入手机号" value="${address.mobile}">

					</div>
				</div>


				<input name="mbr_id" class="weui-input" type="hidden"
					value="${user.id }">


				<div class="weui-cell">
					<div class="weui-cell__hd">
						<label class="weui-label">联系人</label>
					</div>
					<div class="weui-cell__bd">
						<input name="contact" class="weui-input" type="text"
							placeholder="请输入联系人" value="${address.contact}">

					</div>
				</div>
				<!-- <div class="weui-cell">
						<div class="weui-cell__hd"><label for="" class="weui-label">日期</label></div>
						<div class="weui-cell__bd">
							<input class="weui-input" type="date" value="">
						</div>
					</div>

					<div class="weui-cell weui-cell_vcode">
						<div class="weui-cell__hd"><label class="weui-label">验证码</label></div>
						<div class="weui-cell__bd">
							<input class="weui-input" type="number" placeholder="请输入验证码">
						</div>
						<div class="weui-cell__ft">
							<img class="weui-vcode-img" src="../img/vcode.jpg">
						</div>
	</div> -->
				<div class="weui-cell">
					<div class="weui-cell__hd">
						<label class="weui-label">省/市/区</label>
					</div>
					<div class="weui-cell__bd">
						<input class="weui-input" type="text" id="city-picker"
							name="address_city" value="${address.address_city}">
					</div>
				</div>

				<div class="weui-cell">
					<div class="weui-cell__hd">
						<label class="weui-label">邮编</label>
					</div>
					<div class="weui-cell__bd">
						<input name="zipcode" class="weui-input" type="number"
							placeholder="请输入邮编" value="${address.zipcode}">

					</div>
				</div>

				<input hidden="hidden" id="default_value" name="default_value"
					type="radio" value="0" checked="checked" />
				<div class="weui-cell weui-cell_switch">
					<div class="weui-cell__bd">是否启用</div>
					<div class="weui-cell__ft">
						<input id="button1" name="button1" class="weui-switch"
							type="checkbox">
					</div>
				</div>

				<div class="weui-cell">
					<div class="weui-cell__bd">
						<input name="street" class="weui-input" type="text"
							placeholder="请输入详细地址" value="${address.street }">
					</div>
				</div>

			</div>
	</div>


	<button class="weui-btn  weui-btn_primary" type="submit">修改</button>
	</form>
	<div class=" weui-tabbar" style="position: fixed;">
		<!--底部菜单栏-->
		<a href="../home.jsp " class="weui-tabbar__item weui-bar__item--on">

			<div class="weui-tabbar__icon">
				<img src="../img/icon_nav_button.png" alt="">
			</div>
			<p class="weui-tabbar__label">首页</p>
		</a> <a href="../category.jsp" class="weui-tabbar__item">
			<div class="weui-tabbar__icon">
				<img src="../img/icon_nav_msg.png" alt="">
			</div>
			<p class="weui-tabbar__label">分类</p>
		</a> <a href="../mng/shopcar.jsp" class="weui-tabbar__item">
			<div class="weui-tabbar__icon">
				<img src="../img/icon_nav_article.png" alt="">
			</div>
			<p class="weui-tabbar__label">购物车</p>
		</a> <a href="../mng/me.jsp" class="weui-tabbar__item">
			<div class="weui-tabbar__icon">
				<img src="../img/icon_nav_cell.png" alt="">
			</div>
			<p class="weui-tabbar__label">我</p>
		</a>
	</div>
	<script type="text/javascript" src="../js/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="../js/zepto.min.js"></script>
	<script type="text/javascript" src="../js/jquery-weui.min.js"></script>
	<script type="text/javascript" src="../js/city-picker.min.js"></script>
	<script type="text/javascript" src="../js/productDetail.js"></script>

	<script type="text/javascript">
		$("#city-picker").cityPicker({});
	</script>

</body>
</html>