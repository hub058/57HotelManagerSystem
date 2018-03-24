<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">



<html lang="en" class="no-js">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge"> 
<meta name="viewport" content="width=device-width, initial-scale=1"> 
<title>login</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/assets/css/normalize.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/assets/css/demo.css" />
<!--必要样式-->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/assets/css/component.css" />
<!--[if IE]>
<script src="js/html5.js"></script>
<![endif]-->
</head>
<body>
		<div class="container demo-1">
			<div class="content">
				<div id="large-header" class="large-header">
					<canvas id="demo-canvas"></canvas>
					<div class="logo_box">
						<h3>注册页面</h3>
						<form action="${pageContext.request.contextPath }/user/useraddsave.html" name="f" method="post">
							<div class="input_outer">
								<span class="u_user"></span>
								
								<input name="cID" class="text" style="color: #FFFFFF !important" type="text" placeholder="请输入账户">
							</div>
							<div class="input_outer">
								<span class="us_uer"></span>
								<input name="pwd" class="text" style="color: #FFFFFF !important; position:absolute; z-index:100;"value="" type="password" placeholder="请输入密码">
							</div>
							<div class="input_outer">
								<span class="u_user"></span>
								<input name="pwds" class="text" style="color: #FFFFFF !important" type="password" placeholder="请再次输入密码">
							</div>
							<div class="input_outer">
								<span class="u_user"></span>
								<input name="zjno" class="text" style="color: #FFFFFF !important" type="text" placeholder="请输入身份证号">
							</div>
							<div class="input_outer">
								<span class="u_user"></span>
								<input name="ctel" class="text" style="color: #FFFFFF !important" type="text" placeholder="请输入手机号">
							</div>
							
							 <button id="send" type="submit" class="btn btn-success" style="height: 50px;width: 330px;background-color: #0094E4 ">保存</button>
						</form>
					</div>
				</div>
			</div>
		</div><!-- /container -->
		<script src="${pageContext.request.contextPath }/assets/js/TweenLite.min.js"></script>
		<script src="${pageContext.request.contextPath }/assets/js/EasePack.min.js"></script>
		<script src="${pageContext.request.contextPath }/assets/js/rAF.js"></script>
		<script src="${pageContext.request.contextPath }/assets/js/demo-1.js"></script>
	</body>
</html>