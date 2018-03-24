
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>T57亿酒店</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="assets/css/style.css">
<link rel="stylesheet" href="assets/css/responsive.css">

<script type="text/javascript">
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
							var datetimepicker1 =$("#datetimepicker1").val();
							var  datetimepicker2=$("#datetimepicker2").val();
							var  cname=$("#cname").val();
							var  phonenum=$("#phonenum").val();
							var  roomfjh=$("#roomfjh").val();
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

	<!-- main wrapper -->
	<div class="wrapper">
		<!-- header -->
		<header class="header">
		<div class="header-top">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 col-md-8 col-sm-8 col-xs-12">
						<div class="header-location">
							<i class="fa fa-home"></i> <a href="#">455 马丁森,洛杉矶</a>
						</div>
						<div class="header-email">
							<i class="fa fa-envelope-o"></i> <a
								href="mailto:support@email.com">support@email.com</a>
						</div>
						<div class="header-phone">
							<i class="fa fa-phone"></i> <a href="#">8 (043) 567 - 89 - 30</a>
						</div>
					</div>
					<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
						<div id="mymodel" class="modal fade">
							<div class="modal-dialog">
								<a href="#my" class="btn btn-primary" data-toggle="modal">登录</a>
								<div id="#my" class="modal fade bs-example-model-sm">
									<h2>vhnb</h2>
								</div>
								<div class="modal-content"><</div>
							</div>
						</div>

					</div>
					<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
						<div class="header-social pull-right">
							<a href="#"><i class="fa fa-twitter"></i> </a> <a href="#"><i
								class="fa fa-facebook"></i> </a> <a href="#"><i
								class="fa fa-google-plus"></i> </a> <a href="#"><i
								class="fa fa-dribbble"></i> </a> <a href="#"><i
								class="fa fa-instagram"></i> </a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="header-bottom">
			<nav class="navbar navbar-universal navbar-custom">
			<div class="container">
				<div class="row">
					<div class="col-lg-3">
						<div class="logo">
							<a href="index.html" class="navbar-brand page-scroll"><img
								src="assets/images/logo/logo.png" alt="logo"> </a>
						</div>
					</div>
					<div class="col-lg-9">
						<div class="navbar-header">
							<button type="button" data-toggle="collapse"
								data-target=".navbar-main-collapse" class="navbar-toggle">
								<span class="sr-only">Toggle 切换导航</span><span class="icon-bar"></span><span
									class="icon-bar"></span><span class="icon-bar"></span>
							</button>
						</div>
						<div class="collapse navbar-collapse navbar-main-collapse">
							<ul class="nav navbar-nav navbar-right">
								<li><a href="${pageContext.request.contextPath }/index">家</a>
								</li>
								<li><a href="${pageContext.request.contextPath }/referral">关于我们</a>
								</li>
								<li><a href="${pageContext.request.contextPath }/wedding">婚礼宴请</a>
								</li>
								<li><a
									href="${pageContext.request.contextPath }/DetailRoomFunction?id=1">房间细节</a>
								</li>
								<li><a href="${pageContext.request.contextPath }/ownRoom">所有房间</a>
								</li>
								<c:if test="${userSess.cname != null }">	
								<li>
								<a href="${pageContext.request.contextPath }/tuichu">退出</a>
								</li>
								</c:if> 
								<c:if test="${userSess.cname == null }">
								<li> 
								<a href="${pageContext.request.contextPath }/login">登入</a>
								</li>
								</c:if>
							</ul>
						</div>
					</div>
				</div>
			</div>
			</nav>
		</div>
		</header>
		<!-- /header -->
		<!-- parallax -->
		<section class="bg-parallax parallax-window">
		<div class="overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
					<div class="parallax-text">
						<h2 class="parallax_t __white">新大酒店5 *</h2>
						<h2 class="parallax_t __green">可以从10.12.2017</h2>
						<p>办公室聚会持续向外没有什么年龄几的决心。 印象判断理解我们感兴趣他卓越。 他非常使用投影收集对世界吃四十.</p>
					</div>
				</div>

				<!-- planner ${session.getcID()}-->
				<form id="formid" onsubmit="return checkUser();"
					class="form-planner form-horizontal" method="post"
					action="${pageContext.request.contextPath}/obleRoom">


					<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 planner">
						<div class="planner-block">
							<div class="row">
								<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
									<div class="form-group">
										<label>入住时间</label> <input 
											type="text" class="form-control __plannerInput"
											id="datetimepicker1" name="intime" value="${nian}-${yue}-${ri}"
											onfocus="WdatePicker({minDate:'%y-%M-%d'})" />
									</div>
								</div>
								<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
									<div class="form-group">
										<label>离店时间 </label> <input placeholder="17-05-2015"
											type="text" class="form-control __plannerInput"
											id="datetimepicker2" name="leavetime" value="${nian}-${yue}-${(ri+1)}"
											onfocus="WdatePicker({minDate:'%y-%M-{%d+1}'})" />
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
									<div class="form-group">
										<label>房间类型 </label>
										<div class="theme-select">
											<select id="roomlx" class="form-control __plannerSelect">
												<c:if test="${lx == null}">
													<option value="">--》请选择《--</option>
												</c:if>

												<c:if test="${roomMold != null}">
													<c:forEach var="room" items="${roomMold}">
														<option value="${room.getId()}"
															<c:if test="${lx == room.getId()}">selected</c:if>>${room.getRoomTypeName()}</option>
													</c:forEach>
												</c:if>
											</select>
										</div>
									</div>
								</div>

								<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">


									<label>预定人</label>
									<div class="form-group">
										<input name="cname" id="cname" class="form-control"
											value="${userSess.cname}" type="text">
									</div>


								</div>
							</div>
							<div class="row">
								<div class="col-lg-4 col-md-4 col-sm-4 col-xs-10">
									<div class="form-group">
										<label>预留手机号</label>
										<div class="form-group">
											<input name="ctels" id="phonenum" class="form-control"
												value="${userSess.ctel}" type="text">
										</div>
									</div>
								</div>
								<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
									<div class="form-group">
										<label>验证</label>
										<div class="form-group">
											<input class="#FFFFF" style="height: 40px;widows: 30px"
												id="second" type="button" value="获取验证码">
										</div>
									</div>
								</div>

								<div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
									<label>房间号</label>
									<div class="theme-select">
										<select id="roomfjh" name="roomID"
											class="form-control __plannerSelect">
											<c:if test="${fjh != null}">
												<option value="">${fjh}</option>
											</c:if>

										</select>
									</div>
								</div>
								<div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
									<label>价格</label>
									<div id="roomyj" class="form-group">
										<c:if test="${rooml == null}">
											<input value="" name="foregift" readonly="readonly" type="text"
												class="form-control">
										</c:if>
										<c:if test="${rooml != null}">
											<input value="${rooml.roomtype.roomPrice}" name="foregift"
												type="text" class="form-control">
										</c:if>

									</div>
								</div>


							</div>
							<!-- style="display:none"  -->
							<div class="row" id="credit">
								<div id="test" class="col-lg-4 col-md-4 col-sm-4">
									<label>验证码</label>
									 <input id="note" class="form-control"	onblur="onblurs()" type="text">
										<input type="hidden" id="miees" value="${note}">
								</div>
								<div id="test" class="col-lg-8 col-md-8 col-sm-8 ">
									<label>要求</label> <input name="demand" class="form-control"
										value="" type="text">

								</div>
							</div>
							<div class="row">
								<div id="test" class="col-lg-6 col-md-6 col-sm-6 "></div>
								<div id="oi" class="col-lg-6 col-md-6 col-sm-6">
									<div class="planner-check-availability">
										<input type="submit" class="btn btn-default" value="预定房间">
									</div>
								</div>
							</div>
						</div>
					</div>
				</form>
				<!-- /planner-->
			</div>
		</div>

		</section>
		<!-- /parallax -->
		<!-- chose best rooms -->
		<section class="best-room">
		<div class="container">
			<div class="title-main">
				<h2 class="h2">
					最好提供周末<span class="title-secondary">看起来我们特色的房间</span>
				</h2>
			</div>


			<div class="best-room-carousel">
				<ul class="row best-room_ul">

					<c:forEach var="lintin" items="${limit}">
						<li class="col-lg-4 col-md-4 col-sm-6 col-xs-12 best-room_li">
							<div class="best-room_img">
								<a href="#"><img src="${lintin.roomImg}" alt=""> </a>
								<div class="best-room_overlay">
									<div class="overlay_icn">
										<a
											href="${pageContext.request.contextPath }/DetailRoomFunction?id=${lintin.id}"></a>
									</div>
								</div>
							</div>
							<div class="best-room-info">
								<div class="best-room_t">
									<a
										href="${pageContext.request.contextPath }/DetailRoomFunction?id=${lintin.id}">${lintin.roomtype.roomTypeName}</a>
								</div>
								<div class="best-room_desc">
									<span> ${lintin.roomLoc} 在昏迷的合理的困难。 他们从了他。 偏好自己我彻底的偏爱。</span>
								</div>
								<div class="best-room_price">
									<span>${lintin.roomtype.roomPrice} 元/晚</span>
								</div>
							</div></li>
					</c:forEach>

				</ul>
			</div>



		</div>
		</section>

		<!-- /choose best rooms -->
		<!-- lux banner parallax -->
		<section class=" bg-parallax2">
		<div class="overlay"></div>
		<div class="banner-parallax">
			<div class="container">
				<div class="text-center">
					<div class="banner-parallax_raiting">
						<a href="#"><span class="star __selected"></span> </a> <a href="#"><span
							class="star __selected"></span> </a> <a href="#"><span
							class="star __selected"></span> </a> <a href="#"><span
							class="star"></span> </a> <a href="#"><span class="star"></span>
						</a>
					</div>

					<h2 class="banner-parallax_t">双层豪华房间</h2>
					<div class="banner-parallax_price">
						<span>560美元</span> /晚(本周)
					</div>
					<a href="#" class="btn btn-default">书这个房间</a>
				</div>
			</div>
		</div>
		</section>
		<!-- /lux banner parallax -->
		<!-- enjoy our services -->
		<section class="section">
		<div class="container">
			<div class="title-main">
				<h2 class="h2">
					我们的服务<span class="title-secondary">太好了。 安全的。 免费的。</span>
				</h2>
			</div>
			<div class="row">
				<div class="col-lg-4 col-md-4 col-sm-6">
					<h3 class="service_title">
						<i class="fa fa-globe"></i> 不同的旅游
					</h3>
					<p>改善惭愧结婚费用床上她的舒适追求四个时间把你们作为失败的夫人太太。 .</p>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-6">
					<h3 class="service_title">
						<i class="fa fa-taxi"></i> 出租车服务
					</h3>
					<p>改善惭愧结婚费用床上她的舒适追求四个时间把你们作为失败的夫人太太。 .</p>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-6">
					<h3 class="service_title">
						<i class="fa fa-glass"></i> 酒吧里包括
					</h3>
					<p>改善惭愧结婚费用床上她的舒适追求四个时间把你们作为失败的夫人太太。 .</p>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-6">
					<h3 class="service_title">
						<i class="fa fa-life-ring"></i> 折扣体系
						<p>改善惭愧结婚费用床上她的舒适追求四个时间把你们作为失败的夫人太太。 .</p>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-6">
					<h3 class="service_title">
						<i class="fa fa-leaf"></i> 专业人员
					</h3>
					<p>改善惭愧结婚费用床上她的舒适追求四个时间把你们作为失败的夫人太太。 .</p>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-6">
					<h3 class="service_title">
						<i class="fa fa-eye"></i> 停车24/7
					</h3>
					<p>改善惭愧结婚费用床上她的舒适追求四个时间把你们作为失败的夫人太太。 .</p>
				</div>
			</div>
		</div>
		</section>
		<!-- /enjoy our services -->
		<!-- testiomonials -->
		<section class="testimonials">
		<div class="container">
			<div class="title-main">
				<h2 class="h2">
					一些Testimonails <a></a>${Evaluate.customer.csex} <span
						class="title-secondary">人说关于我们</span>
				</h2>
			</div>

			<div class="owl-carousel">
				<c:forEach var="Evaluate" items="${listEvaluate}">
					<div class="owl-item cloned"
						style="width: 555px; margin-right: 30px;">
						<div class="item">
							<div class="testimonials-block_i">
								<div class="testimonials-block_t">
									<font id="WOW_TRANSLATE_36" class="WOW_TRANSLATE_STYLE"
										data--w-o-w_-i-n-d-e-x="36">非常感谢你</font><span><font
										id="WOW_TRANSLATE_37" class="WOW_TRANSLATE_STYLE"
										data--w-o-w_-i-n-d-e-x="37">我很高兴!</font> </span>
								</div>
								<p>
									<font id="WOW_TRANSLATE_38" class="WOW_TRANSLATE_STYLE"
										data--w-o-w_-i-n-d-e-x="38"><span>${Evaluate.evaluateName}</span>
									</font>
								</p>
							</div>
							<div class="testimonials-block_user">
								<div class="user_img">
									<c:if test="${Evaluate.customer.csex == '男'}">
										<img
											src="${pageContext.request.contextPath }/assets/images/testimonials/mike.jpg"
											alt="">
									</c:if>
									<c:if test="${Evaluate.customer.csex == '女'}">
										<img
											src="${pageContext.request.contextPath }/assets/images/testimonials/mila.png"
											alt="">
									</c:if>
								</div>
								<div class="user_n">
									<font id="WOW_TRANSLATE_39" class="WOW_TRANSLATE_STYLE"
										data--w-o-w_-i-n-d-e-x="39"> <span>${Evaluate.customer.cname}</span>
									</font>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>

		</div>
		</section>
		<!-- /testiomonials -->
		<!-- map -->
		<!-- <section class="map">
		<div id="map"></div>
		</section> -->
		<!-- /map -->
		<!-- /main wrapper -->
		<!-- footer -->
		<footer class="footer">
		<div class="footer-top">
			<div class="container">
				<div class="row">
					<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
						<div class="footer-top_logo">
							<a href="index.html"><img src="assets/images/logo/logo.png"
								alt="Footer logo"> </a>
						</div>
						<div class="footer-top_txt">
							<p>持续的高兴和其他地方一样确信无情。 介绍了刺激附件没有被投影。 夫人我英里出售四个需要介绍。</p>
						</div>
						<div class="footer-top_address">
							<div>
								<i class="fa fa-phone"></i> 电话: <span>8 (043) 567 - 89 -
									30</span>
							</div>
							<div>
								<i class="fa fa-envelope-o"></i> 电子邮件: <span><a
									href="mailto:support@email.com">support@email.com</a> </span>
							</div>
							<div>
								<i class="fa fa-home"></i> 地点: <span>455 马丁森,洛杉矶</span>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
						<div class="footer-top_rooms">
							<ul>
								<li>
									<div class="rooms_img">
										<a href="blog-detail.html"><img
											src="assets/images/footer/1.jpg" alt=""> </a>
									</div>
									<div class="rooms_info">
										<div class="rooms_t">
											2 <a
												href="${pageContext.request.contextPath }/index?roomTypeID=1">Grang超豪华</a>
										</div>
										<div class="rooms_props">
											3 床 / Wi-Fi / 2 - 浴室<span>$119</span>
										</div>
									</div>
								</li>
								<li>
									<div class="rooms_img">
										<a href="blog-detail.html"><img
											src="assets/images/footer/2.jpg" alt=""> </a>
									</div>

									<div class="rooms_info">
										<div class="rooms_t">
											<a
												href="${pageContext.request.contextPath }/index?roomTypeID=8">总统的房间</a>
										</div>
										<div class="rooms_props">
											4 床 / Wi-Fi / 3 - 浴室<span>$329</span>
										</div>

									</div>
								</li>
								<li>
									<div class="rooms_img">
										<a href="blog-detail.html"><img
											src="assets/images/footer/3.jpg" alt=""> </a>
									</div>
									<div class="rooms_info">
										<div class="rooms_t">
											<a
												href="${pageContext.request.contextPath }/index?roomTypeID=2">温泉双人房</a>
										</div>
										<div class="rooms_props">
											2 床 / Wi-Fi / 2 - 浴室<span>$749</span>
										</div>
									</div>
								</li>
							</ul>
						</div>
					</div>
					<div class="col-lg-4 col-md-4 col-sm-12 marg-sm-50 col-xs-12">
						<div class="footer-top_contact_form">
							<div class="contact_form_t">触点形式</div>
							<form action="mail.php" method="POST"
								class="row form-horizontal form-wizzard">
								<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
									<input type="text" name="name" class="form-control"
										placeholder="Name ...">
								</div>
								<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
									<input type="email" name="email" class="form-control"
										placeholder="Email ...">
								</div>
								<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
									<textarea rows="6" name="message" class="form-control"
										placeholder="Message ..."></textarea>
								</div>
								<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-right">
									<input type="submit" value="Send message"
										class="btn btn-default">
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="	footer-bottom">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<div class="footer-bottom_copy">
							版权 &copy; 2017.公司名称保留所有权利
						</div>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<div class="footer-bottom_links">
							<a class="active" href="index.html">家</a> <a href="#">画廊</a>
							<a href="#">博客</a> <a href="#">预定</a> <a
								href="#">购买</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		</footer>
	</div>
	<input id="lx" value="${lx}" />
	<!-- /footer -->
	<!-- Scripts -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/assets/js/jquery.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/assets/js/tether.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/assets/js/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/assets/js/jquery-ui.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/assets/js/moment.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/assets/js/jquery.smartmenus.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/assets/js/jquery.parallax.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/assets/js/jquery.shuffle.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/assets/js/owl.carousel.min.js"></script>
	<!---<script type="text/javascript" src="http://ditu.google.cn/maps/api/js"></script>--->
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/assets/js/map.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/assets/js/main.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/js/My97DatePicker/WdatePicker.js"></script>
	<script type="text/javascript">
	
function changePrice() {
							
														/* 计算价格  and 日期判断*/
															var rq1=$("#datetimepicker1").val();
															var rq2=$("#datetimepicker2").val();
															var d1 = new Date(rq1.replace(/\-/g, "\/"));  
 															var d2 = new Date(rq2.replace(/\-/g, "\/"));
 															
 															  if(rq1!=""&&rq2!=""&&d1 >=d2)  
																 {  
																  alert("离店时间不能大于入住时间");  
																  return false;  }
																  rq1 = new Date(rq1.replace(/-/g, "/")); 
																  rq2 = new Date(rq2.replace(/-/g, "/"));
																  
															var days = rq2.getTime() - rq1.getTime();
															var time = parseInt(days / (1000 * 60 * 60 * 24));
															var Price=0;
								var roomfjh = $("#roomlx").val();
								if (roomfjh != 0) {
									$
											.ajax({
												type : "GET",
												url : "skyRoom",
												data : {
													pid : roomfjh
												},
												dataType : "json",
												success : function(data) {//data：返回数据（json对象）
													$("#roomfjh").html("");
													var options = "<option value=\"\">--请选择--</option>";
													var yj="<input value="+ 0 +" name="+"foregift"+"  readonly="+"readonly"+"  type="+"text"+" class="+"form-control"+" >";
													if (data != 0) {
														for ( var i = 0; i < data.length; i++) {
														
														if (Price <=0) {
															Price=data[i].roomtype.roomPrice;
														}
														
														options += "<option value=\""+data[i].roomID+"\" <c:if test="+${fjh == data[i].roomID}+" >selected</c:if> >"
																+ data[i].roomID
																+ "</option>";
																}
																
																   
															 Price = time * Price;
															 var yj = "<input value="+ Price +" name="+"foregift"+"  readonly="+"readonly"+"  type="+"text"+" class="+"form-control"+" >";
																$("#roomyj").html(yj);
													}else {
													
														if(roomfjh == 1) {
														alert("你好这个类型的没有空房了！");
															Price =time * 198;
															}
														if(roomfjh == 2) {
														alert("你好这个类型的没有空房了！");
															Price =time * 298;
															}
														if(roomfjh == 3) {
														alert("你好这个类型的没有空房了！");
															Price =time * 298;
															}
														if(roomfjh == 4) {
														alert("你好这个类型的没有空房了！");
															Price =time * 298;
															}
														if(roomfjh == 5) {
														alert("你好这个类型的没有空房了！");
															Price =time * 888;
															}
														if(roomfjh == 6) {
														alert("你好这个类型的没有空房了！");
															Price =time * 498;
															}
														if(roomfjh == 7) {
														alert("你好这个类型的没有空房了！");
															Price =time * 1998;
															}
														if(roomfjh == 8) {
														alert("你好这个类型的没有空房了！");
															Price =time * 1998;
															}
															 yj = "<input value="+ Price +" name="+"foregift"+"  readonly="+"readonly"+"  type="+"text"+" class="+"form-control"+" >";
														$("#roomyj").html(yj);
													}
													
													$("#roomfjh").html(options);
													
												},
											});
								} else {
									$("#roomfjh").html("");
									var options = "<option value=\"\">--请选择--</option>";
								}
							}
	
	  $(function(){
	  	changePrice();
	  });
		var t;
		
		$(function() {	
			$("#roomlx")
					.change(changePrice);

			/* $("")
		$("#roomlx") 
					.change(
					
							function() {
							
								var roomfh = $("#roomlx").val();
									
								$
								.ajax({
											type : "GET",
											url : "yjRoom",
											data : {
												pid : roomfh
											},
											dataType : "json",
											success : function(md) {//data：返回数据（json对象）
												if (md != null) {
													var yj = "<input value="+ md +" name="+"foregift"+"  readonly="+"readonly"+"  type="+"text"+" class="+"form-control"+" >";

													$("#roomyj").html(yj);
												}
											}
										});
							});
 */
								
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
						    var myreg = /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1})|(17[0-9]{1}))+\d{8})$/;   
						    if(!myreg.test(phonenum)){   
						        alert('请输入有效的手机号码！');   
						        return false;   
						    }else{  
						        return true;  
						    }  
							}
		});
	</script>

	<!-- /Scripts -->
</body>
</html>
