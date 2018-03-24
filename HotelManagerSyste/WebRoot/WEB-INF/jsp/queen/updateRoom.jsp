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
<title>修改房间信息</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/assets/common/css/css.css" />
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/common/js/jquery.min.js"></script>
</head>
<body>
	<div id="pageAll">
		<div class="pageTop">
			<div class="page">
				<img src="${pageContext.request.contextPath }/assets/img/coin02.png" /><span><a href="#">首页</a>&nbsp;-&nbsp;<a
					href="#">公共管理</a>&nbsp;-</span>&nbsp;修改房间信息
			</div>
		</div>
		
		
		   
		<form action="${pageContext.request.contextPath }/updateroom.html" name="f" method="post" onsubmit="return x(this)" >
		  <input type="hidden" name="id" id="rid" value="${roominfo.id}">
		        <div class="page ">
			<!-- 修改密码页面样式 -->
		<div class="bbD">
		
				验证密码：<input type="text" class="input3" id="pwd5"
						onblur="checkpwd4()"   name="pwd" placeholder="输入您的密码"/> <img class="imga"
						src="${pageContext.request.contextPath }/assets/img/ok.png" /><img class="imgb" src="${pageContext.request.contextPath }/assets/img/no.png" />
				</div>
				<div class="bbD">
					房间牌号：<input type="text" class="input3"
						onblur="checkpwd1()" name="roomID" value="${roominfo.roomID}" />
				</div>
				<div class="bbD">
					房间类型：<input type="text" class="input3" name="roomTypeID" value="${roominfo.roomTypeID}" />
				</div>
				<div class="bbD">
					房间状态：&nbsp;
					<select name="roomState" class="form-control" style="height: 40px;width: 243px" >
									 
									     <option style="display:none;">${roominfo.roomState}</option>
									     <option>干净的空房</option>
									     <option>正在入住</option>
									     <option>维修房</option>
									     <option>预定房</option>
									     <option>重要的客人</option>
        						</select>

						
				</div>
				<div class="bbD">
					房间电话：<input type="text" class="input3" onblur="checkpwd3()"
						 name="roomTel" value="${roominfo.roomTel}" /> 
				</div>
				<div class="bbD">
					房间备注：<input type="text" class="input3" onblur="checkpwd3()"
						 name="remark" value="${roominfo.remark}"  />
				</div>
				
				<div class="bbD">
					<p class="bbDP">
						<button class="btn_ok "  type="submit" href="#">提交</button>
						<a class="btn_ok btn_no" href="javascript:window.history.back(-1);">取消</a>
					</p>
				</div>
			</div>
 
			<!-- 修改密码页面样式end -->
		
		</form>
	</div>
</body>
<script type="text/javascript">



function x(form){

    if(form.pwd5.value==""){   
          $("#pwd5").parent().find(".imga").hide();
          $("#pwd5").parent().find(".imgb").show();
          alert("请输入权限密码!");
         return false;
    }else if (form.pwd5.value!="${userSession.pwd }") {
          $("#pwd5").parent().find(".imga").hide();
          $("#pwd5").parent().find(".imgb").show();
          alert("请核实权限密码!");
         return false;
	}else{
			  $("#pwd5").parent().find(".imga").show();
              $("#pwd5").parent().find(".imgb").hide();
			if(confirm("是否确认提交数据")){return (true);}else{return (false);}
		}
   
}
</script>

</script>





</script>
</html>