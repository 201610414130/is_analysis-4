<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="Basejsp.jsp"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
    <meta charset="utf-8" />
    <title>登录</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta content="" name="description" />
    <meta content="" name="author" />
    <link href="public/media/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
$(document).ready(function() {
	$("#login").click(function() {
		console.log("ti jiao qing qiu zhong");
		var str = {
			"userid":$("#username").val(),
			"pwd":$("#pwd").val()
		}
		var data = {
			"data":JSON.stringify(str), 
			"type":3
		};
		$.ajax({
			async : true,
			type : "POST",
			url : "login",
			dataType:"json",
			data : data,
			success : function(msg) {
				console.log("msg-type:"+typeof(msg)+"\nmsg-data:"+msg);
				var jsondata = JSON.parse(msg);
				if(jsondata.message)
					window.location.href = "index.html"
				else
					alert("登录失败,请检查用户\n名密码和用户类型是否正确")
			},
			error : function(msg) {
				console.log("Tomcat Error");
				return;
			},
		});
	})
})
</script>
</head>

<!-- END HEAD -->

<!-- BEGIN BODY -->

<body class="login">

	<!-- BEGIN LOGO -->

	<div class="logo">

		<img src="media/image/logo.png" alt="" /> 

	</div>

	<!-- END LOGO -->

	<!-- BEGIN LOGIN -->

	<div class="content">

		<!-- BEGIN LOGIN FORM -->

		<form class="form-vertical login-form">

			<h4 class="form-title">基于GitHub的实验管理平台</h4>

			<div class="alert alert-error hide">

				<button class="close" data-dismiss="alert"></button>

				<span>请输入用户名和密码!</span>

			</div>

			<div class="control-group">

				<!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->

				<label class="control-label visible-ie8 visible-ie9">Username</label>

				<div class="controls">

					<div class="input-icon left">

						<i class="icon-user"></i>

						<input id="username" class="m-wrap placeholder-no-fix" type="text" placeholder="Username" name="username"/>

					</div>

				</div>

			</div>

			<div class="control-group">

				<label class="control-label visible-ie8 visible-ie9">Password</label>

				<div class="controls">

					<div class="input-icon left">

						<i class="icon-lock"></i>

						<input id="pwd" class="m-wrap placeholder-no-fix" type="password" placeholder="Password" name="password"/>

					</div>

				</div>

			</div>

			<div class="control-group">
				<label class="control-label">用户类型</label>
				<div class="controls" id="ttype" style="display: inline-block;">
					<label class="radio"> 
						<input type="radio" name="optionsRadios1" value="3" style="display: inline-block;"/> 学生
					</label> 
					<label class="radio"> 
						<input type="radio" name="optionsRadios1" value="2" checked /> 教师
					</label> 
					<label class="radio"> 
						<input type="radio" name="optionsRadios1" value="1" /> 管理员
					</label>
				</div>
			</div>
			
			<div class="form-actions">

				<button  class="btn pull-left">

				重置 

				</button>
				
				<button id="login" class="btn green pull-right">

				登录 

				</button>            

			</div>

		</form>

	</div>

	<!-- END LOGIN -->

	<!-- BEGIN COPYRIGHT -->

	<div class="copyright">

		2018 &copy; 基于GitHub的实验管理平台.

	</div>


	<script src="public/media/js/app.js" type="text/javascript"></script>

	<script src="public/media/js/login.js" type="text/javascript"></script>      

	<script>

		jQuery(document).ready(function() {     

		  App.init();

		  Login.init();

		});

	</script>

	<!-- END JAVASCRIPTS -->

</body>

<!-- END BODY -->

</html>