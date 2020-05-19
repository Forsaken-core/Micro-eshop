<%@ page contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
		<title>订单列表</title>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
		<link rel="stylesheet" href="../css/jquery-weui.css">
		<link rel="stylesheet" href="../css/weui.css">
		<link rel="stylesheet" href="../css/common.css">
		<link rel="stylesheet" href="../css/productDetail.css">
		<script src="../js/jquery-2.2.3.min.js"></script>
		<script src="../js/jquery-weui.js"></script>
		<script src="../js/swiper.js"></script>
		<link rel="stylesheet" href="../css/orderList.css">
		<script src="../js/orderList.js"></script>
	</head>

	<body>
		<div class="titleBar">
			<div class="title">订单列表</div>
		</div>
		<div class="orderList" style="padding-bottom: 60px">
			<div class="orderItem">
				<c:forEach items="${itemList}" var="ordersubmit">
					<div class="orderInfo">
						<div class="orderInfoItem">订单编号:90478347538945739475</div>
						<div class="orderInfoItem">下单时间:2017-09-09 08:30:23</div>
						<div class="orderInfoItem">订单总金额:10000</div>
					</div>
					<c:forEach items="${ordersubmit.list}" var="item">
						<div class="shopCarList">
							<div class="shopCarItem weui-cells_checkbox">
								<a href="${ctx}/front/pro/display?id=${item.product.id}">
									<div class="itemPic">
										<img src="img/eat01_02.png" />
									</div>
									<div class="shopCarItemInfo">
										<div class="shopCarItemInfoName">华为荣耀七</div>
										<div class="shopCarItemInfoPrice">
											¥<span>1299</span>
										</div>

										<div class="shopCarItemInfoTools">
											<div class="shopCarItemInfoToolsNumber">
												数量：2&nbsp;型号:A8&nbsp;小计:30000</div>
										</div>
								</a>
								</div>
							</div>
							<!--<input type="text" style="width: 100%;height: 30px;border: 1px  solid  ghostwhite;" placeholder="  请输入商品评价信息" />-->
					</c:forEach>
					<div class="orderPostInfo">
						<div class="orderInfoItem">收货人:梁天宇&nbsp;&nbsp;联系方式:15890000333</div>
						<div class="orderInfoItem">收货地址:</div>
						<div class="orderInfoItem">买家留言:小心轻放</div>
					</div>
				</c:forEach>

				</div>
			</div>
			<jsp:include page="../Buttom/MngButtom.jsp"></jsp:include>
	</body>
</html>