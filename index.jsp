<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>卓讯微商城后台管理 | 登录</title>
<jsp:include page="Head.html"></jsp:include>

</head>

<body style="background-image: url('/categorypth/bckImg.jpg');" class="hold-transition login-page">


	<div class="login-box">
		<div class="login-logo">
			<a style="color:gainsboro;" href="../../index2.html">卓讯<b>CRM</b>管理系统
			</a>
		</div>
		<div class="login-box-body"
			style="border-top: 6px solid #00A65A; border-radius: 6px;">
			<p class="login-box-msg">登录</p>

			<form action="login.do" method="post">
				<div class="form-group has-feedback">
					<input name="username" type="text" class="form-control"
						placeholder="请输入用户名"> <span
						class="glyphicon glyphicon-envelope form-control-feedback"></span>
				</div>
				<div class="form-group has-feedback">
					<input name="password" type="password" class="form-control"
						placeholder="请输入密码"> <span
						class="glyphicon glyphicon-lock form-control-feedback"></span>
				</div>

				<div class="row">
					<div class="col-xs-8">
						<input type="text" class="form-control" id="cc" name="check"
							placeholder="请输入验证码">
					</div>
					<div class="col-xs-4">
						<img src="vcServlet" id="imgValidcode" />
					</div>
				</div>

				<div class="row">
					<div class="col-xs-8 checkbox">
						<input type="checkbox" id="remeber" name="remeber"
							checked="checked"> &nbsp;是否记住账号
					</div>
					<div class="col-xs-4">
						<button type="submit" class="btn btn-success btn-block btn-flat">登录</button>
					</div>
				</div>
		</div>
		</form>
	</div>
	</div>
	<!-- jQuery 3 -->
	<script src="plugins/jQuery/jquery-2.2.3.min.js"></script>
	<!-- Bootstrap 3.3.7 -->
	<script src="bootstrap/js/bootstrap.min.js"></script>
	<!-- iCheck -->
	<script src="plugins/iCheck/icheck.min.js"></script>
	<script>
		$(function() {
			$('input').iCheck({
				checkboxClass : 'icheckbox_square-blue',
				radioClass : 'iradio_square-blue',
				increaseArea : '20%' // optional
			});
		});
		var check = document.getElementById("imgValidcode")
		check.onclick = function() {
			check.src = "vcServlet?" + new Date().getTime();
		}
	</script>
</body>

</html>