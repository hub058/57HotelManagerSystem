<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>首页左侧导航</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/assets/common/css/public.css" />
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/common/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/common/js/public.js"></script>
<head></head>

<body id="bg">
	<!-- 左边节点 -->
	<div class="container">

		<div class="leftsidebar_box">
			<a href="main.html" target="main"><div class="line">
					<img src="${pageContext.request.contextPath }/assets/img/coin01.png" />&nbsp;&nbsp;所有客房
				</div></a>
			<dl class="system_log">
				<dt>
					<img class="icon1" src="${pageContext.request.contextPath }/assets/img/coin03.png" /><img class="icon2"
						src="${pageContext.request.contextPath }/assets/img/coin04.png" /> 预定<img class="icon3"
						src="${pageContext.request.contextPath }/assets/img/coin19.png" /><img class="icon4"
						src="${pageContext.request.contextPath }/assets/img/coin20.png" />
				</dt>
				<dd>
					<img class="coin11" src="${pageContext.request.contextPath }/assets/img/coin111.png" /><img class="coin22"
						src="${pageContext.request.contextPath }/assets/img/coin222.png" /><a class="cks" href="engage.html"
						target="main">预定单</a><img class="icon5" src="${pageContext.request.contextPath }/assets/img/coin21.png" />
				</dd>
			</dl>
			<dl class="system_log">
				<dt>
					<img class="icon1" src="${pageContext.request.contextPath }/assets/img/coin01.png" /><img class="icon2"
						src="${pageContext.request.contextPath }/assets/img/coin02.png" /> 入住管理<img class="icon3"
						src="${pageContext.request.contextPath }/assets/img/coin19.png" /><img class="icon4"
						src="${pageContext.request.contextPath }/assets/img/coin20.png" />
				</dt>
				<dd>
					<img class="coin11" src="${pageContext.request.contextPath }/assets/img/coin111.png" /><img class="coin22"
						src="${pageContext.request.contextPath }/assets/img/coin222.png" /><a class="cks" href="livein.html"
						target="main">正在入住</a><img class="icon5" src="${pageContext.request.contextPath }/assets/img/coin21.png" />
				</dd>
				<dd>
					<img class="coin11" src="${pageContext.request.contextPath }/assets/img/coin111.png" /><img class="coin22"
						src="${pageContext.request.contextPath }/assets/img/coin222.png" /><a class="cks" href="livein1.html"
						target="main">离</a><img class="icon5" src="${pageContext.request.contextPath }/assets/img/coin21.png" />
				</dd>
			</dl>
			<dl class="system_log">
				<dt>
					<img class="icon1" src="${pageContext.request.contextPath }/assets/img/coin07.png" /><img class="icon2"
						src="${pageContext.request.contextPath }/assets/img/coin08.png" /> 本店会员<img class="icon3"
						src="${pageContext.request.contextPath }/assets/img/coin19.png" /><img class="icon4"
						src="${pageContext.request.contextPath }/assets/img/coin20.png" />
				</dt>
				<dd>
					<img class="coin11" src="${pageContext.request.contextPath }/assets/img/coin111.png" /><img class="coin22"
						src="${pageContext.request.contextPath }/assets/img/coin222.png" /><a href="user/getCustomer.html" target="main"
						class="cks">本店会员</a><img class="icon5" src="${pageContext.request.contextPath }/assets/img/coin21.png" />
				</dd>
			</dl>
			<dl class="system_log">
				<dt>
					<img class="icon1" src="${pageContext.request.contextPath }/assets/img/coin10.png" /><img class="icon2"
						src="${pageContext.request.contextPath }/assets/img/coin09.png" /> <a  target="main"
						class="cks">结算</a><img class="icon3"
						src="${pageContext.request.contextPath }/assets/img/coin19.png" /><img class="icon4"
						src="${pageContext.request.contextPath }/assets/img/coin20.png" />
				</dt>
				<dd>
					<img class="coin11" src="${pageContext.request.contextPath }/assets/img/coin111.png" /><img class="coin22"
						src="${pageContext.request.contextPath }/assets/img/coin222.png" /><a href="aacount.html" target="main" class="cks">入住结算</a><img class="icon5"
						src="${pageContext.request.contextPath }/assets/img/coin21.png" />
				</dd>
			</dl>
			<dl class="system_log">
				<dt>
					<img class="icon1" src="${pageContext.request.contextPath }/assets/img/coin11.png" /><img class="icon2"
						src="${pageContext.request.contextPath }/assets/img/coin12.png" /> 新闻管理<img class="icon3"
						src="${pageContext.request.contextPath }/assets/img/coin19.png" /><img class="icon4"
						src="${pageContext.request.contextPath }/assets/img/coin20.png" />
				</dt>
				<dd>
					<img class="coin11" src="${pageContext.request.contextPath }/assets/img/coin111.png" /><img class="coin22"
						src="${pageContext.request.contextPath }/assets/img/coin222.png" /><a class="cks">新闻管理</a><img class="icon5" src="${pageContext.request.contextPath }/assets/img/coin21.png" />
				</dd>
			</dl>
			<dl class="system_log">
				<dt>
					<img class="icon1" src="${pageContext.request.contextPath }/assets/img/coin14.png" /><img class="icon2"
						src="${pageContext.request.contextPath }/assets/img/coin13.png" /> 心愿管理<img class="icon3"
						src="${pageContext.request.contextPath }/assets/img/coin19.png" /><img class="icon4"
						src="${pageContext.request.contextPath }/assets/img/coin20.png" />
				</dt>
				<dd>
					<img class="coin11" src="${pageContext.request.contextPath }/assets/img/coin111.png" /><img class="coin22"
						src="${pageContext.request.contextPath }/assets/img/coin222.png" /><a class="cks">心愿管理</a><img class="icon5" src="${pageContext.request.contextPath }/assets/img/coin21.png" />
				</dd>
			</dl>
			<dl class="system_log">
				<dt>
					<img class="icon1" src="${pageContext.request.contextPath }/assets/img/coin15.png" /><img class="icon2"
						src="${pageContext.request.contextPath }/assets/img/coin16.png" /> 预警管理<img class="icon3"
						src="${pageContext.request.contextPath }/assets/img/coin19.png" /><img class="icon4"
						src="${pageContext.request.contextPath }/assets/img/coin20.png" />
				</dt>
				<dd>
					<img class="coin11" src="${pageContext.request.contextPath }/assets/img/coin111.png" /><img class="coin22"
						src="${pageContext.request.contextPath }/assets/img/coin222.png" /><a class="cks">预警管理</a><img class="icon5"
						src="${pageContext.request.contextPath }/assets/img/coin21.png" />
				</dd>
			</dl>
			<dl class="system_log">
				<dt>
					<img class="icon1" src="${pageContext.request.contextPath }/assets/img/coin17.png" /><img class="icon2"
						src="${pageContext.request.contextPath }/assets/img/coin18.png" /> 收支管理<img class="icon3"
						src="${pageContext.request.contextPath }/assets/img/coin19.png" /><img class="icon4"
						src="${pageContext.request.contextPath }/assets/img/coin20.png" />
				</dt>
				<dd>
					<img class="coin11" src="${pageContext.request.contextPath }/assets/img/coin111.png" /><img class="coin22"
						src="${pageContext.request.contextPath }/assets/img/coin222.png" /><a class="cks">收支管理</a><img class="icon5"
						src="${pageContext.request.contextPath }/assets/img/coin21.png" />
				</dd>
			</dl>
			<dl class="system_log">
				<dt>
					<img class="icon1" src="${pageContext.request.contextPath }/assets/img/coinL1.png" /><img class="icon2"
						src="${pageContext.request.contextPath }/assets/img/coinL2.png" /> 系统管理<img class="icon3"
						src="${pageContext.request.contextPath }/assets/img/coin19.png" /><img class="icon4"
						src="${pageContext.request.contextPath }/assets/img/coin20.png" />
				</dt>
				<dd>
					<img class="coin11" src="${pageContext.request.contextPath }/assets/img/coin111.png" /><img class="coin22"
						src="${pageContext.request.contextPath }/assets/img/coin222.png" /><a href="updateOper.html"
						target="main" class="cks">修改密码</a><img class="icon5"
						src="${pageContext.request.contextPath }/assets/img/coin21.png" />
				</dd>
				<dd>
					<img class="coin11" src="${pageContext.request.contextPath }/assets/img/coin111.png" /><img class="coin22"
						src="${pageContext.request.contextPath }/assets/img/coin222.png" /><a class="cks">退出</a><img
						class="icon5" src="${pageContext.request.contextPath }/assets/img/coin21.png" />
				</dd>
			</dl>

		</div>

	</div>
</body>
</html>
