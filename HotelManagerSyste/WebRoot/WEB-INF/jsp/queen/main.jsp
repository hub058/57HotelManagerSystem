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
<script src="${pageContext.request.contextPath }/assets/common/js/side.js" type="text/javascript"></script>

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
  <script>setInterval("document.all.sTime.innerText=new   Date().toLocaleString()",300)</script> 　<div class="btn_box floatR mag_l20"><a href="${pageContext.request.contextPath }/roomadd.html" style="color: #1FBBA6">添加房间</a></div></td>
</tr>
<tr>
<th width="5%">序号</th>
<th width="10%">房间号</th>
<th width="10%">房间类型</th>
<th width="10%">房间状态</th>
<th width="10%">房间电话</th>
<th width="10%">具体位置</th>
<th width="10%">房间价格</th>
<th width="10%">床位（个数）</th>
<th width="15%">钟点房（价格）</th>
<th width="10%">操作</th>
</tr>


   <c:forEach var="roominfo" items="${userList }" varStatus="status">
					<tr>
						<td>
						<span>${roominfo.id }</span>
						</td>
						<td>
						<span>${roominfo.roomID }</span>
						</td>
						<td>
							<span>
								<c:if test="${roominfo.roomTypeID==1}">单人间</c:if>
								<c:if test="${roominfo.roomTypeID==2}">双人间</c:if>
								<c:if test="${roominfo.roomTypeID==3}">大床房</c:if>
								<c:if test="${roominfo.roomTypeID==4}">三人间</c:if>
								<c:if test="${roominfo.roomTypeID==5}">套间</c:if>
								<c:if test="${roominfo.roomTypeID==6}">商务间</c:if>
								<c:if test="${roominfo.roomTypeID==7}">行政间</c:if>
								<c:if test="${roominfo.roomTypeID==8}">总统套房</c:if>
							</span>
						</td>
						<td>
						<span>${roominfo.roomState}</span>
						</td>
						<td>
						<span>${roominfo.roomTel}</span>
						</td>
						<td>
						<span>${roominfo.roomLoc}</span>
						</td>
						<td>
							<span>${roominfo.roomPrice}</span>
						</td>
						<td>
							<span>${roominfo.roomBedNum}</span>
						</td>
						<td>
							<span>${roominfo.clroom}(${roominfo.clprice})</span>
						</td>
						<td>
						
						<span style="color: #C60101;font-size: 20px">${massage1}</span>
						<span><a class="modifyRoomInfo" href="javascript:;" roominfoid=${roominfo.id }><img src="${pageContext.request.contextPath }/assets/statics/images/xiugai.png" alt="修改" title="修改"/></a></span>&nbsp;&nbsp;&nbsp;
						<span><a class="deleteroominfo" href="javascript:;" roominfoid=${roominfo.id } roomID=${roominfo.roomID}><img src="${pageContext.request.contextPath }/assets/statics/images/schu.png" alt="删除" title="删除"/></a></span>
						
						</td>
					</tr>
				</c:forEach>



   
</table>
<p class="msg">共${pages.totalCount }条记录
							${pages.currentPageNo }/${pages.totalPageCount }页</p>
</div>
</div>
<!-- /MainForm -->

<form method="post" action="${pageContext.request.contextPath }/main.html">
<!-- BtmMain -->
<div id="BtmMain">
<span class="ttl">条件查询</span>

<!-- txtbox -->
<div class="txtbox floatL mag_r20">
<span class="sttl">房间号：</span>
<input name="queryroomID" class="input-text"  size="8"	type="text" value="${queryroomID }">

</div>


<!-- /txtbox -->

<!-- txtbox -->
<div class="txtbox floatL mag_r20">
<span class="sttl">房间类型：</span>
<select name="queryroomTypeID" class="form-control" style="height: 30px">
									<c:if test="${typeList != null }">
									   <option selected="selected" value="">--请选择--</option>
									   <c:forEach var="roomtype" items="${typeList}">
									   		<option <c:if test="${roomtype.roomTypeID == queryroomTypeID }"></c:if>
									   		value="${roomtype.roomTypeID}">${roomtype.roomTypeName}</option>
									   </c:forEach>
									</c:if>
        						</select>
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
<li><a href="${pageContext.request.contextPath }/main.html?javascript:page_nav(document.forms[0],1);"aria-controls="datatable-responsive" data-dt-idx="0"
										tabindex="0">首页</a></li>
<li ><a href="${pageContext.request.contextPath }/main.html?pageIndex=${pages.currentPageNo-1 }">上一页</a></li>
</c:if>
<c:if test="${pages.currentPageNo < pages.totalPageCount }">
<li><a href="${pageContext.request.contextPath }/main.html?pageIndex=${pages.currentPageNo+1 }">下一页</a></li>
<li><a href="${pageContext.request.contextPath }/main.html?pageIndex=${pages.totalPageCount }">尾页</a></li>
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


   




</html>
