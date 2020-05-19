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
							<li class="active"><a href="${ctx }/PageServlet?p=1"><i class="fa fa-commenting-o"></i> 管理员管理</a></li>
							<li><a href="FindSupplier?p=1"><i class="fa fa-user"></i> 供应商管理</a></li>
							<li><a href="FindProduct?p=1"><i class="fa fa-user"></i> 商品管理</a></li>
							<li><a href="FindModel?p=1"><i class="fa fa-user"></i> 商品规格管理</a></li>
							<li><a href="FindNews?p=1"><i class="fa fa-user"></i> 新闻管理</a></li>
							<li><a href="FindSize?p=1"><i class="fa fa-user"></i> 型号管理</a></li>
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
					管理员管理 <small>添加</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="./main.html"><i class="fa fa-home"></i> 首页</a></li>
					<li><a href="#">管理员相关</a></li>
					<li class="active"><a href="javascript:;">添加管理员</a></li>
				</ol>
			</section>

			<!--主内容 -->
			<section class="content">
				<!-- right column -->
				<div class="col-md-12" style="float:left;">
					<!-- Horizontal Form -->
					<div class="box box-info" style="border-radius: 12px;">
						<div class="box-header with-border">
							<h3 class="box-title">添加管理员</h3>
						</div>
						<!-- /.box-header -->
						<!-- form start -->
						<form class="form-horizontal" action="register.do" method="post" id="register" enctype="multipart/form-data">
							<div class="box-body">
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">登录名</label>

									<div class="col-sm-10">
										<input style="width: 60%;" type="text" class="form-control"
											id="inputUsername" name="inputUsername" placeholder="英文、数字组成，6-12位">
									</div>
								</div>

								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">密码</label>

									<div class="col-sm-10">
										<input style="width: 60%;" type="password" class="form-control"
											name="inputPassword" placeholder="6-20位">
									</div>
								</div>
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">再次确认密码</label>

									<div class="col-sm-10">
										<input style="width: 60%;" type="password" class="form-control"
											name="confirmInputPassword" placeholder="6-20位">
									</div>
								</div>

								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">真实姓名</label>

									<div class="col-sm-10">
										<input style="width: 60%;" type="text" class="form-control"
											name="inputRealname" placeholder="中文、英文组成">
									</div>
								</div>

								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">昵称</label>

									<div class="col-sm-10">
										<input style="width: 60%;" type="text" class="form-control"
											name="inputNickname" placeholder="中文、英文组成">
									</div>
								</div>

								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">联系电话</label>

									<div class="col-sm-10">
										<input style="width: 60%;" type="text" class="form-control"
											name="inputNumber" placeholder="手机号、座机号">
									</div>
								</div>

								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">邮箱</label>

									<div class="col-sm-10">
										<input style="width: 60%;" type="text" class="form-control"
											name="inputEmail3" placeholder="建议使用QQ、163/126邮箱">
									</div>
								</div>

								<div class="form-group">
									<label for="inputPassword3" class="col-sm-2 control-label">性别</label>

									<div class="col-sm-10">
										<label class="radio-inline"> <input type="radio"
											name="gender" checked="checked" value="0" />女
										</label> <label class="radio-inline"> <input type="radio"
											name="gender" value="1" />男
										</label>
									</div>
								</div>

								<div class="form-group">
									<label for="inputPassword3" class="col-sm-2 control-label">启用</label>

									<div class="col-sm-10">
										<label class="radio-inline"> <input type="radio"
											name="is_enable" checked="checked" value="1" />是
										</label> <label class="radio-inline"> <input type="radio"
											name="is_enable" value="0" />否
										</label>
									</div>
								</div>



								<div class="form-group">
									<label for="inputPassword3" class="col-sm-2 control-label">上传头像</label>
									<div class="col-sm-10">
										<div class="input-group">
											<input style="width: 300px;" type="file" name="thumbnail"
												value="请选择要上传图片" style="height: 43px;">
										</div>
									</div>
								</div>

							</div>
							<!-- /.box-body -->
							<div align="center" class="box-footer">
								
								<button  class="btn btn-default ">重置</button>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="submit" class="btn btn-info"></button>
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
	
	<!-- 表单验证功能 -->

	<script type="text/javascript">
$(document).ready(function() {
    $('#register').bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
        	inputUsername: {
                message: '此用户名不能使用',
                validators: {
                    notEmpty: {
                        message: '用户名不能为空'
                    },
                    stringLength: {
                        min: 5,
                        max: 12,
                        message: '用户名必须为5-12位'
                    },
                    regexp: {
                        regexp: /^[a-zA-Z0-9]+$/,
                        message: '用户名必须为英文或数字组成'
           	         }
           	     }
           	},
           	inputPassword: {
                validators: {
                    notEmpty: {
                        message: '密码不能为空'
                    },
                    stringLength: {
                        min: 6,
                        max: 12,
                        message: '密码必须为6-20位'
                    }
                    
                }
            },
            confirmInputPassword: {
                validators: {
                    notEmpty: {
                        message: '不能为空'
                    },
                    identical: {
                        field: 'inputPassword',
                        message: '此密码与之前输入的不一致'
                    }
                }
            },
           	inputRealname: {
                message: '请正确输入真实姓名',
                validators: {
                    notEmpty: {
                        message: '姓名不能为空'
                    },
                    regexp: {
                        regexp: /^[a-zA-Z\u4e00-\u9fa5]+$/,
                        message: '姓名必须为中文或英文组成'
           	        }
                                        
           	     }
           	},
           	inputNickname: {
                message: '此昵称不能使用',
                validators: {
                    notEmpty: {
                        message: '昵称不能为空'
                    },
                    regexp: {
                        regexp: /^[a-zA-Z\u4e00-\u9fa5]+$/,
                        message: '昵称必须为中文或英文组成'
           	        }
           	     }
           	},
            inputEmail3: {
                validators: {
                    notEmpty: {
                        message: '不能为空'
                    },
                    emailAddress: {
                        message: '这不是个有效的email地址'
                    }
                }
            },
            
            
            ages: {
                validators: {
                    lessThan: {
                        value: 100,
                        inclusive: true,
                        message: 'The ages has to be less than 100'
                    },
                    greaterThan: {
                        value: 10,
                        inclusive: false,
                        message: 'The ages has to be greater than or equals to 10'
                    }
                }
            }
        }
    });
});
</script>
</body>

</html>