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
							<li class="active"><a href="FindSupplier?p=1"><i class="fa fa-user"></i> 供应商管理</a></li>
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

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>
					供应商列表 <small>列表页面</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="${ctx }/PageServlet?p=1"><i class="fa fa-home"></i> 首页</a></li>
					<li><a href="FindSupplier?p=1">供应商管理</a></li>
					<li class="active"><a href="javascript:;">供应商列表</a></li>
				</ol>
			</section>

			<!--主内容 -->
			<section class="content">
				<!-- right column -->
				<div class="col-md-12" style="float:left;">
					<!-- Horizontal Form -->
					<div class="box box-info" style="border-radius: 12px;">
						<div class="box-header with-border">
							<h3 class="box-title">添加供应商</h3>
						</div>
						<!-- /.box-header -->
						<!-- form start -->
						<form class="form-horizontal" action="SupplierAdd.do" method="post" id="SupplierAdd" enctype="multipart/form-data">
							<div class="box-body">
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">供应商名称</label>

									<div class="col-sm-10">
										<input style="width: 60%;" type="text" class="form-control"
											id="name" name="name" placeholder="请输入供应商名字">
									</div>
								</div>
								
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">供应商邮编</label>

									<div class="col-sm-10">
										<input style="width: 60%;" type="text" class="form-control"
											id="code" name="code" placeholder="请输入供应商邮编">
									</div>
								</div>

								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">供应商地址</label>

									<div class="col-sm-10">
										<input style="width: 60%;" type="text" class="form-control"
											id="address" name="address" placeholder="请输入供应商地址">
									</div>
								</div>
								
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">供应商联系人</label>

									<div class="col-sm-10">
										<input style="width: 60%;" type="text" class="form-control"
											id="contact" name="contact" placeholder="请输入供应商联系人">
									</div>
								</div>
								
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">联系电话</label>

									<div class="col-sm-10">
										<input style="width: 60%;" type="text" class="form-control"
											name="tel" placeholder="手机号、座机号">
									</div>
								</div>

								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">邮箱</label>

									<div class="col-sm-10">
										<input style="width: 60%;" type="text" class="form-control" id="email"
											name="email" placeholder="建议使用QQ、163/126邮箱">
									</div>
								</div>
								
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">备注</label>

									<div class="col-sm-10">
										<input style="width: 60%;" type="text" class="form-control"
											id="remark" name="remark" placeholder="请输入备注">
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

		<!-- Main Footer 富文本编辑器 name用description -->
		<jsp:include page="FormFooter.jsp"></jsp:include>
	
	<!-- 表单验证功能 -->

	<script type="text/javascript">
	
	
$(document).ready(function() {
    $('#SupplierAdd').bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        
        fields: {
        	name: {
                message: '此名称不能使用',
                validators: {
                    notEmpty: {
                        message: '名称不能为空'
                    }/*  此处加入remote可以验证名称是否重复！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！！  */                   
           	     }
           	},
           	code: {
                validators: {
                    notEmpty: {
                        message: '邮编不能为空'
                    }
                }
            },
            address: {
                validators: {
                    notEmpty: {
                        message: '地址不能为空'
                    }
                }
            },
           	contact: {
                message: '请正确输入联系人',
                validators: {
                    notEmpty: {
                        message: '联系人不能为空'
                    }
                                        
           	     }
           	},
           	tel: {
                message: '此电话不能使用',
                validators: {
                    notEmpty: {
                        message: '电话不能为空'
                    },
                    regexp: {
                        regexp: /^((0\d{2,3}-\d{7,8})|(1[3584]\d{9}))$/,
                        message: '电话格式错误'
           	        }
           	     }
           	},
            email: {
                validators: {
                    notEmpty: {
                        message: '不能为空'
                    },
                    emailAddress: {
                        message: '这不是个有效的email地址'
                    }
                }
            },
            
            remark: {
                validators: {
                    notEmpty: {
                        message: '不能为空'
                    }
                }
            }
        }
    });
});
</script>
</body>

</html>