<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>WeUIApp</title>
<meta name="viewport"
	content="width=device-width,initial-scale=1,user-scalable=0">
<link rel="stylesheet" href="../css/weui.min.css" />
<style type="text/css">
#thumail {
	width: 76px;
	height: 76px;
	position: absolute;
	top: 6%;
	left: 50%;
	margin-left: -40px;
	border-radius: 40px;
}

#btn {
	position: absolute;
	top: 18%;
	text-align: center;
	left: 50%;
	margin-left: -40px;
	border-radius: 6px;
	
}

a {
	color: green;
}
</style>
</head>

<body>
	<div class="contentBox">

		<!--头像-->
		<img src="../img/minions.jpg" id="thumail" />
		
		<img src="../img/me_bg.jpg" style="width: 100%; height: 30%;" />
		<!--点击登录-->
		<div id="btn">
			<h4 style="color:gainsboro; border">${user.username },欢迎登陆</h4>
			<a style="width:150px;height:45px;" href="../login.html" class="weui-btn weui-btn_plain-primary" id="loginbtn">退出登录</a>
		</div>

		<!--列表-->
		<div class="weui-cells">
			<a class="weui-cell weui-cell_access" href="orderList.jsp">
				<div class="weui-cell-hd">
					<img src="../img/icon_nav_button.png"
						style="width: 30px; height: 30px;" />
				</div>
				<div class="weui-cell__bd">
					<p>&nbsp;我的订单</p>
				</div>
				<div class="weui-cell__ft"></div>
			</a> <a class="weui-cell weui-cell_access"
				href="FindAddress?mbr_id=${user.id }">
				<div class="weui-cell-hd">
					<img src="../img/icon_nav_article.png"
						style="width: 30px; height: 30px;" />
				</div>
				<div class="weui-cell__bd">
					<p>&nbsp;收货地址</p>
				</div>
				<div class="weui-cell__ft"></div>
			</a> <a class="weui-cell weui-cell_access" href="javascript:;">
				<div class="weui-cell-hd">
					<img src="../img/icon_nav_icons.png"
						style="width: 30px; height: 30px;" />
				</div>
				<div class="weui-cell__bd">
					<p>&nbsp;帐户信息</p>
				</div>
				<div class="weui-cell__ft"></div>
			</a>
		</div>

		<jsp:include page="../Buttom/MngButtom.jsp"></jsp:include>
		<script type="text/javascript" src="../js/jquery-1.11.1.min.js"></script>
		<script type="text/javascript" src="../js/zepto.min.js"></script>
</body>
</html>