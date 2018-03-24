<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<meta http-equiv="refresh" content="3;URL=livein.html">
<title>添加成功</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/assets/common/css/css.css" />
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/common/js/jquery.min.js"></script>
</head>
<body>
	<div id="pageAll">
		<div class="pageTop">
			<div class="page">
				<img src="${pageContext.request.contextPath }/assets/img/coin02.png" /><span><a href="#">首页</a>&nbsp;-&nbsp;<a
					href="#">新增入住</a>&nbsp;-添加成功</span>&nbsp;
			</div>
		</div>
		<div class="">

    <div id="bbD" style="margin-left: 20%; margin-top: 20%; ">
        <div>
            <span class="span1" style="font-size: 30px">订单编号:</span><span class="span4" style="font-size: 25px;color: red">${livein.inno}</span></span>
            <span class="span2" style="font-size: 30px">应付金额￥<span class="span3" style="font-size: 25px;color: red">${livein.account}</span></span>
        </div>
    </div>
   <div class="bbD" style="margin-left: 70%">
					<p class="bbDP">
							<a class="btn_ok btn_yes"  href="${pageContext.request.contextPath }/livein.html">立即返回</a>
						</p>
					</div>

	</div>
</body>
<script language="JavaScript">
 function countDown(secs){
       jump.innerText=secs;
       if(--secs>0)
          setTimeout( "countDown(" +secs+ ")" ,1000);
    }
    countDown(10);
</script>
</html>