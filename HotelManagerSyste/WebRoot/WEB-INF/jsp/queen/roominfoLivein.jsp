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
<script src="${pageContext.request.contextPath }/assets/common/js/roomLivein.js" type="text/javascript"></script>

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

<table cellpadding="0" cellspacing="0" >

<tr>
<td colspan="10" class="info_boxA"> <span style="color: red">部门级别:&nbsp;</span>${userSession.loginnum }　<span style="color: red">日期：</span><span   id=sTime></span>   
  <script>setInterval("document.all.sTime.innerText=new   Date().toLocaleString()",300)</script> 　</td>
  <tr>
<th width="5%"></th>
<th width="9.5%">1</th>
<th width="9.5%">2</th>
<th width="9.5%">3</th>
<th width="9.5%">4</th>
<th width="9.5%">5</th>
<th width="9.5%">6</th>
<th width="9.5%">7</th>
<th width="9.5%">8</th>
<th width="9.5%">9</th>
<th width="9.5%">10</th>

</tr>


               <tr>
                   <td width="7%">单人间</td>
                      <c:forEach items="${roominfoList}" var="v">
                      
                        <td onclick="this.style.backgroundColor= this.style.backgroundColor == 'red' ? '':'red';" ondblclick="" class="viewLivein">
                          ${v.roomID}
                          </td>
                      </c:forEach>
                 
              </tr>
              
                   <tr>
                   <td width="7%">双人间</td>
                      <c:forEach items="${roominfoList1}" var="v1">
                      
                        <td onclick="this.style.backgroundColor= this.style.backgroundColor == 'red' ? '':'red';" ondblclick="" class="viewLivein">
                          ${v1.roomID}
                          </td>
                      </c:forEach>
                 
              </tr>
               <tr>
                  <td width="7%">大床房</td>
                      <c:forEach items="${roominfoList2}" var="v2">
                     <td onclick="this.style.backgroundColor= this.style.backgroundColor == 'red' ? '':'red';" ondblclick="" class="viewLivein">
                          ${v2.roomID}
                          </td>
                      </c:forEach>
                  
              </tr>
              <tr>
                  <td width="7%">三人间</td>
                      <c:forEach items="${roominfoList3}" var="v3">
                      <td onclick="this.style.backgroundColor= this.style.backgroundColor == 'red' ? '':'red';" ondblclick="" class="viewLivein">
                          ${v3.roomID}
                          </td>
                      </c:forEach>
                  
              </tr>
               <tr>
                  <td width="7%">套间</td>
                      <c:forEach items="${roominfoList4}" var="v4">
                      <td onclick="this.style.backgroundColor= this.style.backgroundColor == 'red' ? '':'red';" ondblclick="" class="viewLivein">
                          ${v4.roomID}
                          </td>
                      </c:forEach>
                 
              </tr>
             <tr>
                 <td width="7%">商务间</td>
                      <c:forEach items="${roominfoList5}" var="v5">
                      <td onclick="this.style.backgroundColor= this.style.backgroundColor == 'red' ? '':'red';" ondblclick="" class="viewLivein">
                          ${v5.roomID}
                          </td>
                      </c:forEach>
                  
              </tr>
              <tr>
                  <td width="7%">行政间</td>
                      <c:forEach items="${roominfoList6}" var="v6">
                      <td onclick="this.style.backgroundColor= this.style.backgroundColor == 'red' ? '':'red';" ondblclick="" class="viewLivein">
                          ${v6.roomID}
                          </td>
                      </c:forEach>
              
              </tr>
              <tr>
                 <td width="7%">总统套房</td>
                      <c:forEach items="${roominfoList7}" var="v7">
                      <td onclick="this.style.backgroundColor= this.style.backgroundColor == 'red' ? '':'red';" ondblclick="" class="viewLivein">
                          ${v7.roomID}
                          </td>
                      </c:forEach>
              </tr>
   
</table>
<input type="text" id="xuehao" name="xuehao" style="display: none;"/> 

</div>
</div>

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
         if($('.viewLiveinss').is(':hidden'))
         {
           $('.viewLiveinss').slideDown('slow');  
         
         }else{
          $('.viewLiveinss').slideUp('slow');
          
            }
                
     /*这是一个很简单的事件处理,如果还需要跟上图片的变换,就在判断的对应位置写入图片或者背景变换的代码,*/
 });
 });

</script>


     <script> 
      function select() 
   { 
    var tdArr=document.getElementsByTagName("td"); 
    for(var i=0;i<tdArr.length;i++) 
    { 
     tdArr[i].onclick=function() 
    { 
      
    document.getElementById("xuehao").value=this.innerHTML;
    this.style.backgroundColor= this.style.backgroundColor == 'red' ? '':'red';
        var roominfoid   = document.getElementById("xuehao").value;
        
    window.location.href = "liveinadd.html?rid="+ roominfoid;
    } 
    } 
   } 
   

  </script> 
</html>
