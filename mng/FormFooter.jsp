<%@ page contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<footer class="main-footer" style="height:60px;">
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
    <script type="text/javascript" src="../bootstrap/js/bootstrapValidator.min.js"></script>
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
			window.location.href = "${ctx}/index.jsp";
		});

		//点击时间日期控件
		$("#timktask").click(function() {
			WdatePicker(); //调用my97datepicker封装JS
		});
		$("#timktask1").click(function() {
			WdatePicker(); //调用my97datepicker封装JS
		});
		//富文本编辑器创建---显示哪个控件中
		var editor = KindEditor.create('textarea[name="description"]', {
			width : '100%',
			urlType : "", //设置站内本地URL：默认是""，可选值有"relative"、"absolute"、"domain"
			uploadJson : 'ke_upload', //指定上传文件的服务器端程序请求路径
			fileManagerJson : 'ke_manager', //指定浏览远程图片的服务器端程序请求路径
			allowFileManager : true
		//是否允许浏览远程服务器上的文件。
		});

		//上传主图  调用富文本编辑中文件上传功能
		var editor2 = KindEditor.editor({
			allowFileManager : true
		//是否允许浏览远程服务器上的文件。
		});
		//单独富文本编辑器上传功能
		$("#btn_upload").click(
				function() {
					editor2.loadPlugin('image', function() {
						//富文本编辑图片上传对话框
						editor2.plugin.imageDialog({
							imageUrl : $("#url1").val(), //文件上传网址
							clickFn : function(url, title, width, height,
									border, align) {
								$('#url1').val(url);
								editor2.hideDialog();
							}
						});
					});
				});
	</script>