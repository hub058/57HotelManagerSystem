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
<title>修改订单信息</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/assets/common/css/css.css" />
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/common/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/My97DatePicker/WdatePicker.js"></script>
</head>
<body>
	<div id="pageAll">
		<div class="pageTop">
			<div class="page">
				<img src="${pageContext.request.contextPath }/assets/img/coin02.png" /><span><a href="#">首页</a>&nbsp;-&nbsp;<a
					href="#">入住管理</a>&nbsp;-</span>&nbsp;修改订单信息
			</div>
		</div>

		     <span style="color: #C60101;font-size: 20px">${massage2}</span>
		<form action="${pageContext.request.contextPath }/updateLiveinSave.html" name="f" method="post">
		  
		        <div class="page ">
			<!-- 修改密码页面样式 -->
		
				    <div class="bbD" style="color: red">
					&nbsp;订单单号：<input type="text" class="input3"
						onblur="checkpwd1()" name="inno" id="rinno" value="${livein.inno}"  readonly="readonly" style="color: red" />
				    </div>
				    <div class="bbD">
						&nbsp;&nbsp;&nbsp;&nbsp;房间号：<input type="text" class="input3" name="roomID" value="${livein.roomID}"/>
					</div>
					<div class="bbD">
					&nbsp;入住人数：<input type="text" class="input3"  name="renshu" value="${livein.renshu}"/>
					</div>
					<div class="bbD">
					&nbsp;入住时间：<input value="<fmt:formatDate value='${livein.intime}' pattern='yyyy-MM-dd'/>" id="ksDate" name="intime"  onChange="doSum()" type="text" readonly="readonly"  
                          class="Wdate input3" onClick="WdatePicker()" >   
					</div>
					<div class="bbD">
					&nbsp;离开时间：<input  value="<fmt:formatDate value='${livein.leavetime}' pattern='yyyy-MM-dd'/>" id="jsDate" name="leavetime"    onChange="doSum()"  type="text"  
                          class="Wdate input3" onClick="WdatePicker()">  
					</div>
					<div class="bbD">
					&nbsp;入住天数：<input type="text" class="input3"  name="days" id="Result" value="${livein.days}" readonly/>
					</div>
					<div class="bbD">
					&nbsp;住房总额：<input type="text" class="input3"  name="account"  value="${livein.account}" />
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
function $(id){
    return document.getElementById(id);
}
function doSum(){
    var ks = $("ksDate");
    var js = $("jsDate");
    if(!/GMT/gi.test(new Date(ks.value))){
        alert("请输入有效的日期！");
        ks.focus();
        js.disabled = true;
        $("Result").value = "";
    }else{
        js.disabled = false;
        if(js.value != ""){
            if(!/GMT/gi.test(new Date(js.value))){
                alert("请输入有效的日期！");
                js.focus();
            }else{
                Date.prototype.diff = function(date){
                    return (this.getTime() - date.getTime())/(24 * 60 * 60 * 1000);
                }
                $("Result").value = new Date(js.value).diff(new Date(ks.value));
            }
        }
    }
}
</script>
</html>