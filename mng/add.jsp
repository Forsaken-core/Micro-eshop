<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>卓讯CRM-后台管理</title>
		<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
		<link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="../font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="../adminlte/css/AdminLTE.min.css">
		<link rel="stylesheet" href="../adminlte/css/skins/_all-skins.min.css">
		<!---my97datePicke==css-->
		<link rel="stylesheet" href="../plugins/My97DatePicker/skin/default/datepicker.css" />
		<!---富文本编辑器==css-->
		<link rel="stylesheet" href="../plugins/kindeditor/themes/default/default.css" />
	</head>

	<body class="hold-transition skin-green sidebar-mini fixed">
		<div class="wrapper">
			<!-- Main Header -->
			<header class="main-header">
				<!-- Logo -->
				<a href="main.html" class="logo">
					<!-- mini logo for sidebar mini 50x50 pixels -->
					<span class="logo-mini"><b>CRM</b></span>
					<!-- logo for regular state and mobile devices -->
					<span class="logo-lg"><b>卓讯CRM</b>管理系统</span>
				</a>

				<!-- Header Navbar -->
				<nav class="navbar navbar-static-top" role="navigation">
					<!-- Sidebar toggle button-->
					<a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
						<span class="sr-only">切换侧边栏</span>
					</a>
					<!-- Navbar Right Menu -->
					<div class="navbar-custom-menu">
						<ul class="nav navbar-nav">

							<!-- Notifications Menu -->
							<li class="dropdown notifications-menu messages-menu tasks-menu">
								<!-- Menu toggle button -->
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">
									<i class="fa fa-bell-o"></i>
									<span class="label label-warning">10</span>
								</a>
								<ul class="dropdown-menu">
									<li class="header">你有 10 个待办事项</li>
									<li>
										<!-- Inner Menu: contains the notifications -->
										<ul class="menu">
											<li>
												<!-- start notification -->
												<a href="#">
													<i class="fa fa-users text-aqua"></i> 5 个新订单待确认
												</a>
											</li>
											<li>
												<a href="#">
													<div class="pull-left">
														<!-- User Image -->
														<img src="../adminlte/img/avatar04.png" class="img-circle" alt="User Image">
													</div>
													<!-- Message title and timestamp -->
													<h4>
                        中午开会
                        <small><i class="fa fa-clock-o"></i> 5 分钟前</small>
                      </h4>
													<!-- The message -->
													<p>今天中午13:30召开全体员工会议</p>
												</a>
											</li>
											<li>
												<a href="#">
													<div class="pull-left">
														<!-- User Image -->
														<img src="../adminlte/img/avatar04.png" class="img-circle" alt="User Image">
													</div>
													<!-- Message title and timestamp -->
													<h4>
                        晚上18点聚会
                        <small><i class="fa fa-clock-o"></i> 5 分钟前</small>
                      </h4>
													<!-- The message -->
													<p>今天中午13:30召开全体员工会议</p>
												</a>
											</li>
											<li>
												<a href="#">
													<!-- Task title and progress text -->
													<h3>
                        微销项目开发进度
                        <small class="pull-right">20%</small>
                      </h3>
													<!-- The progress bar -->
													<div class="progress xs">
														<!-- Change the css width attribute to simulate progress -->
														<div class="progress-bar progress-bar-aqua" style="width: 20%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
															<span class="sr-only">20% 已完成</span>
														</div>
													</div>
												</a>
											</li>
											<li>
												<a href="#">
													<i class="fa fa-warning text-yellow"></i> 库存告急库存告急库存告急库存告急库存告急
												</a>
											</li>
											<!-- end notification -->
										</ul>
									</li>
									<li class="footer">
										<a href="#">查看所有</a>
									</li>
								</ul>
							</li>

							<!-- User Account Menu -->
							<li class="dropdown user user-menu">
								<!-- Menu Toggle Button -->
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">
									<!-- The user image in the navbar-->
									<img src="../adminlte/img/avatar04.png" class="user-image" alt="User Image">
									<!-- hidden-xs hides the username on small devices so only the image appears. -->
									<span class="hidden-xs">Test</span>
								</a>
								<ul class="dropdown-menu">
									<!-- The user image in the menu -->
									<li class="user-header">
										<img src="../adminlte/img/avatar04.png" class="img-circle" alt="User Image">
										<p>
											- Java Developer
											<small>互联网老兵...</small>
										</p>
									</li>
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
												<a href="#exitModal" data-toggle="modal"><i class="fa fa-power-off"></i> 退出</a>
											</div>
										</div>
									</li>
									<!-- Menu Footer
              <li class="user-footer">
                <div class="pull-left">
                  <a href="#" class="btn btn-default btn-flat">修改密码</a>
                </div>
                <div class="pull-right">
                  <a href="#exitModal" data-toggle="modal" class="btn btn-default btn-flat">退出</a>
                </div>
              </li>-->
								</ul>
							</li>
							<li class="dropdown tasks tasks-menu">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-gears"></i></a>
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

						<li class="treeview">
							<a href="#"><i class="fa fa-shopping-cart"></i> <span>营销管理</span>
								<span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
							</a>
							<ul class="treeview-menu">
								<li>
									<a href="list02.html"><i class="fa fa-reorder"></i> 客户跟踪记录</a>
								</li>
								<li>
									<a href="list.html"><i class="fa fa-cube"></i> 客户开发计划</a>
								</li>
								<li>
									<a href="#"><i class="fa fa-reorder"></i> 成单客户</a>
								</li>
								<li>
									<a href="list.html"><i class="fa fa-cube"></i> 流失客户</a>
								</li>
							</ul>
						</li>

						<li class="treeview">
							<a href="#"><i class="fa fa-users"></i> <span>客户管理</span>
								<span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
							</a>
							<ul class="treeview-menu">
								<li>
									<a href="#"><i class="fa fa-files-o"></i> 客户信息</a>
								</li>
								<li>
									<a href="#"><i class="fa fa-list"></i> 客户指派</a>
								</li>
								<li>
									<a href="#"><i class="fa fa-list"></i> 潜客共享</a>
								</li>
							</ul>
						</li>

						<li class="treeview">
							<a href="#"><i class="fa fa-edit"></i> <span>统计报表</span>
								<span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
							</a>
							<ul class="treeview-menu">
								<li>
									<a href="#"><i class="fa fa-files-o"></i> 客户贡献分析</a>
								</li>
								<li>
									<a href="#"><i class="fa fa-list"></i> 客户流失分析</a>
								</li>
							</ul>
						</li>

						<li class="treeview">
							<a href="#"><i class="fa fa-database"></i> <span>基础数据</span>
								<span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
							</a>
							<ul class="treeview-menu">
								<li>
									<a href="#"><i class="fa fa-commenting-o"></i> 开班信息</a>
								</li>
								<li>
									<a href="#"><i class="fa fa-user"></i> 客户分类</a>
								</li>
								<li>
									<a href="#"><i class="fa fa-user"></i> 客户来源</a>
								</li>
								<li>
									<a href="#"><i class="fa fa-user"></i> 学校管理</a>
								</li>
								<li>
									<a href="#"><i class="fa fa-user"></i> 专业管理</a>
								</li>
								<li>
									<a href="#"><i class="fa fa-user"></i> 班级管理</a>
								</li>
								<li>
									<a href="#"><i class="fa fa-commenting-o"></i> 产品信息</a>
								</li>
							</ul>
						</li>
						<li class="treeview">
							<a href="#"><i class="fa fa-book"></i> <span>知识库</span>
								<span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
							</a>
							<ul class="treeview-menu">
								<li>
									<a href="#"><i class="fa fa-list"></i> 知识列表</a>
								</li>
								<li>
									<a href="#"><i class="fa fa-list-ul"></i> 知识库分类</a>
								</li>
							</ul>
						</li>

						<li class="treeview">
							<a href="#"><i class="fa fa-eye"></i> <span>权限管理</span>
								<span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
							</a>
							<ul class="treeview-menu">
								<li>
									<a href="#"><i class="fa fa-sitemap"></i> 用户管理</a>
								</li>
								<li>
									<a href="#"><i class="fa fa-home"></i> 角色管理</a>
								</li>
								<li>
									<a href="#"><i class="fa fa-database"></i> 菜单管理</a>
								</li>
								<li>
									<a href="#"><i class="fa fa-edit"></i> 操作管理</a>
								</li>
							</ul>
						</li>
						<li class="treeview active">
							<a href="#"><i class="fa fa-gear"></i> <span>系统管理</span>
								<span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
							</a>
							<ul class="treeview-menu">
								<li class="active">
									<a href="javascript:;"><i class="fa fa-sitemap"></i> 公告信息</a>
								</li>
								<li>
									<a href="#"><i class="fa fa-sitemap"></i> 日志信息</a>
								</li>
								<li>
									<a href="#"><i class="fa fa-home"></i> 数据备份</a>
								</li>
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
        公告添加信息
        <small>2017-07-07</small>
      </h1>
					<ol class="breadcrumb">
						<li>
							<a href="./main.html"><i class="fa fa-home"></i> 首页</a>
						</li>
						<li>
							<a href="#">系统设置</a>
						</li>
						<li class="active">
							<a href="javascript:;">公告添加</a>
						</li>
					</ol>
				</section>

				<!--主内容 -->
				<section class="content">
					<!-- right column -->
					<div class="col-md-12">
						<!-- Horizontal Form -->
						<div class="box box-info" style=" border-radius: 12px;">
							<div class="box-header with-border">
								<h3 class="box-title">添加公告</h3>
							</div>
							<!-- /.box-header -->
							<!-- form start -->
							<form class="form-horizontal">
								<div class="box-body">
									<div class="form-group">
										<label for="inputEmail3" class="col-sm-2 control-label">标题</label>

										<div class="col-sm-10">
											<input type="text" class="form-control" id="inputEmail3" placeholder="Email">
										</div>
									</div>
									<div class="form-group">
										<label for="inputPassword3" class="col-sm-2 control-label">状态:</label>

										<div class="col-sm-10">
											<label class="radio-inline">
											<input type="radio" name="status" checked="checked" value="0" />正常:
											</label>
											<label class="radio-inline">
											<input type="radio" name="status" value="1" />锁定
										 </label>
										</div>
									</div>

									<div class="form-group">
										<label for="inputPassword3" class="col-sm-2 control-label">发布会场:</label>
										<div class="col-sm-10">
											<select class="form-control">
												<option>天津梅江</option>
												<option>北京三元桥会展</option>
											</select>
										</div>
									</div>

									<div class="form-group">
										<label for="inputPassword3" class="col-sm-2 control-label">发布时间:</label>
										<div class="col-sm-10">
											<!--时间图标-->
											<div class="input-group">
												<span class="input-group-addon"><i class="fa  fa-calendar"></i></span>
												<input type="text" name="pub_date" class="form-control" id="timktask" />
											</div>
										</div>
									</div>

									<div class="form-group">
										<label for="inputPassword3" class="col-sm-2 control-label">上传主图:</label>
										<div class="col-sm-10">
											<div class="input-group">
												<input type="text" name="pub_date" class="form-control" readonly="readonly" id="btn_upload" placeholder="请选择要上传图片" style="height: 43px;"></input>
												<span class="input-group-addon"><i class="fa  fa-calendar"></i>
											</div>
										</div>
									</div>
									<div class="form-group">
										<label for="inputPassword3" class="col-sm-2 control-label">发布内容:</label>
										<div class="col-sm-10">
											<!--富文本编辑器控件-->
											<textarea id="description" name="description" rows="15" cols="100" class="form-control"></textarea>
										</div>
									</div>
								</div>
								<!-- /.box-body -->
								<div class="box-footer">
									<button type="submit" class="btn btn-default">重置</button>
													<button type="submit" class="btn btn-info pull-right">确定</button>
												</div>
												<!-- /.box-footer -->
							</form>
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
					<strong>Copyright &copy; 2017 <a href="#">ITVK.CN</a>.</strong> All rights reserved.
				</footer>
				</div>
				<!-- ./wrapper -->
				<!--删除模态框开始--->
				<div class="modal modal-danger fade" id="deletemodal">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
												<h4 class="modal-title">删除对话框</h4>
											</div>
											<div class="modal-body">
												<p>是否确认删除&hellip;</p>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-outline pull-left" data-dismiss="modal">取消</button>
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
												<button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
												<h4 class="modal-title">退出对话框</h4>
											</div>
											<div class="modal-body">
												<p>是否确认退出&hellip;</p>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-outline pull-left" data-dismiss="modal">取消</button>
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
								<!--时间日期控件开始  -->
								<script src="../plugins/My97DatePicker/WdatePicker.js"></script>
								<!--时间日期控件结束   -->

								<!--富文本编辑器开始 -->
								<script src="../plugins/kindeditor/kindeditor-all.js"></script>
								<script src="../plugins/kindeditor/lang/zh-CN.js"></script>
								<!--富文本编辑器结束 -->
								<!--富文本编辑器结束 -->
								<script type="text/javascript">
									//退出事件
									$("#btn_logout").click(function() {
										//取消
										$("#exitModal").modal("hide");
										//登录页面
										window.location.href = "../login.html";
									});

									//点击时间日期控件
									$("#timktask").click(function() {
										WdatePicker(); //调用my97datepicker封装JS
									});
									//富文本编辑器创建---显示哪个控件中
									var editor = KindEditor.create('textarea[name="description"]', {
										width: '100%',
										urlType: "", //设置站内本地URL：默认是""，可选值有"relative"、"absolute"、"domain"
										uploadJson: 'ke_upload', //指定上传文件的服务器端程序请求路径
										fileManagerJson: 'ke_manager', //指定浏览远程图片的服务器端程序请求路径
										allowFileManager: true //是否允许浏览远程服务器上的文件。
									});

									//上传主图  调用富文本编辑中文件上传功能
									var editor2 = KindEditor.editor({
										allowFileManager: true //是否允许浏览远程服务器上的文件。
									});
									//单独富文本编辑器上传功能
									$("#btn_upload").click(function() {
										editor2.loadPlugin('image', function() {
											//富文本编辑图片上传对话框
											editor2.plugin.imageDialog({
												imageUrl: $("#url1").val(), //文件上传网址
												clickFn: function(url, title, width, height, border, align) {
													$('#url1').val(url);
													editor2.hideDialog();
												}
											});
										});
									});
								</script>
	</body>

</html>