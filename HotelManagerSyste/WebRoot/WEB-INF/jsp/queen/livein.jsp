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
<script src="${pageContext.request.contextPath }/assets/common/js/livein.js" type="text/javascript"></script>
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

<body onload="select();">
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
  <script>setInterval("document.all.sTime.innerText=new   Date().toLocaleString()",300)</script> 　<div class="btn_box floatR mag_l20"><a href="${pageContext.request.contextPath }/roominfoLivein.html" style="color: #1FBBA6">入住登记</a></div></td>
</tr>
<tr>
<th width="5%">序号</th>
<th width="8%">单号</th>
<th width="8%">房间号</th>
<th width="10%">入住人</th>
<th width="12%">入住时间</th>
<th width="12%">离开时间</th>
<th width="8%">押金</th>
<th width="9%">支付方式</th>
<th width="8%">消费总额</th>
<th width="10%">入住状态</th>
<th width="10%">操作</th>
</tr>


   <c:forEach var="livein" items="${liveinList }" varStatus="status">
					<tr>
						<td>
						${livein.id }
						</td>
					
						<td onclick="this.style.backgroundColor= this.style.backgroundColor == 'red' ? '':'red';" ondblclick="" class="viewLiveins">
						<span >${livein.inno }</span>
						</td>
						<td>
						${livein.roomID}
						</td>
						<td>
						${livein.cname}
						</td>
						
						<td>
							<fmt:formatDate value="${livein.intime}" pattern="yyyy-MM-dd"/>
						</td>
						<td>
						<fmt:formatDate value="${livein.leavetime}" pattern="yyyy-MM-dd"/>
						</td>
						<td>
							${livein.foregift}
						</td>
						<td>
							${livein.delmark}
						</td>
						<td>
							${livein.account}
						</td>
						<td>
						${livein.leveinTypeName}
						</td>
						<td>
						<a class="viewLivein" id="toggle" href="javascript:;" liveinid=${livein.id }><img src="${pageContext.request.contextPath }/assets/statics/images/read.png" alt="查看" title="查看"/></a>
						<a class="modifyLivein" href="javascript:;" liveininno=${livein.inno }><img src="${pageContext.request.contextPath }/assets/statics/images/xiugai.png" alt="修改" title="修改"/></a>
						<a class="deleteLivein" href="javascript:;" liveinid=${livein.id } liveininno=${livein.inno }><img src="${pageContext.request.contextPath }/assets/statics/images/schu.png" alt="删除" title="删除"/></a>
						
						</td>
					</tr>
				</c:forEach>




   
</table>
<script>  
  
    function getData(){  
    alert=(this.children[1].innerHTML);
        document.getElementById("xuehao").value=this.children[1].innerHTML; 
          
    }  
  
  
</script>  


<input type="text" id="xuehao" name="xuehao"  style="display: none"/>  
 
 <HEAD> 
   <script> 
      function select() 
   { 
    var tdArr=document.getElementsByTagName("span"); 
    for(var i=0;i<tdArr.length;i++) 
    { 
     tdArr[i].onclick=function() 
    { 
     
    document.getElementById("xuehao").value=this.innerHTML;
        var roominfoid   = document.getElementById("xuehao").value;
         window.location.href = "leveintype.html?rid="+ roominfoid;

    } 
    } 
   } 
   

  </script> 



 
<p class="msg">共${pages.totalCount }条记录
							${pages.currentPageNo }/${pages.totalPageCount }页</p>
</div>
</div>
<!-- /MainForm -->

<form method="post" action="${pageContext.request.contextPath }/livein.html">

<div class="providerAdd"  id="content" style=" padding:10px; display: none; "   align="center">
         <div>
             <label>&nbsp;&nbsp;入住单号：</label>
             <input type="text" id="v_inno" value="" readonly="readonly">
             <font color="red"></font>
         </div>
         <div>
             <label>&nbsp;&nbsp;入住房号：</label>
             <input type="text" id="v_roomID" value="" readonly="readonly">
             <font color="red"></font>
         </div>
         <div>
             <label>&nbsp;&nbsp;客户编号：</label>
             <input type="text" id="v_cID" value="" readonly="readonly">
             <font color="red"></font>
         </div>
         <div>
             <label>&nbsp;&nbsp;客户姓名：</label>
             <input type="text" id="v_cname" value="" readonly="readonly">
             <font color="red"></font>
         </div>
         <div>
             <label>&nbsp;&nbsp;客户性别：</label>
             <input type="text" id="v_csex" value="" readonly="readonly">
             <font color="red"></font>
         </div>
         <div>
             <label>&nbsp;&nbsp;身份证号：</label>
             <input type="text" id="v_zjno" value="" readonly="readonly">
             <font color="red"></font>
         </div>
         <div>
             <label>&nbsp;&nbsp;入住人数：</label>
             <input type="text" id="v_renshu" value="" readonly="readonly">
             <font color="red"></font>
         </div>
         <div>
             <label>&nbsp;&nbsp;入住日期：</label>
            <input type="text" id="v_intime"  Class="Wdate" readonly="readonly" onclick="WdatePicker();">
            <font color="red"></font>
         </div>
         <div>
             <label>&nbsp;&nbsp;离开日期：</label>
              <input type="text" id="v_leavetime"  Class="Wdate" readonly="readonly" onclick="WdatePicker();">
              <font color="red"></font>
         </div>
         <div>
             <label>&nbsp;&nbsp;联系电话：</label>
             <input type="text" id="v_ctel" value="" readonly="readonly">
             <font color="red"></font>
         </div>
         <div>
             <label>&nbsp;&nbsp;房间押金：</label>
             <input type="text" id="v_foregift" value="" readonly="readonly">
             <font color="red"></font>
         </div>
         <div>
             <label>&nbsp;&nbsp;入住天数：</label>
             <input type="text" id="v_days" value="" readonly="readonly">
             <font color="red"></font>
         </div>
         <div>
             <label>&nbsp;&nbsp;消费总额：</label>
             <input type="text" id="v_account" value="" readonly="readonly">
             <font color="red"></font>
         </div>
        
    </div>
<!-- BtmMain -->
<div id="BtmMain">
<span class="ttl">条件查询</span>

<!-- txtbox -->
<div class="txtbox floatL mag_r20">
<span class="sttl">单号：</span>
<input name="queryinno" class="input-text"  size="8"	type="text" value="${queryinno }">
</div>

<!-- /txtbox -->
<!-- txtbox -->
<div class="txtbox floatL mag_r20">
<span class="sttl">房号：</span>
<input name="queryroomID" class="input-text"  size="8"	type="text" value="${queryroomID }">
</div>


<!-- /txtbox -->
<!-- txtbox -->
<div class="txtbox floatL mag_r20">
<span class="sttl">客户姓名：</span>
<input name=querycID class="input-text"  size="8"	type="text" value="${querycID }">
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
<li><a href="${pageContext.request.contextPath }/livein.html?javascript:page_nav(document.forms[0],1);"aria-controls="datatable-responsive" data-dt-idx="0"
										tabindex="0">首页</a></li>
<li ><a href="${pageContext.request.contextPath }/livein.html?pageIndex=${pages.currentPageNo-1 }">上一页</a></li>
</c:if>
<c:if test="${pages.currentPageNo < pages.totalPageCount }">
<li><a href="${pageContext.request.contextPath }/livein.html?pageIndex=${pages.currentPageNo+1 }">下一页</a></li>
<li><a href="${pageContext.request.contextPath }/livein.html?pageIndex=${pages.totalPageCount }">尾页</a></li>
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
</html>
