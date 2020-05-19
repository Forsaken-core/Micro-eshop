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


					

					<li class="treeview active"><a href="#"><i class="fa fa-database"></i>
							<span>基础数据</span> <span class="pull-right-container"> <i
								class="fa fa-angle-left pull-right"></i>
						</span> </a>
						<ul class="treeview-menu">
							<li><a href="${ctx }/PageServlet?p=1"><i class="fa fa-commenting-o"></i> 管理员管理</a></li>
							<li><a href="FindSupplier?p=1"><i class="fa fa-user"></i> 供应商管理</a></li>
							<li class="active"><a href="FindProduct?p=1"><i class="fa fa-user"></i> 商品管理</a></li>
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
					商品管理 <small>编辑</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="./main.html"><i class="fa fa-home"></i> 首页</a></li>
					<li><a href="#">商品管理</a></li>
					<li class="active"><a href="javascript:;">编辑商品</a></li>
				</ol>
			</section>

			<!--主内容 -->
			<section class="content">
				<!-- right column -->
				<div class="col-md-12" style="float:left;">
					<!-- Horizontal Form -->
					<div class="box box-info" style="border-radius: 12px;">
						<div class="box-header with-border">
							<h3 class="box-title">编辑商品</h3>
						</div>
						<!-- /.box-header -->
						<!-- form start -->
						<form class="form-horizontal" action="UpdateProduct.do" method="post" id="updateproduct" enctype="multipart/form-data">
							<div class="box-body">
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">商品名称</label>

									<div class="col-sm-10">
										<input style="width: 60%;" type="text" class="form-control"
											id="name" name="name" placeholder="请输入商品名称" value="${product.name }">
									</div>
								</div>

								<!-- 级联菜单！！！！！！！！！！！ -->
								<div class="form-group">
										<label for="inputPassword3" class="col-sm-2 control-label">商品分类</label>
										<div class="col-sm-3">
											<select name="p_id1" id="cate_id1" class="form-control" onChange="testt()">
												<c:forEach items="${categoryfirstlist.items }" var="c" >
													<option value="${c.id }">${c.name }</option>
												</c:forEach>
											</select>
										</div>
										<div class="col-sm-3">
											<select name="p_id2" id="cate_id2" class="form-control">
												
											</select>
										</div>
								</div>
								
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">所属供应商</label>

									<div class="col-sm-10">
										<input style="width: 60%;" type="text" class="form-control"
											name="supplier_id" placeholder="请输入所属供应商" value="${product.supplier_id }">
									</div>
								</div>

								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">商品简述介绍</label>

									<div class="col-sm-10">
										<input style="width: 60%;" type="text" class="form-control"
											name="introduction" placeholder="请输入商品简述介绍" value="${product.selling_description }">
									</div>
								</div>
								
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">商品库存</label>

									<div class="col-sm-10">
										<input style="width: 60%;" type="text" class="form-control"
											name="inventory" placeholder="请输入商品库存" value="${product.inventory }">
									</div>
								</div>
								
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">商品进价</label>

									<div class="col-sm-10">
										<input style="width: 60%;" type="text" class="form-control"
											name="price" placeholder="请输入商品进价(最多两位小数)" value="${product.price }">
									</div>
								</div>
								
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">商品售价</label>

									<div class="col-sm-10">
										<input style="width: 60%;" type="text" class="form-control"
											name="sale_price" placeholder="请输入商品售价(最多两位小数)" value="${product.sale_price }">
									</div>
								</div>
								
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">商品产地</label>

									<div class="col-sm-10">
										<input style="width: 60%;" type="text" class="form-control"
											name="habitat" placeholder="请输入商品产地" value="${product.habitat }">
									</div>
								</div>
								
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">商品特殊说明</label>

									<div class="col-sm-10">
										<input style="width: 60%;" type="text" class="form-control"
											name="special_explanation" placeholder="请输入商品特殊说明" value="${product.special_explanation }">
									</div>
								</div>
								
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">商品重量</label>

									<div class="col-sm-10">
										<input style="width: 60%;" type="text" class="form-control"
											name="weight" placeholder="请输入商品重量" value="${product.weight }">
									</div>
								</div>
								
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">商品规格</label>

									<div class="col-sm-10">
										<input style="width: 60%;" type="text" class="form-control"
											name="model" placeholder="请输入商品规格" value="${product.model }">
									</div>
								</div>
								
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">商品适用人群</label>

									<div class="col-sm-10">
										<input style="width: 60%;" type="text" class="form-control"
											name="adaptation_people" placeholder="请输入商品适用人群" value="${product.adaptation_people }">
									</div>
								</div>

								<div class="form-group">
									<label for="inputPassword3" class="col-sm-2 control-label">是否参加活动</label>

									<div class="col-sm-10">
										<label class="radio-inline"> <input type="radio"
											name="is_activity" value="1" />是
										</label> <label class="radio-inline"> <input type="radio"
											name="is_activity"  checked="checked" value="0" />否
										</label>
									</div>
								</div>
								<!-- 设定隐藏出现！！！！！！！！！！！！！！！ -->
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">参加活动数量</label>

									<div class="col-sm-10">
										<input style="width: 60%;" type="text" class="form-control"
											name="activity_number" placeholder="请输入参加活动数量" value="${((product.activity_number==null) ? 0 : (product.activity_number) )}">
									</div>
								</div>
								
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">参加活动价格</label>

									<div class="col-sm-10">
										<input style="width: 60%;" type="text" class="form-control"
											name="activity_count" placeholder="参加活动价格" value="${product.activity_count }">
									</div>
								</div>
								
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">商品起购数量</label>

									<div class="col-sm-10">
										<input style="width: 60%;" type="text" class="form-control"
											name="start_buy_count" placeholder="请输入商品起购数量" value="${product.start_buy_count }">
									</div>
								</div>
								
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">商品发货地点</label>

									<div class="col-sm-10">
										<input style="width: 60%;" type="text" class="form-control"
											name="consignment" placeholder="请输入商品发货地点" value="${product.consignment }">
									</div>
								</div>
								
								<div class="form-group">
									<label for="inputEmail3" class="col-sm-2 control-label">其他平台价格</label>

									<div class="col-sm-10">
										<input style="width: 60%;" type="text" class="form-control"
											name="market_price" placeholder="请输入其他平台价格" value="${product.market_price }">
									</div>
								</div>
								
								<div class="form-group">
										<label for="inputPassword3" class="col-sm-2 control-label">保质期:</label>
										<div class="col-sm-10">
											<!--时间图标-->
											<div class="input-group">
												<span class="input-group-addon"><i class="fa  fa-calendar"></i></span>
												<input style="width: 58%;" type="text" name="quality_time" class="form-control" id="timktask1" value="${product.quality_time }"/>
											</div>
										</div>
								</div>
								
								<div class="form-group">
										<label for="inputPassword3" class="col-sm-2 control-label">商品详情</label>
										<div class="col-sm-6">
											<!--富文本编辑器控件-->
											<textarea id="description" name="description" rows="15" cols="70" class="form-control">${product.detail_description }</textarea>
										</div>
								</div>
								
								<div class="form-group">
										<label for="inputPassword3" class="col-sm-2 control-label">开售日期</label>
										<div class="col-sm-10">
											<!--时间图标-->
											<div class="input-group">
												<span class="input-group-addon"><i class="fa  fa-calendar"></i></span>
												<input style="width: 58%;" type="text" name="sale_time" class="form-control" id="timktask" value="${product.sale_time }"/>
											</div>
										</div>
								</div>

								<div class="form-group">
									<label for="inputPassword3" class="col-sm-2 control-label">上传主图</label>
									<div class="col-sm-10">
										<div class="input-group">
											<input style="width: 300px;" type="file" name="thumbnail"
												value="请选择要上传图片" style="height: 43px;">
										</div>
									</div>
								</div>
								
								<div class="form-group">
									<label for="inputPassword3" class="col-sm-2 control-label">是否上架</label>

									<div class="col-sm-10">
										<label class="radio-inline"> <input type="radio"
											name="state" checked="checked" value="1" />是
										</label> <label class="radio-inline"> <input type="radio"
											name="state"  value="0" />否
										</label>
									</div>
								</div>
								
								<div class="form-group">
									<label for="inputPassword3" class="col-sm-2 control-label">运费</label>

									<div class="col-sm-10">
										<label class="radio-inline"> <input type="radio"
											name="in_ship" checked="checked" value="1" />卖家承担
										</label> <label class="radio-inline"> <input type="radio"
											name="in_ship"  value="0" />买家承担
										</label>
									</div>
								</div>

							</div>
							<!-- /.box-body -->
							<div align="center" class="box-footer">
								
								<button  class="btn btn-default ">重置</button>
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
                        min: 6,
                        max: 12,
                        message: '用户名必须为6-12位'
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
	<!-- Ajax -->
	<script type="text/javascript">
		//商品分类级联
		function testt(){
			$.ajax({
				url:"ajax1 ",
				type:"post",
				data:{id:$("#cate_id1").val()},
				datetype:"json",
				success:function(data){
					
					
					var items = data.ca_id2;
					var select = $("#cate_id2");
					select.empty();
					if(items != null){
						for(var i in items){
							var item = items[i];
							select.append("<option value ='" + item.id + "'>" + item.name + "</option>");
						}
					}else{
						
					}
				}
			});
			
		}
	
	</script>
</body>

</html>