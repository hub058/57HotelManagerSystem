<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="fm" uri="http://www.springframework.org/tags/form" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>新增会员</title>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/assets/common/css/css.css" />
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/common/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/common/js/useradd.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/common/js/common.js"></script>
</head>
<body>
	<div id="pageAll">
		<div class="pageTop">
			<div class="page">
				<img src="${pageContext.request.contextPath }/assets/img/coin02.png" /><span><a href="#">首页</a>&nbsp;-&nbsp;<a
					href="#">会员管理</a>&nbsp;-</span>&nbsp;新增会员
			</div>
		</div>
		<div class="page "style="padding-right: 50px">
			<!-- 会员注册页面样式 -->
			<div class="banneradd bor">
				<div class="baTopNo" >
					<span>新增会员</span>
				</div>
				<div class="">
				<form action="${pageContext.request.contextPath }/user/addcustomersave.html" id="userForm" onsubmit="return x(this)" method="post" style="padding-left: 50px">
					
					<div class="bbD">
						<label for="cID">用户编码：</label>
						<input type="text" id="cID" class="input3" name="cID" value="" />
						<font color="red"></font>
					</div>
					
						<input type="hidden" class="input3" name="pwd" value="123"/>
					
					<div class="bbD">
						<label for="cname">用户姓名：</label>
						<input type="text" class="input3" id="cname" name="cname"/>
						<font color="red"></font>
					</div>
					
					<div class="bbD">
						<label for="csex">用户性别：</label>&nbsp;&nbsp;&nbsp;
						<input type="radio" id="" name="csex" ${livein.csex=='男'?'checked':''} value="男"> <label for="flat-radio-1" class="" >男</label>  
                        <input type="radio" id="" name="csex" ${livein.csex=='女'?'checked':''} value="女"> <label for="flat-radio-1" class="" >女</label>
                            
					</div>
					<div class="bbD">
						<label for="zjno">身份证号：</label>
						<input type="text" class="input3" id="zjno" name="zjno"/>
						<font color="red"></font>
					</div>
					<div class="bbD">
						<label for="ctel">手机号：</label>&nbsp;&nbsp;&nbsp;
						<input type="text"  id="ctel" class="input3"  name="ctel"/>
						<font color="red"></font>
					</div>
					<div class="bbD">
						<label for="remark">特别备注：</label>
						<input type="text" class="input3"  name="remark"/>
						<font color="red"></font>
					</div>
					<input type="hidden" class="input3" name="zjtype" value="身份证"/>
						<div class="bbD">
					<span class="sttl"><label for="ctypeid">会员等级：</label></span>&nbsp;&nbsp;
                                <select name="ctypeid" class="form-control" style="height: 40px;width: 243px">
									<c:if test="${custList != null }">
									   <option selected="selected" value="">--请选择--</option>
									   <c:forEach var="customertype" items="${custList}">
									   		<option <c:if test="${customertype.customerID}"></c:if>
									   		value="${customertype.customerID}">${customertype.ctypename}</option>
									   </c:forEach>
									</c:if>
        						</select>
        						<font color="red"></font>
        						</div>
					<div class="bbD">
					<label for="userCode">会员积分：</label>
					<input type="text" class="input3" id="jifen" name="jifen" />
					</div>
					
					<div class="bbD">
						<p class="bbDP">
							<button class="btn_ok btn_yes" type="submit" name="add" id="add" href="#">提交</button>
							<a class="btn_ok btn_no" href="javascript:window.history.back(-1);">取消</a>
						</p>
					</div>
					</form>
				</div>
			
          
			</div>

			<!-- 会员注册页面样式end -->
		</div>
	</div>
<script type="text/javascript">
$('#cID').on('input',function(){$('#ctel').val($(this).val())})

	function x(form)
{
    if(form.cID.value == ""||form.cname.value == ""||form.csex.value == "" ||form.zjno.value == ""||form.ctel.value == ""||form.jifen.value == "")
    {
         alert("请完善用户信息!");
         return false;
    }else{
        
			
			if(confirm("是否确认提交数据")){return (true);}else{return (false);}
		}
   
}
</script>
</body>

</html>