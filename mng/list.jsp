<%@page import="com.zxkj.entity.member"%>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="l" %>
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>卓讯CRM管理系统</title>
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="../font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="../adminlte/css/AdminLTE.min.css">
<link rel="stylesheet" href="../adminlte/css/skins/_all-skins.min.css">
<!--[if lt IE 9]>
  <script src="../adminlte/js/html5shiv.min.js"></script>
  <script src="../adminlte/js/respond.min.js"></script>
  <![endif]-->
</head>
<!--  sidebar-collapse fixed -->

<body class="hold-transition skin-green sidebar-mini fixed">
	<div class="wrapper">
		<!-- Main Header -->
		<header class="main-header">
			<!-- Logo -->
			<a href="main.html" class="logo"> <!-- mini logo for sidebar mini 50x50 pixels -->
				<span class="logo-mini"><b>CRM</b></span> <!-- logo for regular state and mobile devices -->
				<span class="logo-lg"><b>卓讯CRM</b>管理系统</span>
			</a>

			<!-- Header Navbar -->
			<nav class="navbar navbar-static-top" role="navigation">
				<!-- Sidebar toggle button-->
				<a href="#" class="sidebar-toggle" data-toggle="offcanvas"
					role="button"> <span class="sr-only">切换侧边栏</span>
				</a>
				<!-- Navbar Right Menu -->
				<div class="navbar-custom-menu">
					<ul class="nav navbar-nav">

						<!-- Notifications Menu -->
						<li class="dropdown notifications-menu messages-menu tasks-menu">
							<!-- Menu toggle button --> <a href="#" class="dropdown-toggle"
							data-toggle="dropdown"> <i class="fa fa-bell-o"></i> <span
								class="label label-warning">10</span>
						</a>
							<ul class="dropdown-menu">
								<li class="header">你有 10 个待办事项</li>
								<li>
									<!-- Inner Menu: contains the notifications -->
									<ul class="menu">
										<li>
											<!-- start notification --> <a href="#"> <i
												class="fa fa-users text-aqua"></i> 5 个新订单待确认
										</a>
										</li>
										<li><a href="#">
												<div class="pull-left">
													<!-- User Image -->
													<img src="${ sessionScope.login.thumbnail }" class="img-circle" alt="User Image">
												</div> <!-- Message title and timestamp -->
												<h4>
													中午开会 <small><i class="fa fa-clock-o"></i> 5 分钟前</small>
												</h4> <!-- The message -->
												<p>今天中午13:30召开全体员工会议</p>
										</a></li>
										<li><a href="#">
												<div class="pull-left">
													<!-- User Image -->
													<img src="${ sessionScope.login.thumbnail }" class="img-circle" alt="User Image">
												</div> <!-- Message title and timestamp -->
												<h4>
													晚上18点聚会 <small><i class="fa fa-clock-o"></i> 5 分钟前</small>
												</h4> <!-- The message -->
												<p>今天中午13:30召开全体员工会议</p>
										</a></li>
										<li><a href="#"> <!-- Task title and progress text -->
												<h3>
													微销项目开发进度 <small class="pull-right">20%</small>
												</h3> <!-- The progress bar -->
												<div class="progress xs">
													<!-- Change the css width attribute to simulate progress -->
													<div class="progress-bar progress-bar-aqua"
														style="width: 20%" role="progressbar" aria-valuenow="20"
														aria-valuemin="0" aria-valuemax="100">
														<span class="sr-only">20% 已完成</span>
													</div>
												</div>
										</a></li>
										<li><a href="#"> <i class="fa fa-warning text-yellow"></i>
												库存告急库存告急库存告急库存告急库存告急
										</a></li>
										<!-- end notification -->
									</ul>
								</li>
								<li class="footer"><a href="#">查看所有</a></li>
							</ul>
						</li>

						<!-- User Account Menu -->
						<li class="dropdown user user-menu">
							<!-- Menu Toggle Button --> <a href="#" class="dropdown-toggle"
							data-toggle="dropdown"> <!-- The user image in the navbar-->
								<img src="${ sessionScope.login.thumbnail }" class="user-image" alt="User Image">
								<!-- hidden-xs hides the username on small devices so only the image appears. -->
								<span class="hidden-xs">${ sessionScope.login.nick_name }</span>
						</a>
							<ul class="dropdown-menu">
								<!-- The user image in the menu -->
								<!-- 加载头像路径信息 -->

								<li class="user-header">
								<img src="" class="img-circle"	alt="User Image">
									<p>
										- Java Developer <small>互联网老兵...${sessionScope.uploadImg }${ sessionScope.login.thumbnail }</small>
									</p></li>
								<!-- Menu Body -->
								<li class="user-body">
									<div class="row">
										<div class="col-xs-4 text-center">
											<a href="#"><i class="fa fa-info-circle"></i> 详情</a>
										</div>
										<div class="col-xs-4 text-center" style="padding: 0">
											<a href="#"><i class="fa fa-lock"></i> 修改密码</a>
										</div>
										<div class="col-xs-4 text-center">
											<a href="#exitModal" data-toggle="modal"><i
												class="fa fa-power-off"></i> 退出</a>
										</div>
									</div>
								</li>
								<li class="user-footer">
									<div class="pull-left">
										<a href="#" class="btn btn-default btn-flat">修改密码</a>
									</div>
									<div class="pull-right">
										<a href="#exitModal" data-toggle="modal"
											class="btn btn-default btn-flat">退出</a>
									</div>
								</li>
							</ul>
						</li>
						<li class="dropdown tasks tasks-menu"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown"><i
								class="fa fa-gears"></i></a>
							<ul class="dropdown-menu" style="width: 240px" id="skin-menu"></ul>
						</li>
					</ul>
				</div>
			</nav>
		</header>
		<!-- Left side column. contains the logo and sidebar -->
		<aside class="main-sidebar">
			<!-- sidebar: style can be found in sidebar.less -->
			<section class="sidebar" id="scrollspy">
				<!-- Sidebar Menu -->
				<ul class="sidebar-menu">
					<li class="header"><i class="fa fa-th"></i> 功能菜单</li>

					<li class="treeview"><a href="#"><i
							class="fa fa-shopping-cart"></i> <span>营销管理</span> <span
							class="pull-right-container"> <i
								class="fa fa-angle-left pull-right"></i>
						</span> </a>
						<ul class="treeview-menu">
							<li><a href="list02.html"><i class="fa fa-reorder"></i>
									客户跟踪记录</a></li>
							<li><a href="list.html"><i class="fa fa-cube"></i>
									客户开发计划</a></li>
							<li><a href="#"><i class="fa fa-reorder"></i> 成单客户</a></li>
							<li><a href="list.html"><i class="fa fa-cube"></i> 流失客户</a>
							</li>
						</ul></li>

					<li class="treeview"><a href="#"><i class="fa fa-users"></i>
							<span>客户管理</span> <span class="pull-right-container"> <i
								class="fa fa-angle-left pull-right"></i>
						</span> </a>
						<ul class="treeview-menu">
							<li><a href="#"><i class="fa fa-files-o"></i> 客户信息</a></li>
							<li><a href="#"><i class="fa fa-list"></i> 客户指派</a></li>
							<li><a href="#"><i class="fa fa-list"></i> 潜客共享</a></li>
						</ul></li>

					<li class="treeview"><a href="#"><i class="fa fa-edit"></i>
							<span>统计报表</span> <span class="pull-right-container"> <i
								class="fa fa-angle-left pull-right"></i>
						</span> </a>
						<ul class="treeview-menu">
							<li><a href="#"><i class="fa fa-files-o"></i> 客户贡献分析</a></li>
							<li><a href="#"><i class="fa fa-list"></i> 客户流失分析</a></li>
						</ul></li>

					<li class="treeview"><a href="#"><i class="fa fa-database"></i>
							<span>基础数据</span> <span class="pull-right-container"> <i
								class="fa fa-angle-left pull-right"></i>
						</span> </a>
						<ul class="treeview-menu">
							<li><a href="addAdmin.jsp"><i class="fa fa-commenting-o"></i> 管理员管理</a></li>
							<li><a href="#"><i class="fa fa-user"></i> 供应商管理</a></li>
							<li><a href="#"><i class="fa fa-user"></i> 商品管理</a></li>
							<li><a href="#"><i class="fa fa-user"></i> 商品规格管理</a></li>
							<li><a href="#"><i class="fa fa-user"></i> 新闻管理</a></li>
							<li><a href="#"><i class="fa fa-user"></i> 型号管理</a></li>
							
						</ul></li>
					<li class="treeview"><a href="#"><i class="fa fa-book"></i>
							<span>知识库</span> <span class="pull-right-container"> <i
								class="fa fa-angle-left pull-right"></i>
						</span> </a>
						<ul class="treeview-menu">
							<li><a href="#"><i class="fa fa-list"></i> 知识列表</a></li>
							<li><a href="#"><i class="fa fa-list-ul"></i> 知识库分类</a></li>
						</ul></li>

					<li class="treeview"><a href="#"><i class="fa fa-eye"></i>
							<span>权限管理</span> <span class="pull-right-container"> <i
								class="fa fa-angle-left pull-right"></i>
						</span> </a>
						<ul class="treeview-menu">
							<li><a href="#"><i class="fa fa-sitemap"></i> 用户管理</a></li>
							<li><a href="#"><i class="fa fa-home"></i> 角色管理</a></li>
							<li><a href="#"><i class="fa fa-database"></i> 菜单管理</a></li>
							<li><a href="#"><i class="fa fa-edit"></i> 操作管理</a></li>
						</ul></li>
					<li class="treeview active"><a href="#"><i
							class="fa fa-gear"></i> <span>系统管理</span> <span
							class="pull-right-container"> <i
								class="fa fa-angle-left pull-right"></i>
						</span> </a>
						<ul class="treeview-menu">
							<li class="active"><a href="javascript:;"><i
									class="fa fa-sitemap"></i> 公告信息</a></li>
							<li><a href="#"><i class="fa fa-sitemap"></i> 日志信息</a></li>
							<li><a href="#"><i class="fa fa-home"></i> 数据备份</a></li>
						</ul></li>
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
					公告信息 <small>2017-07-07</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="./main.html"><i class="fa fa-home"></i> 首页</a></li>
					<li><a href="#">系统设置</a></li>
					<li class="active"><a href="javascript:;">公告信息</a></li>
				</ol>
			</section>

			<!-- Main content -->
			<section class="content">
				<!-- 组合查询 -->
				<div class="row">
					<div class="col-md-12">
						<div class="box box-primary">
							<div class="box-header with-border">
								<h3 class="box-title">组合查询</h3>
							</div>

							<form id="searchForm" action="./list.html"
								th:action="@{/mgmt/managers}" class="form-horizontal"
								method="post">
								<div class="box-body">
									<div class="form-group">
										<label for="search_user_name" class="col-sm-1 control-label">发布人</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" id="search_user_name"
												placeholder="发布人">
										</div>
										<label for="search_user_name" class="col-sm-2 control-label">标题关键字</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" id="search_user_name"
												placeholder="标题关键字">
										</div>
									</div>
									<div class="form-group">
										<label for="search_user_name" class="col-sm-1 control-label">状态</label>
										<div class="col-sm-4">
											<label class="radio-inline"> <input name="status"
												type="radio" value="0" checked="checked" />已发布
											</label> <label class="radio-inline"> <input name="status"
												type="radio" value="1" />草稿
											</label>
										</div>
										<label for="search_user_name" class="col-sm-2 control-label">发布时间</label>
										<div class="col-sm-4">
											<div class="input-group" id="datepicker">
												<input type="text" class="input-sm form-control"
													name="start" /> <span class="input-group-addon">到</span> <input
													type="text" class="input-sm form-control" name="end" />
											</div>
										</div>
									</div>
								</div>

								<div class="box-footer">
									<div class="col-sm-offset-1">
										<button type="reset" class="btn btn-default btn-flat">重置</button>
										&nbsp;&nbsp;&nbsp;
										<button type="button" class="btn btn-primary btn-flat"
											onclick="doSearch()">查询</button>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
				<!-- /组合查询 -->

				<!-- Your Page Content Here -->
				<div class="row">
					<div class="col-md-12">
						<div class="box box-success">
							<div class="box-header with-border"
								style="height: 54px; line-height: 34px">
								<h3 class="box-title">数据表格</h3>
								<div class="box-tools"
									style="position: absolute; top: 10px; right: 10px">
									<a type="button" href="form.html"
										class="btn btn-flat btn-success pull-left"><i
										class="fa fa-plus"></i> 添加产品</a>
								</div>
								<!-- /.box-tools -->
							</div>
							<!-- /.box-header -->
							<div class="box-body table-responsive">
								<table id="example"
									class="table table-hover table-striped table-bordered">
									<thead>
										<tr>
											<th>编号</th>
											<th>名称</th>
											<th>发布时间</th>
											<th>备注</th>
										</tr>
									</thead>
									<tfoot>
										<tr>
											<th>编号</th>
											<th>名称</th>
											<th>发布时间</th>
											<th>备注</th>
											<th>操作</th>
										</tr>
									</tfoot>
									<tbody>
										<tr>
											<td>1</td>
											<td><a href="detail?id=321">A类客户</a></td>
											<td>2017-08-08 09:30</td>
											<td>A类客户重点关注</td>
											<td><a class="a-edit" href="detail?id=321"><i
													class="fa fa-edit"></i></a>&nbsp;&nbsp; <a class="a-delete"
												href="delete?id=321" data-toggle="modal"
												data-target="#deletemodal"> <i class="fa fa-trash-o"></i>
											</a></td>
										</tr>
										<tr>
											<td>2</td>
											<td><a href="detail?id=321">潜在客户</a></td>
											<td>2017-08-08 09:30</td>
											<td>备注信息</td>
											<td><a class="a-edit" href="detail?id=21"><i
													class="fa fa-edit"></i></a>&nbsp;&nbsp; <a class="a-delete"
												href="delete?id=321" data-toggle="modal"
												data-target="#deletemodal"> <i class="fa fa-trash-o"></i>
											</a></td>
										</tr>
									</tbody>
								</table>
							</div>
							<!-- /.box-body -->
							<div class="box-footer">
								<div class="pull-right">
									<div class="pagination-info"
										style="display: -moz-inline-stack; display: inline-block; padding: 7px 16px; color: #888;">共有58条，每页显示20条</div>
									<ul class="pagination pagination-flat no-margin pull-right">
										<li><a href="#">«</a></li>
										<li><a href="#">‹</a></li>
										<li><a href="#">1</a></li>
										<li class="active"><a href="#">2</a></li>
										<li><a href="#">3</a></li>
										<li><a href="#">›</a></li>
										<li><a href="#">»</a></li>
									</ul>
								</div>
							</div>
							<!-- /.box-footer -->
						</div>
						<!-- /.box -->
					</div>
				</div>

			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->

		<!-- Main Footer -->
		<footer class="main-footer">
			<!-- To the right -->
			<div class="pull-right hidden-xs">天津卓讯科技有限公司</div>
			<!-- Default to the left -->
			<strong>Copyright &copy; 2017 <a href="#">ITVK.CN</a>.
			</strong> All rights reserved.
		</footer>
	</div>
	<!-- ./wrapper -->
	<!--删除模态框开始--->
	<div class="modal modal-danger fade" id="deletemodal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">删除对话框</h4>
				</div>
				<div class="modal-body">
					<p>是否确认删除&hellip;</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-outline pull-left"
						data-dismiss="modal">取消</button>
					<button type="button" class="btn btn-outline" id="btn_delete">确认</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!--删除模态框结束--->

	<!--退出模态框开始--->
	<div class="modal modal-success fade" id="exitModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">退出对话框</h4>
				</div>
				<div class="modal-body">
					<p>是否确认退出&hellip;</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-outline pull-left"
						data-dismiss="modal">取消</button>
					<button type="button" class="btn btn-outline" id="btn_logout">确认</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!--退出模态框结束--->
	<script src="../plugins/jQuery/jquery-2.2.3.min.js"></script>
	<script src="../plugins/slimScroll/jquery.slimscroll.min.js"></script>
	<script src="../bootstrap/js/bootstrap.min.js"></script>
	<script src="../adminlte/js/app.js"></script>
	<script src="../adminlte/js/my.js"></script>

	<script type="text/javascript">
		//退出事件
		$("#btn_logout").click(function() {
			//取消
			$("#exitModal").modal("hide");
			//登录页面
			window.location.href = "../login.html";
		});
		//删除按钮
		$(".a-delete").click(function() {
			//超连接href属性，href传给后台代码
			var url = $(this).attr("href"); //后台方法 delete?id=123;
			$("#deletemodal").modal('show');
			//点击确认删除按钮
			$("#btn_delete").one('click', function() {
				window.location.href = url; //跳转至后台（删除数据库。。。。）
				$("#deletemodal").modal("hide");
				return false; //阻止原有动作
			});
			return false; //阻止原有动作
		});
	</script>
</body>

</html>