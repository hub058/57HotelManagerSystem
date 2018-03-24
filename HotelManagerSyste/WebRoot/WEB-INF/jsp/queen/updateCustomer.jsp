<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>修改会员详情</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/assets/common/css/css.css" />
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/common/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/common/js/updateCustomer.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/common/js/common.js"></script>
</head>
<body>
	<div id="pageAll">
		<div class="pageTop">
			<div class="page">
				<img src="${pageContext.request.contextPath }/assets/img/coin02.png" /><span><a href="#">首页</a>&nbsp;-&nbsp;<a
					href="#">会员管理</a>&nbsp;-</span>&nbsp;修改会员详情
			</div>
		</div>

		     <span style="color: #C60101;font-size: 20px">${massage2}</span>
		<form action="${pageContext.request.contextPath }/user/updatecustomersave.html"  name="userForm" method="post" style="padding-left: 50px">
					<div class="bbD">
						<label for="cID" style="color: red">用户编码：</label>
						<input type="text" id="rcID" class="input3" name="cID" value="${customer.cID} " readonly="readonly" style="color: red" />
						<font color="red"></font>
					</div>
					
					<div class="bbD">
						<label for="cID">新的密码：</label>
						<input type="password" id="pwd" class="input3" name="pwd" value="" placeholder="${customer.pwd}"/>
						<font color="red"></font>
					</div>
					<div class="bbD">
						<label for="cID">确定密码：</label>
						<input type="password" id="pwd1" class="input3" name="" value="" />
						<font color="red"></font>
					</div>
					
					<div class="bbD">
						<label for="cname">用户姓名：</label>
						<input type="text" class="input3" id="cname" name="cname" value="${customer.cname}"/>
						<font color="red"></font>
					</div>
					
					<div class="bbD">
						<label for="csex">用户性别：</label>&nbsp;&nbsp;&nbsp;
						<input type="radio" id="" name="csex" ${customer.csex=='男'?'checked':''} value="男"> <label for="flat-radio-1" class="" >男</label>  
                        <input type="radio" id="" name="csex" ${customer.csex=='女'?'checked':''} value="女"> <label for="flat-radio-1" class="" >女</label>
                            
					</div>
					<div class="bbD">
						<label for="zjno">身份证号：</label>
						<input type="text" class="input3" id="zjno" name="zjno" value="${customer.zjno}"/>
						<font color="red"></font>
					</div>
					<div class="bbD">
						<label for="ctel">手机号：</label>&nbsp;&nbsp;&nbsp;
						<input type="text"  id="ctel" class="input3"  name="ctel" value="${customer.ctel}" />
						<font color="red"></font>
					</div>
					<div class="bbD">
						<label for="remark">特别备注：</label>
						<input type="text" class="input3"  name="remark" value="${customer.remark}"/>
						<font color="red"></font>
					</div>
					<input type="hidden" class="input3" name="zjtype" value="身份证" value="${customer.zjtype}"/>
						<div class="bbD">
					<span class="sttl"><label for="ctypeid">会员等级：</label></span>&nbsp;&nbsp;
                                <select name="ctypeid" class="form-control" style="height: 40px;width: 243px"" >
									<c:if test="${custList != null }">
									   <option>--请选择--</option>
									   <c:forEach var="customertype" items="${custList}" >
									   		<option <c:if test="${customertype.customerID}"></c:if>
									   		value="${customertype.customerID}">${customertype.ctypename}</option>
									   </c:forEach>
									</c:if>
        						</select>
        						<font color="red"></font>
        						</div>
					<div class="bbD">
					<label for="userCode">会员积分：</label>
					<input type="text" class="input3" id="jifen" name="jifen" value="${customer.jifen}"/>
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