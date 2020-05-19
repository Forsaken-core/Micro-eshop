<%@ page contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
		<meta charset="utf-8" />
		<title>分类</title>
		<meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
		<link rel="stylesheet" href="css/weui.min.css" />
		<link rel="stylesheet" href="css/swiper.css" />
		<link rel="stylesheet" href="css/home.css" />
		<link rel="stylesheet" href="css/category.css" />
	</head>

	<body>
		<div class="contentBox">
			<div class="categoryContent">
				<div class="categoryLeft">
					<c:forEach items="${categorylist }" var="c">
						<a href="FindCategory?cate_id=${c.id }" class="categoryLeftItem">${c.name }</a>
					</c:forEach>
					
				</div>
				<div class="categoryRight">
					<div class="categoryRightList" id="second">
						
						<c:forEach items="${catetwo}" var="ct">
							<div class="categoryRightItem">
								<a href="FindProductByCate?cateid=${ct.id }">
									<img src="/categorypth/${ct.thumbnail }">
									<div style="text-align: center;">${ct.name }</div>
								</a>
							</div>
						</c:forEach>
						
						
					</div>
				</div>
			</div>
		</div>
		</div>
		<jsp:include page="Buttom/Buttom.jsp"></jsp:include>
		<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
		<script type="text/javascript" src="js/zepto.min.js"></script>
		<script type="text/javascript" src="js/swiper.jquery.min.js"></script>
	</body>
</html>