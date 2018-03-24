<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>修改密码</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/assets/common/css/css.css" />
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/common/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/common/js/updateCustomer.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/common/js/common.js"></script>
</head>
<body>
	<div id="pageAll">
		<div class="pageTop">
			<div class="page">
				<img src="${pageContext.request.contextPath }/assets/img/coin02.png" /><span><a href="#">首页</a>&nbsp;-&nbsp;<a
					href="#">公共管理</a>&nbsp;-</span>&nbsp;修改密码
			</div>
		</div>
		<form action="${pageContext.request.contextPath }/updateOperSave.html" class="layui-form" method="post">
		<div class="page ">
			<!-- 修改密码页面样式 -->
			<div class="bbD">
				<label for="cID">您的账号：&nbsp;&nbsp;</label><input type="text" class="input3"
						onblur="checkpwd1()" id=""  name="userID" value="${userSession.userID }" readonly="readonly"/> <img class="imga"
						src="${pageContext.request.contextPath }/assets/img/ok.png" /><img class="imgb" src="${pageContext.request.contextPath }/assets/img/no.png" />
				</div>
			
				<div class="bbD">
						<label for="cID">新的密码：</label>
						<input type="password" id="pwd" class="input3" name="pwd" value="" placeholder="${userSession.pwd }"/>
						<font color="red"></font>
					</div>
					<div class="bbD">
						<label for="cID">确定密码：</label>
						<input type="password" id="pwd1" class="input3" name="" value="" />
						<font color="red"></font>
					</div>
			<div class="bbD">
						<p class="bbDP">
							<button class="btn_ok btn_yes" type="submit" name="add" id="add" href="#">提交</button>
							<a class="btn_ok btn_no" href="javascript:window.history.back(-1);">取消</a>
						</p>
					</div>
					</form>
	</div>
</body>
<script>
var pwd = null;
var pwd1 = null;
$(function(){
   pwd = $("#pwd");
	pwd1 = $("#pwd1");
	pwd.next().html("*");
	pwd1.next().html("*");
      pwd.bind("focus",function(){
		validateTip(pwd.next(),{"color":"#666666"},"* 密码长度必须大于等于3且小于20",false);
	}).bind("blur",function(){
		if(pwd.val() != null && pwd.val().length >= 3
				&& pwd.val().length < 20 ){
			validateTip(pwd.next(),{"color":"green"},imgYes,true);
		}else{
			validateTip(pwd.next(),{"color":"red"},imgNo + " 密码输入不符合规范，请重新输入",false);
		}
	});
	
	pwd1.bind("focus",function(){
		validateTip(pwd1.next(),{"color":"#666666"},"* 请输入与上面一致的密码",false);
	}).bind("blur",function(){
		if(pwd1.val() != null && pwd1.val().length >=3 
				&& pwd1.val().length < 20 && pwd.val() == pwd1.val()){
			validateTip(pwd1.next(),{"color":"green"},imgYes,true);
		}else{
			validateTip(pwd1.next(),{"color":"red"},imgNo + " 两次密码输入不一致，请重新输入",false);
		}
	});
});
</script>
</html>