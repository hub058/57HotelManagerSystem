<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>头部-有点</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/assets/common/css/public.css" />
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/common/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/common/js/public.js"></script>
</head>

<body>
	<!-- 头部 -->
	<div class="head">
		<div class="headL">
			<img class="headLogo" src="${pageContext.request.contextPath }/assets/img/logLOGO.png"/>
		</div>
		<div class="headR">
			<span style="color:#FFF"><a href="page/login.jsp" target="_blank">【登录】</a></span> 
		</div>
	</div>
</body>
</html>