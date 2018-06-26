<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<html>
<script type="text/javascript" src="js/jquery-3.1.1.js"></script>
<script type="text/javascript" src="js/jsencrypt.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$("#getStr").click(function() {
		console.log("ti jiao qing qiu zhong");
		var str = '{"userid":"2015010010101","pwd":"2015010010101"}'
		var data = {"data":str, "type":3};
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
		var str = '{"userid":"2015010010101","pwd":"2015010010101"}'
		var data = {"data":str, "type":3};
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
		var str = '{"userid":"2015010010101","pwd":"2015010010101"}'
		var data = {"data":str, "type":3};
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
	
	/* 获取公钥 */
	$("#get_publicKey").click(function() {
		console.log("获取公钥");
		$.ajax({
			url : "get_publicKey",
			type: "POST",
			success : function(msg) {
				var json = JSON.parse(msg)
				console.log(json)
				$("#publicKey").val(json["publicKey"]);
			},
			error : function(msg) {
				console.log("Tomcat Error");
				return;
			},
		})
	})
	
	$("#update_user").click(function() {
		console.log("更新用户");
		var str = '{"userid":"2015010010101","pwd":"2015010010101","gname":"gnameTest2"}'
		var data = {"data":str, "type":3};
		$.ajax({
			url : "update_user",
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
	$("#get_MUserInfo").click(function() {
		console.log("获取信息");
		var str = '{"userid":"011001","pwd":"011001"}'
		var data = {"data":str, "type":1};
		$.ajax({
			url : "get_MUserInfo",
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
	$("#get_majors").click(function() {
		console.log("get_majors信息");
		var str = {"fKey":"01"}
		$.ajax({
			url : "get_majors",
			type: "GET",
			data : str,
			success : function(msg) {
				console.log("success:type"+typeof(msg)+"\nsuccess:"+msg);
				console.log(JSON.parse(msg))
			},
			error : function(msg) {
				console.log("Tomcat Error");
				return;
			},
		})
	})
	
	$("#add_course").click(function() {
		console.log("get_majors信息");
		var str = {
		        "courseno": "01010008",
		        "coursename": "软件工程导论",
		        "credithour": "2",
		        "coursehour": "34",
		        "priorcourse": "",
		        "majorno": "01001",
		    }
		$.ajax({
			url : "add_course",
			type: "GET",
			data : str,
			success : function(msg) {
				console.log("success:type"+typeof(msg)+"\nsuccess:"+msg);
				console.log(JSON.parse(msg))
			},
			error : function(msg) {
				console.log("Tomcat Error");
				return;
			},
		})
	})
	
		$("#update_course").click(function() {
		console.log("update_course信息");
		var str = {
		        "courseno": "01010007",
		        "coursename": "软件工程导论08-2",
		        "credithour": "2",
		        "coursehour": "34",
		        "priorcourse": "",
		        "majorno": "01010",
		    }
		$.ajax({
			url : "update_course",
			type: "GET",
			data : str,
			success : function(msg) {
				console.log("success:type"+typeof(msg)+"\nsuccess:"+msg);
				console.log(JSON.parse(msg))
			},
			error : function(msg) {
				console.log("Tomcat Error");
				return;
			},
		})
	})
	$("#get_courseForTe").click(function() {
		console.log("get_courseForTe信息");
		var str = {
		        "fKey": "01001",
		    }
		$.ajax({
			url : "get_courseForTe",
			type: "GET",
			data : str,
			success : function(msg) {
				console.log("success:type"+typeof(msg)+"\nsuccess:"+msg);
				console.log(JSON.parse(msg))
				var item = JSON.parse(msg);
				addselect(item.course);
			},
			error : function(msg) {
				console.log("Tomcat Error");
				return;
			},
		})
	})
		$("#del_course").click(function() {
		console.log("del_course信息");
		var str = {
		        "courseno": "01010008",
		        "coursename": "软件工程导论",
		        "credithour": "2",
		        "coursehour": "34",
		        "priorcourse": "",
		        "majorno": "01010",
		    }
		$.ajax({
			url : "del_course",
			type: "GET",
			data : str,
			success : function(msg) {
				console.log("success:type"+typeof(msg)+"\nsuccess:"+msg);
				console.log(JSON.parse(msg))
			},
			error : function(msg) {
				console.log("Tomcat Error");
				return;
			},
		})
	})
	
	$("#get_courseClass").click(function(){
		console.log("Huoqu开课班")
		$.ajax({
			url : "get_courseClass",
			type: "GET",
			data : {
				"fKey":"20150100101"
			},
			success : function(msg) {
				console.log("success:type"+typeof(msg)+"\nsuccess:"+msg);
				console.log(JSON.parse(msg))
			},
			error : function(msg) {
				console.log("Tomcat Error");
				return;
			},
		})
	})
	
	
	$("#add_selectCourseForTe button").click(function(){
		console.log("add_selectCourseForTe 开始")
		var data = {
			"courseno" : $("#add_selectCourseForTe select[name=courseNo]").val(),
			"number" : $("#add_selectCourseForTe input[name=number]").val(),
			"count" : $("#add_selectCourseForTe input[name=number]").val(),
			"term" : $("#add_selectCourseForTe input[name=term]").val(),
			"time" : $("#add_selectCourseForTe input[name=time]").val(),
			"teacherno" : $("#add_selectCourseForTe input[name=teacherNo]").val()
		}
		console.log((data))
		$.ajax({
			url : "add_selectCourseForTe",
			type: "GET",
			data : {
				"jsonStr":JSON.stringify(data),
			},
			success : function(msg) {
				console.log("success:type"+typeof(msg)+"\nsuccess:"+msg);
				console.log(JSON.parse(msg))
			},
			error : function(msg) {
				console.log("Tomcat Error");
				return;
			},
		})
	})
	
	$("#decrypt").click(function() {
		decrypt(data)
	})
	$("#encrypt").click(function() {
		var str = '{"userid":"2015010010101","pwd":"2015010010101"}'
		console.log(str)
		encrypt(str)
	})
})
function decrypt(data){
	var publicKey = $("#publicKey").val().trim();
	var encrypt = new JSEncrypt();
	encrypt.setPublicKey(publicKey);
	var decryptData = encrypt.decrypt("data");
	console.log(decryptData)
}

function encrypt(data){
	var publicKey = $("#publicKey").val().trim();
	var encrypt = new JSEncrypt();
	encrypt.setPublicKey(publicKey);
	var encryptData = encrypt.encrypt(data);
	console.log(encryptData)
}
function addselect(item){
	$.each(item, function(index,value,array) {
		$("#add_selectCourseForTe select").append('<option value="'+value.courseno+'">'+value.coursename+'</option>');
	})
}
</script>
<body>
<h2>Hello World!</h2>
user:<s:property value="#session.user"/><br>test_value_abv:<s:property value="#session.test_value_abv"/><br>
user.name:<s:property value="#session.user.name"/>
<s:debug></s:debug>
<form method="get">
<input id="getStr" type="button" value="提交">
</form>
公钥1:<input type="text" id="publicKey" readonly="readonly">
公钥2:<input type="text" id="publicKey2" value=<s:property value="#session.publicKey"/> readonly="readonly">
<button id="get_publicKey">获取公钥</button>
<button id="check_lastPwd">检查密码</button>
<button id="update_Pwd">修改密码</button>
<button id="logout">注销</button>
<button id="update_user">更新用户信息</button>
<button id="get_MUserInfo">获取用户信息</button><br>
<button id="decrypt">公钥解密</button>
<button id="encrypt">公钥加密</button>
<button id="get_majors">获取major</button><br>
<button id="add_course">add_course</button>
<button id="del_course">del_course</button>get_courseForTe
<button id="update_course">update_course</button><br>
<button id="get_courseForTe">get_courseForTe</button>
<div id="add_selectCourseForTe">
	<select name="courseNo"></select>
	<input name="teacherNo" type="hidden" value="<s:property value="#session.user.userid"/>">
	<input placeholder="选修人限" name="number">
	<input placeholder="开课学期" name="term">
	<input placeholder="开课时间" name="time">
	<button>提交教师选课</button>
</div>
	<div id="add_selectCourseForSt">
	<input type="hidden" value="<s:property value="#session.user.clazzno"/>">
	<button id="get_courseClass">获取开课班</button>
</div>
</body>
</html>
