<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<div class="box-footer">
	<div class="pull-right">
		<div class="pagination-info" id=""
			style="display: -moz-inline-stack; display: inline-block; padding: 7px 16px; color: #888;">
		</div>

		<div>
			
			<ul id="spupage" class="pagination"></ul>
		</div>




		<%-- <ul class="pagination pagination-flat no-margin pull-right">
										<li class="first"><a href="${ctx }/PageServlet?p=1">«</a></li>
										<li><a href="#">‹</a></li>
										<li class="active"><a href="#">1</a></li>
										<li><a href="#">2</a></li>
										<li><a href="#">3</a></li>
										<li><a href="#">›</a></li>
										<li><a href="#">»</a></li>
									</ul> --%>
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
<script src="../addon/jqPaginator-1.2.0/dist/jqPaginator.min.js"></script>

<script type="text/javascript">
	//退出事件
	$("#btn_logout").click(function() {
		//取消
		$("#exitModal").modal("hide");
		//登录页面
		window.location.href = "${ctx}/index.jsp";
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