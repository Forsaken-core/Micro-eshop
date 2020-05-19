<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="MngHead.jsp"></jsp:include>
		<!-- Left side column. contains the logo and sidebar -->
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
					
					<li class="treeviewx active"><a href="#"><i class="fa fa-database"></i>
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

		<!-- 主体内容 -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>
					一级分类管理 <small>添加</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="${ctx }/PageServlet?p=1"><i class="fa fa-home"></i> 首页</a></li>
					<li><a href="FindNews?p=1">一级分类管理</a></li>
					<li class="active"><a href="javascript:;">编辑一级分类</a></li>
				</ol>
			</section>

			<!--主内容 -->
			<section class="content">
				<!-- right column -->
				<div class="col-md-12" style="float: left;">
					<!-- Horizontal Form -->
					<div class="box box-info" style="border-radius: 12px;">
						<div class="box-header with-border">
							<h3 class="box-title">编辑一级分类</h3>
						</div>
						<!-- /.box-header -->
						<!-- form start -->
						<form class="form-horizontal" action="CategoryFirstUpdate.do" method="post"
							id="CategoryFirstAdd" enctype="multipart/form-data">
							<div class="box-body">
							
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">分类名称</label>

									<div class="col-sm-7">
										<input  type="text" class="form-control"
											id="name" name="name" placeholder="不能为空" value="${category.name }">
									</div>
								</div>
								
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">分类别名</label>

									<div class="col-sm-7">
										<input type="text" class="form-control"
											id="alias" name="alias" placeholder="不能为空" value="${category.alias }">
									</div>
								</div>
								
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">分类排序</label>

									<div class="col-sm-7">
										<input type="text" class="form-control"
											id="sort" name="sort" placeholder="请在1，2中输入一个数字" value="${category.sort }">
									</div>
								</div>
								
								<div class="form-group">
									<label for="inputPassword3" class="col-sm-2 control-label">显示</label>

									<div class="col-sm-7">
										<label class="radio-inline"> <input type="radio"
											name="app_display"  value="1" <c:if test="${category.app_display == 1 }"> checked="checked" </c:if> />是
										</label> <label class="radio-inline"> <input type="radio"
											name="app_display" value="0" <c:if test="${category.app_display == 0 }"> checked="checked" </c:if> />否
										</label>
									</div>
								</div>
								
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">备注</label>

									<div class="col-sm-7">
										<textarea name="desca" class="col-sm-12" style="resize:none;" >${category.desca }</textarea>
									</div>
								</div>


								<div class="form-group">
									<label for="inputPassword3" class="col-sm-2 control-label">上传图片</label>
									<div class="col-sm-10">
										<div class="input-group">
											<input style="width: 300px;" type="file" id="thumbnail"
												name="thumbnail" value="请选择要上传图片" style="height: 43px;">
										</div>
									</div>
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

		<!-- Main Footer -->
		<jsp:include page="FormFooter.jsp"></jsp:include>

	<!-- 表单验证功能 -->

<script type="text/javascript">
	$(document).ready(function() {
						$('#CategoryFirstAdd').bootstrapValidator({
											message : 'This value is not valid',
											feedbackIcons : {
												valid : 'glyphicon glyphicon-ok',
												invalid : 'glyphicon glyphicon-remove',
												validating : 'glyphicon glyphicon-refresh'
											},
											fields : {
												name: {
													
													validators : {
														notEmpty : {
															message : '不能为空'
														},
														
													}
												},
												alias: {
													validators : {
														notEmpty : {
															message : '不能为空'
														}

													}
												},
												sort: {
													validators : {
														notEmpty : {
															message : '不能为空'
														},
														regexp : {
															regexp : /^[1-2]$/,
															message : '必须为1或2'
														}
													}
												}

												
											}
										});
					});
</script>
</body>

</html>