<%@ page language="Java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8" />
		<title>WeUIApp</title>
		<meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
		<link rel="stylesheet" href="css/weui.min.css" />
		<link rel="stylesheet" href="css/swiper.css" />
		<link rel="stylesheet" href="css/home.css" />
	</head>

	<body>
		<div class="contentBox">
			<!--搜索框-->
			<div class="weui-search-bar" id="searchBar">
				<form class="weui-search-bar__form">
					<div class="weui-search-bar__box">
						<i class="weui-icon-search"></i>
						<input type="search" class="weui-search-bar__input" id="searchInput" placeholder="搜索" required="">
						<a href="javascript:" class="weui-icon-clear" id="searchClear"></a>
					</div>
					<label class="weui-search-bar__label" id="searchText">
                      <i class="weui-icon-search"></i>
                      <span>搜索</span>
                    </label>
				</form>
				<a href="javascript:" class="weui-search-bar__cancel-btn" id="searchCancel">取消</a>
			</div>
			<!--轮播图-->
			<div class="swiper-container " style="width: 100%;height: 200px; ">
				<!--上半部图片-->
				<div class="swiper-wrapper ">
				
					<c:forEach items="${newslist }" var="n" >
						<c:if test="${n.top  == 1}"> 
							<div class="swiper-slide "><img src="/newspth/${n.thumbnail } " style="width: 100%;height: 200px; " /></div>
						</c:if>
						
					</c:forEach>
					
					
				</div>
				<!--小圆点-->
				<div class="swiper-pagination "></div>
			</div>

			<!--分类图标-->
			<div class="weui-flex " align="center " style="margin-top: 10px;">
				<c:forEach items="${categorylist }" var="category" begin="0" end="3">
					<div class="weui-flex__item">
						<a href="FindCategory?cate_id=${category.id }"><img src="img/icon_coupon.png" style="width: 45px;height: 45px;" /><br/>${category.name }</a>
					</div>
				</c:forEach>
			</div>

			<!--广告开始-->
			<img src="img/banner.jpg" style="width: 100%;" />
			<!--广告结束-->
			<!--商品信息----->
			<div class="productList">
				
				<c:forEach items="${productlist}" var="p">
					<a class="productItem" href="ProductDisplay?id=${p.id }">
						<div style="width:50%;height:150px;" class="productItemImg">
							<img  src="/productImgpth/${p.thumbnail }">
						</div>
						<div class="productName">${p.name }</div>
						<div class="productOther">
							<div class="productPrice">
								${p.sale_price }
							</div>
							<div class="productCar">${p.sales_volume }人付款</div>
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