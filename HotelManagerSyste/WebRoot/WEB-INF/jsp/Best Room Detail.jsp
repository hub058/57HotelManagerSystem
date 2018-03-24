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
</head>
<body>
	<!-- main wrapper -->
	<div class="wrapper">
		<!-- header -->
		<header class="header">
		<div class="header-top">
			<div class="container">
				<div class="row">
					<div class="col-lg-9 col-md-8 col-sm-8 col-xs-12">
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
		<!-- breadcrumbs -->
		<section class="breadcrumbs"
			style="background-image: url(${pageContext.request.contextPath }assets/images/breadcrumbs/best-room.jpg)">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<h1 class="h1">房间细节</h1>
				</div>
				<div class="col-md-6">
					<ol class="breadcrumb">
						<li><a href="#">家</a><i class="fa fa-angle-right"></i></li>
						<li><a href="#">房间</a><i class="fa fa-angle-right"></i></li>
						<li class="active">房间细节</li>
					</ol>
				</div>
			</div>
		</div>
		</section>
		<!-- /breadcrumbs -->
		<!-- room details-->
		<section class="room-detail">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12">
					<div class="row reservation-top">
						<div class="module __reservation">
							<div class="module-block">
								<form action="${pageContext.request.contextPath}/referRoom"
									class="form-planner form-horizontal">
									<div class="col-md-4 col-xs-6">
										<div class="form-group">
											<label>房间类型</label>
											<div class="theme-select">
												<select id="roomlx" name="roomTypeID"
													class="form-control __plannerSelect">
													<c:if test="${roomMold != null}">
														<option value="">--》请选择《--</option>
														<c:forEach var="room" items="${roomMold}">
															<option value="${room.getId()}">${room.getRoomTypeName()}</option>
														</c:forEach>
													</c:if>
												</select>
											</div>
										</div>
									</div>
									<div class="col-md-4 col-xs-6">
										<div class="form-group">
											<label>房间号</label>
											<div class="theme-select">
												<select id="roomfjh" name="roomID"
													class="form-control __plannerSelect">

												</select>
											</div>
										</div>
									</div>
									<div class="col-md-2 col-xs-12">

										<div class="form-group">
											<button class="btn btn-default wizzard-search-btn"
												type="submit" value="">搜索
										</div>
									</div>
								</form>
								<div class="col-md-2 col-xs-12">
									<div class="form-group">
										<a href="${pageContext.request.contextPath}/goRoom?roomTypeID=${detail.roomTypeID}&roomID=${detail.roomID}"
											class="btn btn-default wizzard-search-btn" type="button">一键预定</a>
										
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>




				<div class="col-lg-12 marg50">
					<h2 class="h2">高级客房——两个床</h2>
				</div>

				<div class="col-lg-6 col-md-6 col-sm-6">
					<div class="owl-carousel owl_gallery">
						<div class="item">
							<img class="img-responsive" src="${detail.roomImg}">
						</div>
					</div>
				</div>
				<div class="col-lg-6 col-md-6">
					<div class="room-detail_overview">
						<table class="simple">
							<tr>
								<td><strong>价格:${detail.roomtype.foregift}</strong></td>
								<td><span> ${detail.roomID} </span> /一个晚上</td>
							</tr>
							<tr>
								<td><strong>房间大小:</strong></td>
								<td>150 平方米</td>
							</tr>
							<tr>
								<td><strong>床:</strong></td>
								<td>2王床</td>
							</tr>
							<tr>
								<td><strong>马克斯:</strong></td>
								<td>5 人</td>
							</tr>
							<tr>
								<td><strong>Wi-Fi:</strong></td>
								<td>的家庭</td>
							</tr>
							<tr>
								<td><strong>客房服务:</strong></td>
								<td>的家庭</td>
							</tr>
							<tr>
								<td><strong>早餐:</strong></td>
								<td>包括</td>
							</tr>
							<tr>
								<td><strong>衣服:</strong></td>
								<td>的家庭</td>
							</tr>
							<tr>
								<td><strong>出租车到机场:</strong></td>
								<td>是的</td>
							</tr>
						</table>
					</div>
				</div>








			</div>
		</div>
		</section>
		<!-- /room details -->
		<!-- chose best rooms -->
		<section class="best-room">
		<div class="container">
			<h2 class="h2">最近的房间</h2>


			<div class="best-room-carousel">
				<ul class="row best-room_ul">
					<c:forEach var="lintin" items="${recentlylist}">
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
									<a href="best-rooms-detail.html">${lintin.roomID}</a>
								</div>
								<div class="best-room_desc">
									<span> ${lintin.roomLoc} 在昏迷的合理的困难。 他们从了他。 偏好自己我彻底的偏爱。</span>
								</div>
								<div class="best-room_price">
									<span>${lintin.roomState} //</span>
								</div>
							</div>
						</li>
					</c:forEach>
				</ul>
			</div>

		</div>
		</section>
		<!-- /choose best rooms -->
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
											2 <a href="${pageContext.request.contextPath }/index?roomTypeID=1">Grang超豪华</a>
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
											<a href="${pageContext.request.contextPath }/index?roomTypeID=8">总统的房间</a>
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
											<a href="${pageContext.request.contextPath }/index?roomTypeID=2">温泉双人房</a>
										</div>
										<div class="rooms_props">
											2 床 / Wi-Fi / 2 - 浴室<span>$749</span>
										</div>
									</div>
									</li>
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
		<div class="footer-bottom">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<div class="footer-bottom_copy">
							版权 &copy; 2017.公司名称保留所有权利.网页模板.<a target="_blank"
								href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a>
						</div>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<div class="footer-bottom_links">
							<a class="active" href="index.html">家</a> <a href="gallery.html">画廊</a>
							<a href="blog.html">博客</a> <a href="wizzard-step1.html">预定</a> <a
								href="#">购买</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		</footer>
	</div>
	<!-- /footer -->
	<!-- Scripts -->
	<script type="text/javascript" src="assets/js/jquery.min.js"></script>
	<script type="text/javascript" src="assets/js/tether.min.js"></script>
	<script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="assets/js/jquery-ui.min.js"></script>
	<script type="text/javascript" src="assets/js/moment.min.js"></script>
	<script type="text/javascript" src="assets/js/jquery.smartmenus.js"></script>
	<script type="text/javascript" src="assets/js/jquery.parallax.min.js"></script>
	<script type="text/javascript" src="assets/js/jquery.shuffle.min.js"></script>
	<script type="text/javascript" src="assets/js/owl.carousel.min.js"></script>
	<script type="text/javascript" src="assets/js/main.js"></script>

	<script type="text/javascript">
		$(function() {
			$("#roomlx")
					.change(
							function() {
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
													for ( var i = 0; i < data.length; i++) {
														options += "<option value=\""+data[i].roomID+"\">"
																+ data[i].roomID
																+ "</option>";
													}
													$("#roomfjh").html(options);
												},
												error : function(data) {//当访问时候，404，500 等非200的错误状态码
													alert("你好这个类型的没有空房了！");
												}
											});
								} else {
									$("#roomfjh").html("");
									var options = "<option value=\"\">--请选择--</option>";
								}
							});

		});
	</script>


	<!-- /Scripts -->
</body>
</html>

