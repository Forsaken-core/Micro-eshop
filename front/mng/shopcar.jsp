<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>购物车页面</title>
<meta name="viewport"
	content="width=device-width,initial-scale=1,user-scalable=0">
<link rel="stylesheet" href="../css/weui.min.css" />
<link rel="stylesheet" href="../css/swiper.css" />
<link rel="stylesheet" href="../css/shopCar.css" />
</head>

<body>
	<div class="contentBox">

		<div class="titleBar">
			<div class="title">购物车列表</div>
		</div>
		<form action="OrderAdd.do" method="post">
			<div class="shopCarList" style="margin-top: 0px; padding-top: 0px;">

				<!-- 购物车中的物品 -->
				<c:if test="${shopcarlist == '0' }">
					<a href="../home.jsp">购物车是空的？来淘好货吧</a>
				</c:if>
				<c:if test="${shopcarlist != null }">
					<c:forEach items="${shopcarlist }" var="s">
						<c:forEach items="${productlist }" var="p">


							<c:if test="${s.pro_id == p.id }">
								<!-- 隐形传输p_id -->
								
								<input  name="product_id" class="weui-input" type="hidden" value="${p.id }">
								<!-- 隐形传输model -->
								<input  name="model" class="weui-input" type="hidden" value="${s.model }">
								<div class="shopCarItem weui-cells_checkbox">
									<label class="weui-cell weui-check__label shopCarItemChooseBtn"
										choose="false" onclick="chooseItem(this,'${s.id}','${ctx}')">
										<div class="shopCarItemChoose">
											<div class="shopCarItemChooseed"></div>
											<div class="shopCarItemUnchoose"></div>
										</div>
									</label>
									<div class="itemPic">
										<img src="/productImgpth/${p.thumbnail}" name="imagess" />
									</div>
									<div class="shopCarItemInfo">
										<div class="shopCarItemInfoName">${p.name }</div>
										<div class="shopCarItemInfoPrice">
											单价：¥<span>${p.price }</span>&nbsp;&nbsp;型号:${s.model }
										</div>
										<div class="shopCarItemInfoTools">
											<div class="shopCarItemInfoToolsNumber">
												<div class="shopCarItemInfoToolsAdd"
													onclick="addNum(this,${s.id },'${ctx}')">+</div>
												<input name=amount class="weui-input shopCarItemInfoToolsInput"
													type="number" pattern="[0-9]*" value="${s.number }">
												<div class="shopCarItemInfoToolsReduce"
													onclick="reduceNum(this,'1','${ctx}')">-</div>
											</div>
											<!-- 删除商品 -->
											<a href="DeleteShopcar?id=${s.id}"><img
												class="shopCarItemInfoToolsRemove"
												src="../img/icon_delete.png"></img> </a>
										</div>
									</div>
								</div>

							</c:if>
						</c:forEach>
					</c:forEach>
				</c:if>

				<br />
				<div class="orderSubmitTop title"
					style="border-top: 1px dashed rgba(0, 0, 0, 0.1); margin-top: 5px">
					<div class="orderSubmitTopLeft"></div>
					<div class="orderSubmitTopCenter"></div>
					<div class="orderSubmitTopRight fontstyle"
						style="font-family: 黑体; padding-left: 10px">收货地址:</div>

					<c:forEach items="${saddresslist }" var="a">
						<c:choose>
							<c:when test="${a.default_value == 1 }">
								<div
									style="padding-top: 10px; font-size: 13px; padding-left: 20px">
									<input type="radio" name="addressname" checked="checked"
										value="${a.id}">${a.contact },${a.address_city },${a.mobile }<br />
								</div>
							</c:when>
							<c:otherwise>
								<div
									style="padding-top: 10px; font-size: 13px; padding-left: 20px">
									<input type="radio" name="addressname" value="${a.id}">${a.contact }，${a.address_city }，${a.mobile }<br />
								</div>
							</c:otherwise>
						</c:choose>

					</c:forEach>

				</div>

				<div class="weui-cells__title"
					style="border-top: 1px dashed rgba(0, 0, 0, 0.1);">买家留言</div>
				<div class="weui-cells">
					<div class="weui-cell">
						<div class="weui-cell__bd">
							<input class="weui-input" type="text" name="message"
								placeholder="请输入留言">
						</div>
					</div>
				</div>
			</div>
			<div class="shopCarTools">
				<div class="shopCarToolsMain">
					合计:<span name="allprice1" id="allprice1">0.00</span>
					<input id="allprice"  name="allprice" class="weui-input" type="hidden">
				</div>
				<input class="shopCarToolsRight" type="submit" value="去结算"  />
				
			</div>
		</form>

	</div>
	<jsp:include page="../Buttom/MngButtom.jsp"></jsp:include>
	<script type="text/javascript" src="../js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="../js/zepto.min.js"></script>
	<script type="text/javascript" src="../js/swiper.jquery.min.js"></script>
	<script type="text/javascript" src="../js/shopCar.js"></script>
</body>
</html>