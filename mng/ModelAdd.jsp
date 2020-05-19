<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<<jsp:include page="MngHead.jsp"></jsp:include>
		<!-- Left side column. contains the logo and sidebar -->
		<!-- Left side column. contains the logo and sidebar -->
		<aside class="main-sidebar">
			<!-- sidebar: style can be found in sidebar.less -->
			<section class="sidebar" id="scrollspy">
				<!-- Sidebar Menu -->
				<ul class="sidebar-menu">
					<li class="header"><i class="fa fa-th"></i> 功能菜单</li>


					

					<li class="treeview active"><a href="#"><i class="fa fa-database"></i>
							<span>基础数据</span> <span class="pull-right-container"> <i
								class="fa fa-angle-left pull-right"></i>
						</span> </a>
						<ul class="treeview-menu">
							<li><a href="${ctx }/PageServlet?p=1"><i class="fa fa-commenting-o"></i> 管理员管理</a></li>
							<li><a href="FindSupplier?p=1"><i class="fa fa-user"></i> 供应商管理</a></li>
							<li><a href="FindProduct?p=1"><i class="fa fa-user"></i> 商品管理</a></li>
							<li><a href="FindModel?p=1"><i class="fa fa-user"></i> 商品规格管理</a></li>
							<li><a href="FindNews?p=1"><i class="fa fa-user"></i> 新闻管理</a></li>
							<li class="active"><a href="FindSize?p=1"><i class="fa fa-user"></i> 型号管理</a></li>
						</ul>
					</li>
					
					<li class="treeview"><a href="#"><i class="fa fa-database"></i>
							<span>分类管理</span> <span class="pull-right-container"> <i
								class="fa fa-angle-left pull-right"></i>
						</span> </a>
						<ul class="treeview-menu">
							<li><a href="FindCategoryFirst?p=1"><i class="fa fa-commenting-o"></i> 一级分类</a></li>
							<li><a href="FindCategorySecond?p=1"><i class="fa fa-user"></i> 二级分类</a></li>
						</ul>
					</li>
					
				</ul>
				<!-- /.sidebar-menu -->
			</section>
			<!-- /.sidebar -->
		</aside>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>
					型号列表 <small>列表页面</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="${ctx }/PageServlet?p=1"><i class="fa fa-home"></i> 首页</a></li>
					<li><a href="FindSupplier?p=1">型号管理</a></li>
					<li class="active"><a href="javascript:;">型号列表</a></li>
				</ol>
			</section>

			<!--主内容 -->
			<section class="content">
				<!-- right column -->
				<div class="col-md-12" style="float:left;">
					<!-- Horizontal Form -->
					<div class="box box-info" style="border-radius: 12px;">
						<div class="box-header with-border">
							<h3 class="box-title">添加商品规格</h3>
						</div>
						<!-- /.box-header -->
						<!-- form start -->
						<form class="form-horizontal" action="ModelAdd.do" method="post" id="ModelAdd">
							<!-- productall sizeall -->
							<div class="form-group">
								<label for="inputPassword3" class="col-sm-2 control-label">所属商品</label>
								<div class="col-sm-7">
									<select name="product_id" class="form-control">
										<c:forEach items="${productall }" var="p" >
											<option value="${p.id }">${p.name }</option>
										</c:forEach>
									</select>
								</div>
							</div>
							
							<div class="form-group">
								<label for="inputPassword3" class="col-sm-2 control-label">商品型号</label>
								<div class="col-sm-7">
									<select name="mode_style" class="form-control">
										<c:forEach items="${sizeall }" var="s" >
											<option>${s.model }</option>
										</c:forEach>
									</select>
								</div>
							</div>
							
							<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">型号库存数量</label>

									<div class="col-sm-7">
										<input type="text" class="form-control"
											id="mode_num" name="mode_num" placeholder="请输入该型号的库存数量">
									</div>
							</div>
							<!-- /.box-body -->
							<div align="center" class="box-footer">
								
								
								<input type="submit" class="btn btn-info">
							</div>
							<!-- /.box-footer -->
						</form>
					</div>
				</div>
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->

		<!-- Main Footer 富文本编辑器 name用description -->
		<jsp:include page="FormFooter.jsp"></jsp:include>
	

</body>

</html>