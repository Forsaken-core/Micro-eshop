<%@ page language="Java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>卓讯CRM-后台管理</title>
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<link rel="stylesheet" href="${ctx }/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="${ctx }/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="${ctx }/adminlte/css/AdminLTE.min.css">
<link rel="stylesheet" href="${ctx }/adminlte/css/skins/_all-skins.min.css">

<script type="text/javascript" src="${ctx }/addon/jqPaginator-1.2.0/dist/jqPaginator.min.js"></script>
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
				<span class="logo-mini"><b>微商城</b></span> <!-- logo for regular state and mobile devices -->
				<span class="logo-lg"><b>卓讯微商城</b>管理系统</span>
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
					

						
						<!-- User Account Menu -->
						<li class="dropdown user user-menu">
							<!-- Menu Toggle Button --> <a href="#" class="dropdown-toggle"
							data-toggle="dropdown"> <!-- The user image in the navbar-->
								<img src="/headpth/${ sessionScope.login.thumbnail }" class="user-image" alt="User Image">
								<!-- hidden-xs hides the username on small devices so only the image appears. -->
								<span class="hidden-xs">${ sessionScope.login.nick_name }</span>
						</a>
							<ul class="dropdown-menu">
								<!-- The user image in the menu -->
								<!-- 加载头像路径信息 -->

								<li class="user-header">
								<img src="/headpth/${ sessionScope.login.thumbnail }" class="img-circle"	alt="User Image">
									<p>
										- Java Developer <small>互联网老兵... </small>
									</p></li>
								<!-- Menu Body -->
								<li class="user-body">
									<div class="row">
										
										<div class="col-xs-12 text-center">
											<a href="#exitModal" data-toggle="modal"><i
												class="fa fa-power-off"></i> 退出</a>
										</div>
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