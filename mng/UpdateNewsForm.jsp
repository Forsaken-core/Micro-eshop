<%@ page language="Java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="MngHead.jsp"></jsp:include>
		
		
		
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
							<li><a href="#"><i class="fa fa-user"></i> 供应商管理</a></li>
							<li><a href="FindProduct?p=1"><i class="fa fa-user"></i> 商品管理</a></li>
							<li><a href="#"><i class="fa fa-user"></i> 商品规格管理</a></li>
							<li class="active"><a href="FindNews?p=1"><i class="fa fa-user"></i> 新闻管理</a></li>
							<li><a href="#"><i class="fa fa-user"></i> 型号管理</a></li>
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

		<!-- 主体内容 -->
		<div class="content-wrapper" >
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>
					新闻管理 <small>修改</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="./main.html"><i class="fa fa-home"></i> 首页</a></li>
					<li><a href="#">新闻列表</a></li>
					<li class="active"><a href="javascript:;">修改新闻</a></li>
				</ol>
			</section>

			<!--主内容 -->
			<section class="content">
				<!-- right column -->
				<div class="col-md-12" style="float:left;">
					<!-- Horizontal Form -->
					<div class="box box-info" style="border-radius: 12px;">
						<div class="box-header with-border">
							<h3 class="box-title">修改新闻</h3>
						</div>
						<!-- /.box-header -->
						<!-- form start -->
						<form class="form-horizontal" action="updatenews.do" method="post"
							id="addnews" enctype="multipart/form-data">
							<div class="box-body">
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">新闻标题</label>

									<div class="col-sm-10">
										<input style="width: 60%;" type="text" class="form-control"
											id="inputTitle" name="inputtitle" value="${news.title }">
									</div>
								</div>

								<div class="form-group">
									<label for="inputPassword3" class="col-sm-2 control-label">轮播</label>

									<div class="col-sm-10">
										<label class="radio-inline"> <input type="radio"
											name="top" value="1" />是
										</label> <label class="radio-inline"> <input type="radio"
											name="top" checked="checked" value="0" />否
										</label>
									</div>
								</div>


								<div class="form-group">
									<label for="inputPassword3" class="col-sm-2 control-label">上传图片</label>
									<div class="col-sm-10">
										<div class="input-group">
											<input style="width: 300px;" type="file" id="newsthumbnail"
												name="newsthumbnail" value="请选择要上传图片" style="height: 43px;">
										</div>
									</div>
								</div>

								<div class="form-group">
									<label for="inputPassword3" class="col-sm-2 control-label">发布内容:</label>
									<div class="col-sm-10">
										<!--富文本编辑器控件-->
										<textarea id="description" name="description" rows="15" cols="100"
											class="form-control">${news.content }</textarea>
											
									</div>
								</div>

							</div>
							<!-- /.box-body -->
							<div align="center" class="box-footer">

								<button class="btn btn-default">重置</button>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
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

</body>

</html>