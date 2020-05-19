<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>商品详情</title>
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="stylesheet" href="../css/jquery-weui.min.css">
<link rel="stylesheet" href="../css/weui.css">
<link rel="stylesheet" href="../css/common.css">
<link rel="stylesheet" href="../css/productDetail.css">
<script src="../js/jquery-2.2.3.min.js"></script>
<script src="../js/jquery-weui.js"></script>
</head>

<body>
	<div class="titleBar">
		<div class="titleBarBack"></div>
		<div class="titleBarTitle"></div>
		<div class="titleBarBtn"></div>
	</div>
	<form action="AddShopcar.do" method="post">
		<div class="swiper-container">
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<img src="/productImgpth/${product.thumbnail}" style="width: 100%" />
				</div>
			</div>
			<!-- If we need pagination -->
			<div class="swiper-pagination"></div>
		</div>
		<div class="productInfo">
			<div class="productInfoItem"
				style="font-size: 22px; color: red; font-weight: bolder;">
				<fmt:formatNumber value="${product.sale_price} " pattern="￥#,###.00" />
				<span
					style="color: grey; font-size: 13px; text-decoration: line-through;">
					<fmt:formatNumber value="${product.price} " pattern="￥#,###.00" />
				</span>
			</div>
			<div class="productInfoItem"
				style="font-size: 15px; font-weight: bolder;">${product.name}</div>
			<div class="productInfoItem" style="font-size: 15px;">
				型号:
				<c:forEach items="${model}" var="model" >
					<input checked="checked" id="mstyle" type="radio" value="${model.mode_style}" name="model"
						style="width: 20px; height: 20px; vertical-align: center;">${model.mode_style}
				</c:forEach>
			</div>
			<div class="productInfoItem"
				style="color: grey; font-size: 15px; width: 100%;" align="center">
				<div style="float: left">库存:</div>
				<span>销量:${product.sales_volume }</span>
				<div align="right" style="float: right;">发货地:${product.consignment }</div>
			</div>
		</div>
		<div class="productSalesInfo">
			<div class="productSalesInfoItem">
				<span class="title">热销:</span> <span>全球追求！</span>
			</div>
			<div class="productSalesInfoItem">
				<span class="title">产地:</span> <span>${product.habitat }</span>
			</div>
			<div class="productSalesInfoItem">
				<span class="title">适用人群:</span> <span>${product.adaptation_people }</span>
			</div>
		</div>
		<div class="spaceList">
			<div class="spaceItem">
				<div class="spaceItemIcon">
					<img alt="" src="img/tu01.png" style="width: 20px; height: 20px" />
				</div>
				<div class="spaceItemText">正品保证</div>
			</div>
			<div class="spaceItem">
				<div class="spaceItemIcon">
					<img alt="" src="img/tu01.png" style="width: 20px; height: 20px" />
				</div>
				<div class="spaceItemText">安全监测</div>
			</div>
			<div class="spaceItem">
				<div class="spaceItemIcon">
					<img alt="" src="img/tu01.png" style="width: 20px; height: 20px" />
				</div>
				<div class="spaceItemText">闪电发货</div>
			</div>
			<div class="spaceItem">
				<div class="spaceItemIcon">
					<img alt="" src="img/tu01.png" style="width: 20px; height: 20px" />
				</div>
				<div class="spaceItemText">开箱验货</div>
			</div>
		</div>

		<div class="chooseTab">
			<div class="chooseTabItem chooseTabItemChoose">商品详情</div>
		</div>
		<div class="infoPic">
			<div class="infoPicItem">
				${product.detail_description }
				
			</div>
		</div>
		<div class="footerProduct">
			<!--<div class="footerItem" style="flex: 1;">收藏</div>-->
			<a class="footerItem" style="flex: 1;" href="../home.jsp">首页</a>
			<button class="footerItem" type="submit"
				style="flex: 2; background: #CE3C39; color: #ffffff">加入购物车</button>
		</div>
		</div>
		</div>
	</form>
	
	<script type="text/javascript">
		//商品分类级联
		function test(){
			$.ajax({
				url:"frontproajax",
				type:"post",
				data:{id:$("#cate_id1").val()},
				datetype:"json",
				success:function(data){
					
					
					var items = data.ca_id2;
					var select = $("#cate_id2");
					select.empty();
					if(items != null){
						for(var i in items){
							var item = items[i];
							select.append("<option value ='" + item.id + "'>" + item.name + "</option>");
						}
					}else{
						
					}
					
					
				}
			});
			
		}
	
	</script>
	
</body>
</html>