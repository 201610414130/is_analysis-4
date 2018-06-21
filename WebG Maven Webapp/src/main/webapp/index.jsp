<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<html>
<script type="text/javascript" src="js/jquery-3.1.1.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$("#getStr").click(function() {
		console.log("ti jiao qing qiu zhong");
		var str = '{"userid":"011001","pwd":"011001"}'
		var data = {"data":str, "type":1};
		$.ajax({
			async : true,
			type : "POST",
			url : "login",
			dataType:"json",
			data : data,
			success : function(msg) {
				console.log("msg-type:"+typeof(msg)+"\nmsg-data:"+msg);
				console.log(JSON.parse(msg))
			},
			error : function(msg) {
				console.log("Tomcat Error");
				return;
			},
		});
	})
	$("#logout").click(function() {
		console.log("logout - doing");
		$.ajax({
			url : "logout",
			success : function(msg) {
				console.log("success:type"+typeof(msg)+"success:"+msg);
				console.log(JSON.parse(msg))
			},
			error : function(msg) {
				console.log("Tomcat Error");
				return;
			},
		})
	})
	
	$("#check_lastPwd").click(function() {
		console.log("检查密码zhong");
		var str = '{"userid":"011001","pwd":"011001"}'
		var data = {"data":str, "type":1};
		$.ajax({
			url : "check_lastPwd",
			type: "POST",
			data : data,
			success : function(msg) {
				console.log("success:type"+typeof(msg)+"success:"+msg);
				console.log(JSON.parse(msg))
			},
			error : function(msg) {
				console.log("Tomcat Error");
				return;
			},
		})
	})
	
	$("#update_Pwd").click(function() {
		console.log("update_Pwd密码zhong");
		var str = '{"userid":"011001","pwd":"011001"}'
		var data = {"data":str, "type":1};
		$.ajax({
			url : "update_Pwd",
			type: "POST",
			data : data,
			success : function(msg) {
				console.log("success:type"+typeof(msg)+"success:"+msg);
				console.log(JSON.parse(msg))
			},
			error : function(msg) {
				console.log("Tomcat Error");
				return;
			},
		})
	})
})
</script>
<body>
<h2>Hello World!</h2>
user:<s:property value="#session.user"/><br>test_value_abv:<s:property value="#session.test_value_abv"/><br>
user.name:<s:property value="#session.user.name"/>
<s:debug></s:debug>
<form method="get">
<input id="getStr" type="button" value="提交">
</form>
<button id="check_lastPwd">检查密码</button>
<button id="update_Pwd">修改密码</button>
<button id="logout">注销</button>
</body>
</html>
