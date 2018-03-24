<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title></title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta name="generator" content="" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

<meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; roominfo-scalable=0;">
<link href="${pageContext.request.contextPath }/assets/common/css/haiersoft.css" rel="stylesheet" type="text/css" media="screen,print" />
<link href="${pageContext.request.contextPath }/assets/common/css/print.css" rel="stylesheet" type="text/css"  media="print" />
<script src="${pageContext.request.contextPath }/assets/common/js/jquery-1.10.1.min.js"></script>
<script src="${pageContext.request.contextPath }/assets/common/js/account.js" type="text/javascript"></script>
<style type="text/css">
 .providerAdd div label {
	font-size: 20px;
	color: #1FBBA6;
}
 .providerAdd div input {
	 height: 20px;
	 color: red;
	 text-align:center;
} 

</style>
<!--[if lt IE 9]>
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
<![endif]-->
</head>

<body>
<!-- wrap_left -->

<!-- /wrap_left -->

<!-- picBox -->
<div class="picBox" onClick="switchSysBar()" id="switchPoint"></div>
<!-- /picBox -->



<!-- wrap_right -->
<div class="wrap_right">
<header>
<!-- Header -->

<!-- /Header -->
</header>


<!-- Contents -->
<div id="Contents">
<script type="text/javascript">

$(function(){
$(".select").each(function(){
var s=$(this);
var z=parseInt(s.css("z-index"));
var dt=$(this).children("dt");
var dd=$(this).children("dd");
var _show=function(){dd.slideDown(200);dt.addClass("cur");s.css("z-index",z+1);};
var _hide=function(){dd.slideUp(200);dt.removeClass("cur");s.css("z-index",z);};
dt.click(function(){dd.is(":hidden")?_show():_hide();});
dd.find("a").click(function(){dt.html($(this).html());_hide();});
$("body").click(function(i){ !$(i.target).parents(".select").first().is(s) ? _hide():"";});})})
</script>


<!-- MainForm -->
<div id="MainForm">
<div class="form_boxB">

<table cellpadding="0" cellspacing="0">

<tr>
<td colspan="10" class="info_boxA"> <span style="color: red">部门级别:&nbsp;</span>${userSession.loginnum }　<span style="color: red">日期：</span><span   id=sTime></span>   
  <script>setInterval("document.all.sTime.innerText=new   Date().toLocaleString()",300)</script>  <span style="color: red ">  &nbsp;当天总额:</span>${conuts} <a href="#" id="del_model" style="float: right;"><span>批量删除</span> 
</tr>
<tr>
<th class="tal" width="5%"><input type="checkbox" id="allChk"/>全选</th> 
<th width="12%">结算单号</th>
<th width="12%">入住单号</th>
<th width="12%">结算日期</th>
<th width="13%">操作人</th>
<th width="13%">物品损坏</th>
<th width="13%">应退押金</th>
<th width="12%">总价</th>
<th width="8%">操作</th>
</tr>


   <c:forEach var="acount" items="${acountList }" varStatus="status">
					<tr>
					<td>
					<input type="checkbox" name="subChk" value="${acount.chkID }"/>
					</td>
						<td>
						<span>${acount.chkID }</span>
						</td>
						<td>
						<span>${acount.inno }</span>
						</td>
						<td>
						<span><fmt:formatDate value="${acount.chktime}" pattern="yyyy-MM-dd"/></span>
						</td>
						<td>
						<span>${acount.userID}</span>
						</td>
						<td>
						<span>${acount.breakdownAccount}</span>
						</td>
						<td>
						<span>${acount.money}</span>						
						</td>
						<td>
						<span>${acount.moneycount}</span>						
						</td>
						
						
						<td>
						
						<span><a class="deleteAcount" href="javascript:;" customercID=${acount.chkID } customercname=${acount.inno }><img src="${pageContext.request.contextPath }/assets/statics/images/schu.png" alt="删除" title="删除"/></a></span>
						</td>
					</tr>
				</c:forEach>



   
</table>

<p class="msg">共${pages.totalCount }条记录
							${pages.currentPageNo }/${pages.totalPageCount }页</p>
</div>
</div>
<!-- /MainForm -->

<form method="post" action="${pageContext.request.contextPath }/aacount.html">


<!-- BtmMain -->
<div id="BtmMain">
<span class="ttl">条件查询</span>

<!-- txtbox -->
<div class="txtbox floatL mag_r20">
<span class="sttl">操作人：</span>
<input name="queryuserID" class="input-text"  size="8"	type="text" value="${queryuserID }">
</div>

<div class="txtbox floatL mag_r20">
<span class="sttl">结算单号：</span>
<input name="querychkID" class="input-text"  size="8"	type="text" value="${querychkID }">
</div>
<div class="txtbox floatL mag_r20">
<span class="sttl">结算日期：</span>
<input name="querychktime" class="input-text"  size="8"	type="date" value="${querychktime }">
</div>
</div>
<!-- btn_box -->
<div class="btn_box floatR mag_l20"><input name="" type="submit" value="查询" onMouseMove="this.className='input_move'" onMouseOut="this.className='input_out'"></div>
<!-- /btn_box -->
</div>
<!-- /BtmMain -->
</form>
<!-- PageNum -->

<ul id="PageNum">
<c:if test="${pages.currentPageNo > 1}">
<li><a href="${pageContext.request.contextPath }/user/getCustomer.html?javascript:page_nav(document.forms[0],1);"aria-controls="datatable-responsive" data-dt-idx="0"
										tabindex="0">首页</a></li>
<li ><a href="${pageContext.request.contextPath }/user/getCustomer.html?pageIndex=${pages.currentPageNo-1 }">上一页</a></li>
</c:if>
<c:if test="${pages.currentPageNo < pages.totalPageCount }">
<li><a href="${pageContext.request.contextPath }/user/getCustomer.html?pageIndex=${pages.currentPageNo+1 }">下一页</a></li>
<li><a href="${pageContext.request.contextPath }/user/getCustomer.html?pageIndex=${pages.totalPageCount }">尾页</a></li>
</c:if>
</ul>



 	
	
<!-- /PageNum -->
</div>
<!-- /Contents -->
<!-- /footer -->
<footer>
<address>2007 Corporation,All Rights</address>
</footer>
<!-- /footer -->
</div>
<!-- /wrap_right -->
</body>

<script type="text/javascript" src="${pageContext.request.contextPath }/assets/statics/js/rollpage.js"></script>

<script type="text/javascript">
$(function(){
    $('.viewLivein').click(function(){//给d1绑定一个点击事件;
            
         /*这个判断的意义是,如果d2是隐藏的,那么让它显示出来,并将d1的文本内容替换成收起,
        如果是显示的,那么就隐藏它并将d1的文本内容替换为展开;*/
         if($('#content').is(':hidden'))
         {
           $('#content').slideDown('slow');  
         
         }else{
          $('#content').slideUp('slow');
          
            }
                
     /*这是一个很简单的事件处理,如果还需要跟上图片的变换,就在判断的对应位置写入图片或者背景变换的代码,*/
 });
 });

</script>
<script type="text/javascript">
 // JavaScript Document 
$(document).ready(function() { 
// 全选 
$("#allChk").click(function() { 
$("input[name='subChk']").prop("checked",this.checked); 
}); 
// 单选 
var subChk = $("input[name='subChk']") 
subChk.click(function() { 
$("#allChk").prop("checked", subChk.length == subChk.filter(":checked").length ? true:false); 
}); 
/* 批量删除 */ 
$("#del_model").click(function() { 
// 判断是否至少选择一项 
var checkedNum = $("input[name='subChk']:checked").length; 
if(checkedNum == 0) { 
alert("请选择至少一项！"); 
return; 
} 
// 批量选择 
if(confirm("确定要删除所选项目？")) { 
var checkedList = new Array(); 
$("input[name='subChk']:checked").each(function() { 
checkedList.push($(this).val()); 
}); 
$.ajax({ 
type: "POST", 
url: "deletemore", 
data: {'delitems':checkedList.toString()}, 
 success: function(result) { 
$("[name ='subChk']:checkbox").attr("checked", false); 
window.location.reload(); 
} 
}); 
} 
}); 

}); 


</script>

</html>
