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
<title>添加入住信息</title>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/assets/common/css/css.css" />
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/common/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/My97DatePicker/WdatePicker.js"></script>
</head>
<body>
	<div id="pageAll">
		<div class="pageTop">
			<div class="page">
				<img src="${pageContext.request.contextPath }/assets/img/coin02.png" /><span><a href="#">首页</a>&nbsp;-&nbsp;<a
					href="#">入住管理</a>&nbsp;-</span>&nbsp;新增入住
			</div>
		</div>
		<div class="page " style="padding-right: 50px">
			<!-- 会员注册页面样式 -->
			<div class="banneradd bor">
				<div class="baTopNo" >
					<span>新增入住单</span>
				</div>
				<div class="">
				<iframe name="FORMSUBMIT" width="1" height="1" ></iframe> 
				
			<form style="display: none;" action="${pageContext.request.contextPath }/liveinaddSaves.html" target="FORMSUBMIT" name="f" method="post" onsubmit="return x(this)" >
		        <input type="" name="id"  value="${info.id}">
		        <div class="page ">
		
				<div class="bbD">
					房间牌号：<input type="text" class="input3"
						onblur="checkpwd1()" name="roomID" value="${info.roomID}"  />
				</div>
				<div class="bbD">
					房间状态：<input type="text" class="input3" name="roomState" value="正在入住" />
				</div>

				<div class="bbD">
					<p class="bbDP">
						<button class="btn_ok " onclick="s2()" id="test"  type="submit" href="#">提交</button>
						<a class="btn_ok btn_no" href="javascript:window.history.back(-1);">取消</a>
					</p>
				</div>
			</div>
			<!-- 修改密码页面样式end -->
		</form>
		
		
				<form action="${pageContext.request.contextPath }/liveinaddSave.html"  name="f" method="post" style="padding-left: 50px">
				
					<div class="bbD">
					<input type="hidden" class="input3"  name="inno" value="${innos}" />
					</div>
					<div class="bbD" style="color: red">
						&nbsp;&nbsp;&nbsp;&nbsp;房间号：<input type="text" class="input3" style="color: red" name="roomID" id="rid" readonly="readonly" value="${info.roomID}"  />
						<span style="color: red">日 价 :&nbsp;${infos.roomPrice}</span>
					</div>
					<div class="bbD">
		                        &nbsp;用户编码：<input type="text" class="input3" name="cID" id="cID" />
						
					</div>
					<div class="bbD">
						&nbsp;客户姓名：<input type="text" class="input3"  name="cname"/>
					</div>
					<div class="bbD">
						&nbsp;客户性别：&nbsp;&nbsp;&nbsp;<input type="radio" id="userSex" name="csex" ${livein.csex=='男'?'checked':''} value="男"> <label for="flat-radio-1" class="" >男</label>  
                                       <input type="radio" id="userSex" name="csex" ${livein.csex=='女'?'checked':''} value="女"> <label for="flat-radio-1" class="" >女</label>  
					</div>
					<div class="bbD">
					
					&nbsp;证件类型：&nbsp;&nbsp;&nbsp;<select name="zjtype" style="height: 40px;width: 243px">     
                                        <option>-请选择-</option>     
                                        <option>身份证</option>     
                                        <option>驾驶证</option>  
                                        <option>护照</option> 
                                     </select>  
					</div>
					<div class="bbD">
					&nbsp;证件编号：<input type="text" class="input3"  name="zjno" />
					</div>
					
					<div class="bbD">
					&nbsp;入住人数：<input type="text" class="input3"  name="renshu" />
					</div>
					<div class="bbD">
					&nbsp;入住时间：<input id="ksDate" name="intime"  onChange="doSum()" type="text"  
                          class="Wdate input3" onClick="WdatePicker({minDate:'%y-%M-%d', readOnly:true,onpicked:function(dp) {contractdate(dp)}})">   
					</div>
					<div class="bbD">
					&nbsp;离开时间：<input id="jsDate" name="leavetime" disabled onChange="doSum()"  type="text"  
                          class="Wdate input3" onClick="WdatePicker({minDate:'%y-%M-{%d+1}',readOnly:true,onpicked:function(dp) {contractdate(dp)}})">   
					</div>
					<div class="bbD">
					&nbsp;联系电话：<input type="text" class="input3"  name="ctel" />
					</div>
					<div class="bbD">
					&nbsp;住房押金：<input type="text" class="input3"  name="foregift" />
					</div>
					<div class="bbD">
					&nbsp;特别备注：<input type="text" class="input3"  name="addr" />
					</div>
					<div class="bbD">
					&nbsp;入住天数：<input type="text" style="color: red" class="input3"  name="days" id="Result" readonly/>
					</div>
					<div class="bbD">
					&nbsp;住房总额：<input type="text" style="color: red" id="2" class="input3"  name="account" readonly="readonly" />
					</div>
					<div class="bbD">
					&nbsp;支付方式：&nbsp;&nbsp;&nbsp;<select name="delmark" style="height: 40px;width: 243px">     
                                        <option>-请选择-</option>     
                                        <option>现金</option>     
                                        <option>刷卡</option>  
                                        <option>支付宝</option> 
                                        <option>微信</option> 
                                        <option>其他</option> 
                                     </select>  
					
					</div>
					<div class="bbD" style="display: none">
					房间状态：<input type="text" class="input3" name=leveinTypeID value="1" />
				</div>
					
					<div class="bbD">
						<p class="bbDP">
							<button onclick="s1()"  class="btn_ok btn_yes" type="submit" href="#">提交</button>
							<a class="btn_ok btn_no" href="javascript:window.history.back(-1);">取消</a>
						</p>
					</div>
					</form>
				</div>
			
          
			</div>

			<!-- 会员注册页面样式end -->
		</div>
	</div>
	<div style="display: none;">
简单表达式：
<input type="text" id="1" value="${infos.roomPrice} * document.getElementById('Result').value" style="background-color:grey;color:red"/>
<br/>
<input type="button" value="点击显示计算结果：" onmouseout="count()"/>

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
             
            var t1=document.getElementById("1").value;
             document.getElementById("2").value=eval(t1);

            }
        }
    }
}
</script>
<script type="text/javascript">
function s2(){

}
function s1(){

document.getElementById("test").click();
}
</script>
</html>