<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>添加房间</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/assets/common/css/css.css" />
<style> 

</style> 
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/common/js/jquery.min.js"></script>
</head>
<body>
	<div id="pageAll">
		<div class="pageTop">
			<div class="page" >
				<img src="${pageContext.request.contextPath }/assets/img/coin02.png" /><span><a href="#">首页</a>&nbsp;-&nbsp;<a
					href="#">所有房间</a>&nbsp;-</span>&nbsp;添加房间
			</div>
		</div>
		<div class="page " style="padding-right: 50px">
			<!-- 会员注册页面样式 -->
			<div class="banneradd bor">
				<div class="baTopNo">
					<span>添加房间</span>
				</div>
				
				<div class="baBody">
				<form action="${pageContext.request.contextPath }/roomaddSave.html" name="f" method="post" >
				
					<div class="bbD">
					&nbsp;&nbsp;&nbsp;&nbsp;房间号：<input type="text" class="input3"  name="roomID" />
					</div>
					<div class="bbD">
					<span class="sttl">房间类型：  </span>&nbsp;
                                <select name="roomTypeID" class="form-control" style="height: 40px;width: 243px">
									<c:if test="${typeList != null }">
									   <option selected="selected" value="">--请选择--</option>
									   <c:forEach var="roomtype" items="${typeList}">
									   		<option <c:if test="${roomtype.roomTypeID}"></c:if>
									   		value="${roomtype.roomTypeID}">${roomtype.roomTypeName}</option>
									   </c:forEach>
									</c:if>
        						</select>
        					
					<div class="bbD">
					<div class="bbD">
						&nbsp;房间状态：<input type="text" class="input3" name="roomState"  value="干净的空房" readonly="readonly" />
					</div>
			
					<div class="bbD">
						&nbsp;房间电话：<input type="text" class="input3" name="roomTel" />
					</div>
					<div class="bbD">
						&nbsp;房间地址：<input type="text" class="input3"  name="roomLoc"/>
					</div>
					<div class="bbD">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;备注：<input type="text" class="input3"  name="remark" />
					</div>
					<div class="bbD">
						<p class="bbDP">
							<button class="btn_ok btn_yes" type="submit" href="#">提交</button>
							<a class="btn_ok btn_no" href="javascript:window.history.back(-1);">取消</a>
						</p>
					</div>
					</form>
				</div>
			
			</div>

			<!-- 会员注册页面样式end -->
		</div>
	</div>
</body>
</html>