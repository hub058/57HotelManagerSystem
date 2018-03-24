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
<div>
	<div id="pageAll" style="float: left;  width:40%;">
		<div class="pageTop">
			<div class="page">
				<img src="${pageContext.request.contextPath }/assets/img/coin02.png" /><span><a href="#">首页</a>&nbsp;-&nbsp;<a
					href="#">入住管理</a>&nbsp;-</span>&nbsp;修改订单信息
			</div>
		</div>

		    	
			
		<form action="${pageContext.request.contextPath }/breakadd.html" name="f" method="post">
		  
		        <div class="page ">
			<!-- 修改密码页面样式 -->
		           
		            <input type="text" class="input3" name="chkID" id="rchkID" value="${account.chkID} " style="display: none"/>
				    <div class="bbD">
					&nbsp;订单单号：<input type="text" class="input3"
						onblur="checkpwd1()" name="inno" id="rinno" value="${account.inno}"  readonly="readonly" />
				    </div>			    
          
				    <input type="text" class="input3" name="userID" value="${account.userID }"  style="display: none"/>
				    
					<div class="bbD" style="color: red">
					&nbsp;&nbsp;&nbsp;&nbsp;破损费：<input type="text" style="color: red" class="input3"  id="22" name="breakdownAccount"  value="${account.breakdownAccount }" onmouseout="count()" />
					</div>
					<div class="bbD" style="color: red">
					&nbsp;特别备注：<input type="text" style="color: red" class="input3"  name="delmark"  value="${account.delmark}" onmouseout="count()" />
					</div>
					<div class="bbD" style="color: red">
					 &nbsp;结算时间：<input id="d424" class="Wdate input3" type="text" name="chktime" value="<fmt:formatDate value='${account.chktime }' pattern='yyyy-MM-dd'/>" onclick="WdatePicker()" readonly="readonly"/> 
					</div>
				
					<div class="bbD" style="color: red">
					 &nbsp;修改时间：<input  class="Wdate input3" type="text" name="updateTime"  onclick="WdatePicker({dateFmt:'yyyy-M-d H:mm:ss',minDate:'%y-%M-%d 7:00:00',maxDate:'%y-%M-{%d+1} 21:00:00'})"/> 
					</div>
					<div class="bbD">
					&nbsp;返还押金：<input type="text" class="input3"   id="3" name="money"  value="${account.money }"  readonly="readonly"/>
					</div>
					<div class="bbD">
					&nbsp;消费总额：<input type="text" class="input3"  id="2" name="moneycount"  value="${account.moneycount }" readonly="readonly" />
					</div>
				<div class="bbD" style="padding-left: 70px">
					<p class="bbDP">
						<button class="btn_ok " onclick="s1()" type="submit" href="#">提交</button>
						<a class="btn_ok btn_no" href="javascript:window.history.back(-1);">取消</a>
					</p>
				</div>
			</div>
 
			<!-- 修改密码页面样式end -->
		
		</form>
		
		
	</div>
<div style="display: none">
简单表达式：
<input type="text" id="1" value="t2" /> 

<br/>
<input type="button" value="点击显示计算结果：" onclick="count()"/> 
<input type="text" id="2" style="background-color:yellow;color:red"/>
</div>
<script>
function  count(){
   var t3=${livein.account};
   var t2=document.getElementById("22").value+"+"+t3;
   var t4=${livein.foregift}-document.getElementById("22").value;
    var t1=document.getElementById("1").value;
    
  document.getElementById("2").value=eval(t2);
   document.getElementById("3").value=eval(t4);
}
</script>
   
       







<div style="float: left;  width:40%; padding-top: 200px">
<table>


<tr>
<td>
 <th width="33%">序号</th>
 <th width="33%">物品名称</th>
 <th width="34%">物品价格</th>
</td>
</tr>
  <c:forEach var="roominfo" items="${breakList }" varStatus="status">
					<tr>
						<td>
						<td>${roominfo.breakdownId }</td>
						<td>${roominfo.breakdownName }</td>
						<td>${roominfo.breakdownPrice }</td>		
						</td>
				   </tr>
						</c:forEach>
						</table>
</div>
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