<%@ page language="Java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:include page="MngHead.jsp"></jsp:include>
		
		
		<!-- Left side column. contains the logo and sidebar -->
		<aside class="main-sidebar">
			<!-- sidebar: style can be found in sidebar.less -->
			<section class="sidebar" id="scrollspy">
				<!-- Sidebar Menu -->
				<ul class="sidebar-menu">
					<li class="header"><i class="fa fa-th"></i> 功能菜单</li>


					

					<li class="treeview"><a href="#"><i class="fa fa-database"></i>
							<span>基础数据</span> <span class="pull-right-container"> <i
								class="fa fa-angle-left pull-right"></i>
						</span> </a>
						<ul class="treeview-menu">
							<li><a href="${ctx }/PageServlet?p=1"><i class="fa fa-commenting-o"></i> 管理员管理</a></li>
							<li><a href="FindSupplier?p=1"><i class="fa fa-user"></i> 供应商管理</a></li>
							<li><a href="FindProduct?p=1"><i class="fa fa-user"></i> 商品管理</a></li>
							<li><a href="FindModel?p=1"><i class="fa fa-user"></i> 商品规格管理</a></li>
							<li><a href="FindNews?p=1"><i class="fa fa-user"></i> 新闻管理</a></li>
							<li><a href="FindSize?p=1"><i class="fa fa-user"></i> 型号管理</a></li>
						</ul>
					</li>
					
					<li class="treeview active"><a href="#"><i class="fa fa-database"></i>
							<span>分类管理</span> <span class="pull-right-container"> <i
								class="fa fa-angle-left pull-right"></i>
						</span> </a>
						<ul class="treeview-menu">
							<li class="active"><a href="FindCategoryFirst?p=1"><i class="fa fa-commenting-o"></i> 一级分类</a></li>
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
					分类管理<small>一级分类</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="${ctx }/index.jsp"><i class="fa fa-home"></i> 首页</a></li>
					<li><a href="FindCategoryFirst?p=1">一级分类管理</a></li>
					<li class="active"><a href="javascript:;">一级分类列表</a></li>
				</ol>
			</section>

			<!-- Main content -->
			<section class="content">
				
				
								
				<!-- Your Page Content Here -->
				<div class="row">
					<div class="col-md-12">
						<div class="box box-success">
							<div class="box-header with-border"
								style="height: 54px; line-height: 34px">
								<h3 class="box-title">分类管理列表</h3>
								<div class="box-tools"
									style="position: absolute; top: 10px; right: 10px">
									<a type="button" href="CategoryFirstAdd.jsp"
										class="btn btn-flat btn-success pull-left"><i
										class="fa fa-plus"></i> 创建</a>
								</div>
								<!-- /.box-tools -->
							</div>
							<!-- /.box-header -->
							<div class="box-body table-responsive">
								<table id="example"
									class="table table-hover table-striped table-bordered">
									<thead>
										<tr>
											<th>分类编号</th>
											<th>分类名称</th>
											<th>分类别名</th>
											<th>分类创建时间</th>
											<th>操作</th>
										</tr>
									</thead>
									
									<tbody>
										<c:forEach items="${categoryfirstlist.items }" var="c">
											<tr>
												<td>${c.id }</td>
												<td>${c.name }</td>
												<td>${c.alias }</td>
												<td>
												<fmt:formatDate value="${c.create_time }"/> </td>
												
												<td><a class="a-edit" href="CategoryFirstUpdate?id=${c.id }"><i
													class="fa fa-edit"></i></a>&nbsp;&nbsp; 
													<a class="a-delete" href="CategoryFirstDelete?id=${c.id }" data-toggle="modal"
												data-target="#deletemodal"> <i class="fa fa-trash-o"></i>
												</a></td>
											</tr>
										</c:forEach>
										
										
									</tbody>
								</table>
							</div>
							<!-- /.box-body -->
<jsp:include page="ListFooter.jsp"></jsp:include>
	
	<!-- jqPaginator分页 -->
	 
	<script>
	$("#spupage").jqPaginator({
        totalPages: ${categoryfirstlist.totalPage},
        visiblePages: 5,
        currentPage: ${categoryfirstlist.pageNo },
        first: ${categoryfirstlist.pageNo == 1}?  '<li class="first"><a href="javascript:void(0);">首页<\/a><\/li>' : '<li class="first"><a href="FindCategoryfirst?p=1">首页<\/a><\/li>',
        prev:  ${categoryfirstlist.pageNo == 1}? '<li class="prev"><a href="javascript:void(0);">上一页<\/a><\/li>' : '<li class="prev"><a href="FindCategoryfirst?p=${categoryfirstlist.pageNo -1 }"><i class="arrow arrow2"><\/i>上一页<\/a><\/li>',
        next:  ${categoryfirstlist.pageNo == categoryfirstlist.totalPage}? '<li class="next"><a href="javascript:void(0);">下一页<\/a><\/li>' : '<li class="next"><a href="FindCategoryfirst?p=${categoryfirstlist.pageNo + 1 }">下一页<i class="arrow arrow3"><\/i><\/a><\/li>',
        last:  ${categoryfirstlist.pageNo == categoryfirstlist.totalPage}? '<li class="next"><a href="javascript:void(0);">末页<\/a><\/li>' : '<li class="last"><a href="FindCategoryfirst?p=${categoryfirstlist.totalPage}">末页<\/a><\/li>',
        page: '<li class="page"><a href="FindCategoryfirst?p={{page}}">{{page}}<\/a><\/li>',
        onPageChange: function (n) {
            $("#suplist-text").html("当前第" + n + "页");
        }
    });
	</script>
</body>

</html>