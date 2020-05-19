<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>分类</title>
<meta name="viewport"
	content="width=device-width,initial-scale=1,user-scalable=0">
<link rel="stylesheet" href="../css/weui.min.css" />
<link rel="stylesheet" href="../css/swiper.css" />
<link rel="stylesheet" href="../css/home.css" />
<link rel="stylesheet" href="../css/category.css" />
</head>

<body>
	<div class="contentBox">
		<div class="categoryContent">

			<div class="categoryRight">
				<div class="categoryRightList" id="second">

					<div class="productList">

						<c:forEach items="${productcatelist}" var="p">
							<a class="productItem" href="../ProductDisplay?id=${p.id }">
								<div style="width: 50%; height: 150px;" class="productItemImg">
									<img src="/productImgpth/${p.thumbnail }">
								</div>
								<div class="productName">${p.name }</div>
								<div class="productOther">
									<div class="productPrice">${p.sale_price }</div>
									<div class="productCar">${p.sales_volume }人付款</div>
								</div>
							</a>
						</c:forEach>




					</div>


				</div>
			</div>
		</div>
	</div>
	</div>
	<jsp:include page="../Buttom/MngButtom.jsp"></jsp:include>
	<script type="text/javascript" src="../js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="../js/zepto.min.js"></script>
	<script type="text/javascript" src="../js/swiper.jquery.min.js"></script>
</body>
</html>