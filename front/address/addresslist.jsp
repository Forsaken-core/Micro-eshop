<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>添加地址</title>
<meta name="viewport"
	content="width=device-width,initial-scale=1,user-scalable=0">
<link rel="stylesheet" href="../css/weui.min.css" />

</head>

<body>
	<!--地址列表-->
	<div class="contentBox">
		<div class="weui-cells weui-cell_access">
			<c:forEach items="${addresslist }" var="address">
				<a href="AddressUpdate?id=${address.id }">
					<div class="weui-cell  ">

						<div class="weui-cell__hd">
							<img src="../img/bear.jpg" style="width: 45px; height: 45px;">
						</div>
						<div class="weui-cell__bd">
							<p>${address.contact }</p>
						</div>
						<div class="weui-cell__ft">${address.street }</div>

					</div>
				</a>
			</c:forEach>

		</div>
	</div>
	<a class="weui-btn  weui-btn_primary" type="button"
		href="AddressAdd.jsp">添加新地址</a>
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
	<script type="text/javascript" src="../js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="../js/zepto.min.js"></script>

</body>
</html>