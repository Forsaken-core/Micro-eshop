<%@ page contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="utf-8" />
		<title>WeUIApp</title>
		<meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
		<link rel="stylesheet" href="css/weui.min.css" />
		<link rel="stylesheet" href="css/swiper.css" />
		<link rel="stylesheet" href="css/home.css" />
		<style type="text/css">
			.flexdiy {
				background-color: #F7F7F7;
				text-align: center;
				border: 1px  solid  white;
				line-height: 40px;
				height: 40px;
			}
			
		</style>
	</head>

	<body>
		<div class="contentBox">

			<!-- <div class="weui-flex">
				<div class="weui-flex__item flexdiy">销量</div>
				<div class="weui-flex__item flexdiy">价格</div>
				<div class="weui-flex__item flexdiy">默认</div>
			</div> -->
			<!--商品列表-->
			<div class="weui-panel weui-panel_access"  style="margin: 0px;">
				<div class="weui-panel__bd">
					
					<c:forEach items="${productcate }" var="p">
						<a href="ProductDisplay?id=${p.id }" class="weui-media-box weui-media-box_appmsg">
							<div class="weui-media-box__hd">
								<img class="weui-media-box__thumb" src="/productImgpth/${p.thumbnail }">
							</div>
							<div class="weui-media-box__bd">
								<h4 class="weui-media-box__title">${p.name }</h4>
								<p class="weui-media-box__desc">${p.sale_price }&nbsp;&nbsp;${p.sales_volume }人付款</p>
							</div>
						</a>
					</c:forEach>
					
				</div>

			</div>
		</div>
		<jsp:include page="Buttom/Buttom.jsp"></jsp:include>
		<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
		<script type="text/javascript" src="js/zepto.min.js"></script>
		<script type="text/javascript" src="js/swiper.jquery.min.js"></script>
		<script type="text/javascript">
			//图片轮播属性
			$(function() {
				var swipers = new Swiper('.swiper-container', {
					//水平
					direction: 'horizontal',
					autoplay: 3000,
					speed: 60,
					pagination: '.swiper-pagination',
					paginationClickable: true,
					slideToClickedSlide: true,
					loop: true,
					lazyLoading: true
				});
			});
		</script>
	</body>
</html>