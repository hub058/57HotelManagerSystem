<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">



<html lang="en" class="no-js">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge"> 
<meta name="viewport" content="width=device-width, initial-scale=1"> 
<title>login</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/assets/css/normalize.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/assets/css/demo.css" />
<!--必要样式-->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/assets/css/component.css" />
<!--[if IE]>
<script src="js/html5.js"></script>
<![endif]-->
<script type="text/javascript">
  						//密码
  						function onupdat(){
  						var pwd1 = $("#pwd1").val();
						    var pwd2 = $("#pwd2").val(); 
						    if (pwd1 != pwd2) {
								alert("两次密码不一样")
								return false;
							}
  						}
  				
   					//校验验证码是否正确
						 function onblurs(){
						 
						  var myreg = $("#miees").val();
						    var phonenum = $("#note").val();  
						    
						    if (myreg == null || myreg =="") {
								 alert('请发送验证码');   
								 return false;  
							}
							if (phonenum == null || phonenum =="") {
								alert('请输入验证码'); 
								return false;  
							}
						    if(myreg != phonenum){   
						        alert('验证有误');   
						        return false;   
						    }else{  
						     return true;
						    }  
						}
							
							
							
						 function validate() {
					    if (confirm("提交表单?")) {
					      return true;
					    } else {
					      return false;
					    }
					   }
						
						 function checkUser(){
							 var myreg = $("#miees").val();
						      var phonenum = $("#note").val();  
						    
						    if (validate()) {
						    
						    if (myreg == null || myreg =="") {
								 alert('请发送验证码');   
								 return false;  
							}
							if (phonenum == null || phonenum =="") {
								alert('请输入验证码'); 
								return false;  
							}
						    if(myreg != phonenum){   
						        alert('验证有误');   
						        return false;   
						    } 
				<%--获取session的值 var s="<%=session.getAttribute("userSess")%>"; --%>
							var datetimepicker1 =$("#name").val();
							var  datetimepicker2=$("#pwd1").val();
							var  cname=$("#pwd2").val();
							var  phonenum=$("#phonenum").val();
							var  roomfjh=$("#note").val();
							if (datetimepicker1 != null && datetimepicker2 != null && cname != null && phonenum != null && roomfjh!= null) {
								stopCount();
								return true;
							}else{
								alert("请把内容填写完整！");  
							}
							}
							}
						
	
</script>
</head>
<body>
		<div class="container demo-1">
			<div class="content">
				<div id="large-header" class="large-header">
					<canvas id="demo-canvas"></canvas>
					<div class="logo_box">
						<h3>修改页面</h3>
						<form action="${pageContext.request.contextPath }/updateUser" name="f" method="post">
							<div class="input_outer">
								<span class="u_user"></span>
								<input name="cname" id="name" class="text" style="color: #FFFFFF !important" type="text" placeholder="请输入账户">
							</div>
							<div class="input_outer">
								<span class="us_uer"></span>
								<input name="pwd" id="pwd1" class="text"  style="color: #FFFFFF !important; position:absolute; z-index:100;"value="" type="password" placeholder="请输入密码">
							</div>
							<div class="input_outer">
								<span class="u_user"></span>
								<input name="pwds" class="text" id="pwd2" onblur="onupdat()" style="color: #FFFFFF !important" type="password" placeholder="请再次输入密码">
								
							</div>
							<div class="input_outer">
								<span class="u_user"></span>
								<input name="ctel" class="text" style="color: #FFFFFF !important" id="phonenum"  type="text" placeholder="请输入手机号">
							</div>
							<div>
								<input id="second" type="button" value="点击获取验证码" class="btn btn-success" style="height: 50px;width: 165x;background-color: #0094E4 "/>
								<input href="${pageContext.request.contextPath }/login" type="button" value="登入" class="btn btn-success" style="height: 50px;width: 165px;background-color: #0094E4 "/>
								
							</div>
							<div class="input_outer">
								<span class="u_user"></span>
								<input  id="note" class="text" onblur="onblurs()" style="color: #FFFFFF !important" type="password" placeholder="输入验证码">
									<input type="hidden" id="miees" value="${note}">
							</div>
							
							 <button id="send" type="submit" class="btn btn-success" style="height: 50px;width: 330px;background-color: #0094E4 ">确定</button>
						</form>
					</div>
				</div>
			</div>
		</div><!-- /container -->
		<script type="text/javascript"
		src="${pageContext.request.contextPath }/assets/js/jquery.smartmenus.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/assets/js/jquery.parallax.min.js"></script>
		<script type="text/javascript"
		src="${pageContext.request.contextPath }/assets/js/jquery.min.js"></script>
		<script type="text/javascript"
		src="${pageContext.request.contextPath }/assets/js/jquery-ui.min.js"></script>
		<script src="${pageContext.request.contextPath }/assets/js/TweenLite.min.js"></script>
		<script src="${pageContext.request.contextPath }/assets/js/EasePack.min.js"></script>
		<script src="${pageContext.request.contextPath }/assets/js/rAF.js"></script>
		<script src="${pageContext.request.contextPath }/assets/js/demo-1.js"></script>
		<script type="text/javascript">
		$(function(){  
						    $("#second").click(function (){  
						        sendCode($("#second"));  
						    });
						});
						//发送验证码  
						function sendCode(obj){  
						    var phonenum = $("#phonenum").val();  
						    var result = isPhoneNum();  
						    if(result){  
						        doPostBack('${base}/login/getCode.htm',backFunc1,{"phonenum":phonenum});  
						        settime(obj);//开始倒计时  
						    };
						}  
						//将手机利用ajax提交到后台的发短信接口  
						function doPostBack(url,backFunc,queryParam) {  
						queryParam=$("#phonenum").val();
						    $.ajax({  
						        async : false,  
						        cache : false,  
						        type : "GET",  
						        url : "noteVerify",// 请求的action路径  
						        data:{queryParam : queryParam
											},  
						        error : function() {// 请求失败处理函数  
						        },  
						        success : function(data){
						        	$("#miees").val(data);
						        }  
						    });  
						}  
						function backFunc1(data){  
						    var d = $.parseJSON(data);  
						    if(!d.success){  
						        alert(d.msg);  
						    }else{//返回验证码  
						        alert("模拟验证码:"+d.msg);  
						        $("#code").val(d.msg);  
						    };
						}  
						//开始倒计时  
						var countdown = 60;  
						function settime(obj) {   
						    if (countdown == 0) {   
						        obj.removeAttr("disabled");      
						        obj.val("免费获取验证码");   
						        return;  
						    } else {   
						        obj.attr("disabled", true);   
						        obj.val("重新发送(" + countdown + ")");   
						        countdown--;  
						    }
						    t= setTimeout(function() { settime(obj);},1000); //每1000毫秒执行一次  
						}   
						//清除计时器
						function stopCount() {
							clearTimeout(t);
						}
						//校验手机号是否合法  
						function isPhoneNum(){  
						    var phonenum = $("#phonenum").val();  
						    var myreg = /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1}))+\d{8})$/;   
						    if(!myreg.test(phonenum)){   
						        alert('请输入有效的手机号码！');   
						        return false;   
						    }else{  
						        return true;  
						    }  
							}
		
		</script>
	</body>
</html>