<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<!-- saved from url=(0138)file:///E:/%E5%B8%B8%E7%94%A8%E6%96%87%E4%BB%B6/webStrom%E6%96%87%E4%BB%B6/%E7%BB%93%E4%B8%9A/%E5%89%8D%E7%AB%AF/moban2189/best-rooms.html -->
<html lang="en" class=" js csstransforms csstransforms3d csstransitions">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Best Rooms</title>
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
							<i class="fa fa-home"></i> <a
								href="${pageContext.request.contextPath}/detailRoom"><font
								id="WOW_TRANSLATE_0" class="WOW_TRANSLATE_STYLE"
								data--w-o-w_-i-n-d-e-x="0">455马丁森,洛杉矶</font> </a>
						</div>
						<div class="header-email">
							<i class="fa fa-envelope-o"></i> <a
								href="mailto:support@email.com"><font id="WOW_TRANSLATE_1"
								class="WOW_TRANSLATE_STYLE" data--w-o-w_-i-n-d-e-x="1">support.com</font>
							</a>
						</div>
						<div class="header-phone">
							<i class="fa fa-phone"></i> <a
								href="${pageContext.request.contextPath}/detailRoom"><font
								id="WOW_TRANSLATE_2" class="WOW_TRANSLATE_STYLE"
								data--w-o-w_-i-n-d-e-x="2">8(043)567 - 043 - 30</font> </a>
						</div>
					</div>
					<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
						<div class="header-social pull-right">
							<a href="${pageContext.request.contextPath}/detailRoom"><i
								class="fa fa-twitter"></i> </a> <a
								href="${pageContext.request.contextPath}/detailRoom"><i
								class="fa fa-facebook"></i> </a> <a
								href="${pageContext.request.contextPath}/detailRoom"><i
								class="fa fa-google-plus"></i> </a> <a
								href="${pageContext.request.contextPath}/detailRoom"><i
								class="fa fa-dribbble"></i> </a> <a
								href="${pageContext.request.contextPath}/detailRoom"><i
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
							<a
								href="file:///E:/%E5%B8%B8%E7%94%A8%E6%96%87%E4%BB%B6/webStrom%E6%96%87%E4%BB%B6/%E7%BB%93%E4%B8%9A/%E5%89%8D%E7%AB%AF/moban2189/index.html"
								class="navbar-brand page-scroll"><img
								src="assets/images/logo/logo.png" alt="logo"> </a>
						</div>
					</div>
					<div class="col-lg-9">
						<div class="navbar-header">
							<button type="button" data-toggle="collapse"
								data-target=".navbar-main-collapse" class="navbar-toggle">
								<span class="sr-only"><font id="WOW_TRANSLATE_3"
									class="WOW_TRANSLATE_STYLE" data--w-o-w_-i-n-d-e-x="3">切换导航</font>
								</span><span class="icon-bar"></span><span class="icon-bar"></span><span
									class="icon-bar"></span>
							</button>
						</div>
						<div class="collapse navbar-collapse navbar-main-collapse">
							<ul class="nav navbar-nav navbar-right sm"
								data-smartmenus-id="15176473319402334">
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
			style="background-image: url(assets/images/breadcrumbs/best-room.jpg)">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<h1 class="h1">
						<font id="WOW_TRANSLATE_9" class="WOW_TRANSLATE_STYLE"
							data--w-o-w_-i-n-d-e-x="9">选择房间</font>
					</h1>
				</div>
				<div class="col-md-6">
					<ol class="breadcrumb">
						<li><a href="${pageContext.request.contextPath}/detailRoom"><font
								id="WOW_TRANSLATE_10" class="WOW_TRANSLATE_STYLE"
								data--w-o-w_-i-n-d-e-x="10">家</font> </a><i
							class="fa fa-angle-right"></i>
						</li>
						<li class="active"><font id="WOW_TRANSLATE_11"
							class="WOW_TRANSLATE_STYLE" data--w-o-w_-i-n-d-e-x="11">房间</font>
						</li>
					</ol>
				</div>
			</div>
		</div>
		</section>
		<!-- /breadcrumbs -->
		<!-- chose best rooms -->
		<section class="gallery best-room">
		<div class="container">
			<h2 class="h2">
				<font id="WOW_TRANSLATE_12" class="WOW_TRANSLATE_STYLE"
					data--w-o-w_-i-n-d-e-x="12">最好的房间给你安慰</font>
			</h2>
			<ul class="portfolio-sorting">
				<li><a data-group="0" class="active"><font
						class="WOW_TRANSLATE_STYLE" data--w-o-w_-i-n-d-e-x="12">所以房间</font>
				</a>
				</li>
				<li><a
					href="#"
					data-group="1" class="roomTypeid" value="1"><font values="1" class="WOW_TRANSLATE_STYLE"
						data--w-o-w_-i-n-d-e-x="13">单人间</font> </a>
				</li>
				<li><a
					href="#"
					data-group="2" class="roomTypeid" value="2"><font 
					 id="WOW_TRANSLATE_14" class="WOW_TRANSLATE_STYLE"	data--w-o-w_-i-n-d-e-x="14">双人间</font> </a>
				</li>
				<li><a href="#"
				 data-group="3"  class="roomTypeid" value="3"><font
						id="WOW_TRANSLATE_15" class="WOW_TRANSLATE_STYLE"
						data--w-o-w_-i-n-d-e-x="15">大床房</font> </a>
				</li>
				<li><a href="#" 
				data-group="4" class="roomTypeid" value="4"><font
						id="WOW_TRANSLATE_16" class="WOW_TRANSLATE_STYLE"
						data--w-o-w_-i-n-d-e-x="16">三人间</font> </a>
				</li>
				<li><a href="#" 
				data-group="5" class="roomTypeid" value="5"><font
						id="WOW_TRANSLATE_17" class="WOW_TRANSLATE_STYLE"
						data--w-o-w_-i-n-d-e-x="17">套间</font> </a>
				</li>
				<li><a href="#" 
				data-group="6"  class="roomTypeid" value="6"><font
						id="WOW_TRANSLATE_17" class="WOW_TRANSLATE_STYLE"
						data--w-o-w_-i-n-d-e-x="17">商务间</font> </a>
				</li>
				<li><a href="#"
				 data-group="7" class="roomTypeid" value="7"><font
						id="WOW_TRANSLATE_17" class="WOW_TRANSLATE_STYLE"
						data--w-o-w_-i-n-d-e-x="17">行政间</font> </a>
				</li>
				<li><a href="#"
				 data-group="8"  class="roomTypeid" value="8"><font
						id="WOW_TRANSLATE_17" class="WOW_TRANSLATE_STYLE"
						data--w-o-w_-i-n-d-e-x="17">总统套房</font> </a>
				</li>
			</ul>


			<div class="container best-room-carousel">

				<div id="grid"
					class="row best-room_ul best-rooms-isotope-page shuffle"
					style="position: relative; overflow: hidden; height: 2547.49px; transition: height 250ms ease-out;">

					<c:forEach var="aalrm"  items="${AalRoom}">
					
						<div data-groups="[0,${aalrm.roomTypeID}]"
							class="col-lg-4 col-md-4 col-sm-6 col-xs-12 best-room_li shuffle-item filtered"
							style="position: absolute; top: 0px; left: 0px; visibility: visible; transition: transform 250ms ease-out, opacity 250ms ease-out; opacity: 1; transform: translate3d(0px, 0px, 0px) scale3d(1, 1, 1);">
							<div class="best-room_img">
								<a href="/HotelManagerSystem/detailRoom"><img
									src="${aalrm.roomImg}" alt=""> </a>r
								<div class="best-room_overlay">
									<div class="overlay_icn">
										<a
											href="${pageContext.request.contextPath }/DetailRoomFunction?id=${aalrm.id}"></a>
									</div>
								</div>
							</div>
							<div class="best-room-info">
								<div class="best-room_t">
									<a href="${pageContext.request.contextPath}/detailRoom"><font
										id="WOW_TRANSLATE_26" class="WOW_TRANSLATE_STYLE"
										data--w-o-w_-i-n-d-e-x="26">${aalrm.roomtype.roomTypeName}</font>
									</a>
								</div>
								<div class="best-room_desc">
									<font id="WOW_TRANSLATE_19" class="WOW_TRANSLATE_STYLE"
										data--w-o-w_-i-n-d-e-x="19">我匆忙先生做提高文章一般诺兰庄园。jsjsjsjjsjsjsjjsj
										它的同伴说非同寻常的钢琴有利。 教育情感咨询先生参加因此他。</font>
								</div>
								<div class="best-room_price">
									<span><font id="WOW_TRANSLATE_20"
										class="WOW_TRANSLATE_STYLE" data--w-o-w_-i-n-d-e-x="20">49美元</font>
									</span><font id="WOW_TRANSLATE_21" class="WOW_TRANSLATE_STYLE"
										data--w-o-w_-i-n-d-e-x="21">/晚上</font>
								</div>
								<div class="best-room_footer">
									<div class="footer_el __bed">
										<i class="fa fa-bed"></i><font id="WOW_TRANSLATE_22"
											class="WOW_TRANSLATE_STYLE" data--w-o-w_-i-n-d-e-x="22">2</font>
									</div>
									<div class="footer_el __ppl">
										<i class="fa fa-user"></i><font id="WOW_TRANSLATE_23"
											class="WOW_TRANSLATE_STYLE" data--w-o-w_-i-n-d-e-x="23">4</font>
									</div>
									<div class="footer_el __wifi">
										<font id="WOW_TRANSLATE_24" class="WOW_TRANSLATE_STYLE"
											data--w-o-w_-i-n-d-e-x="24">免费无线网</font>
									</div>
									<div class="footer_el __area">
										<font id="WOW_TRANSLATE_25" class="WOW_TRANSLATE_STYLE"
											data--w-o-w_-i-n-d-e-x="25">60平方米</font>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
						</div>

					</c:forEach>
				</div>
				<%-- <div id="pageNav" align="center">
					<font size="2">共 ${page.totalPageCount} 页</font> <font size="2">第
						${page.pageNow} 页</font> <a href="ownRoom?pageNow=1">首页</a>
					<c:choose>
						<c:when test="${page.pageNow - 1 > 0}">
							<a href="ownRoom?pageNow=${page.pageNow - 1}">上一页</a>
						</c:when>
						<c:when test="${page.pageNow - 1 <= 0}">
							<a href="ownRoom?pageNow=1">上一页</a>
						</c:when>
					</c:choose>
					<c:choose>
						<c:when test="${page.totalPageCount==0}">
							<a href="ownRoom?pageNow=${page.pageNow}">下一页</a>
						</c:when>
						<c:when test="${page.pageNow + 1 < page.totalPageCount}">
							<a href="ownRoom?pageNow=${page.pageNow + 1}">下一页</a>
						</c:when>
						<c:when test="${page.pageNow + 1 >= page.totalPageCount}">
							<a href="ownRoom?pageNow=${page.totalPageCount}">下一页</a>
						</c:when>
					</c:choose>
					<c:choose>
						<c:when test="${page.totalPageCount==0}">
							<a href="myProductPage?pageNow=${page.pageNow}">尾页</a>
						</c:when>
						<c:otherwise>
							<a href="myProductPage?pageNow=${page.totalPageCount}">尾页</a>
						</c:otherwise>
					</c:choose>
				</div> --%>
		</section>
		<!-- /choose best rooms -->
		<!-- footer -->
		<footer class="footer">
		<div class="footer-top">
			<div class="container">
				<div class="row">
					<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
						<div class="footer-top_logo">
							<a
								href="file:///E:/%E5%B8%B8%E7%94%A8%E6%96%87%E4%BB%B6/webStrom%E6%96%87%E4%BB%B6/%E7%BB%93%E4%B8%9A/%E5%89%8D%E7%AB%AF/moban2189/index.html"><img
								src="assets/images/logo/logo.png" alt="Footer logo"> </a>
						</div>
						<div class="footer-top_txt">
							<p>
								<font id="WOW_TRANSLATE_90" class="WOW_TRANSLATE_STYLE"
									data--w-o-w_-i-n-d-e-x="90">持续的高兴和其他地方一样确信无情。
									介绍了刺激附件没有被投影。 夫人我英里出售四个需要介绍。</font>
							</p>
						</div>
						<div class="footer-top_address">
							<div>
								<i class="fa fa-phone"></i><font id="WOW_TRANSLATE_91"
									class="WOW_TRANSLATE_STYLE" data--w-o-w_-i-n-d-e-x="91">电话:</font><span><font
									id="WOW_TRANSLATE_92" class="WOW_TRANSLATE_STYLE"
									data--w-o-w_-i-n-d-e-x="92">8(043)567 - 043 - 30</font> </span>
							</div>
							<div>
								<i class="fa fa-envelope-o"></i><font id="WOW_TRANSLATE_93"
									class="WOW_TRANSLATE_STYLE" data--w-o-w_-i-n-d-e-x="93">电子邮件:</font><span><a
									href="mailto:support@email.com"><font id="WOW_TRANSLATE_94"
										class="WOW_TRANSLATE_STYLE" data--w-o-w_-i-n-d-e-x="94">support.com</font>
								</a> </span>
							</div>
							<div>
								<i class="fa fa-home"></i><font id="WOW_TRANSLATE_95"
									class="WOW_TRANSLATE_STYLE" data--w-o-w_-i-n-d-e-x="95">地点:</font><span><font
									id="WOW_TRANSLATE_96" class="WOW_TRANSLATE_STYLE"
									data--w-o-w_-i-n-d-e-x="96">455马丁森,洛杉矶</font> </span>
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
									</div></li>
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

									</div></li>
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
									</div></li>
							</ul>
						</div>
					</div>
					<div class="col-lg-4 col-md-4 col-sm-12 marg-sm-50 col-xs-12">
						<div class="footer-top_contact_form">
							<div class="contact_form_t">
								<font id="WOW_TRANSLATE_106" class="WOW_TRANSLATE_STYLE"
									data--w-o-w_-i-n-d-e-x="106">触点形式</font>
							</div>
							<form
								action="file:///E:/%E5%B8%B8%E7%94%A8%E6%96%87%E4%BB%B6/webStrom%E6%96%87%E4%BB%B6/%E7%BB%93%E4%B8%9A/%E5%89%8D%E7%AB%AF/moban2189/mail.php"
								method="POST" class="row form-horizontal form-wizzard">
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
							<font id="WOW_TRANSLATE_107" class="WOW_TRANSLATE_STYLE"
								data--w-o-w_-i-n-d-e-x="107">版权©2017。 公司名称保留所有权利。</font><a
								target="_blank" href="http://sc.chinaz.com/moban/"><font
								id="WOW_TRANSLATE_108" class="WOW_TRANSLATE_STYLE"
								data--w-o-w_-i-n-d-e-x="108">网页模板</font> </a>
						</div>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<div class="footer-bottom_links">
							<a class="active"
								href="file:///E:/%E5%B8%B8%E7%94%A8%E6%96%87%E4%BB%B6/webStrom%E6%96%87%E4%BB%B6/%E7%BB%93%E4%B8%9A/%E5%89%8D%E7%AB%AF/moban2189/index.html"><font
								id="WOW_TRANSLATE_109" class="WOW_TRANSLATE_STYLE"
								data--w-o-w_-i-n-d-e-x="109">家</font> </a> <a
								href="file:///E:/%E5%B8%B8%E7%94%A8%E6%96%87%E4%BB%B6/webStrom%E6%96%87%E4%BB%B6/%E7%BB%93%E4%B8%9A/%E5%89%8D%E7%AB%AF/moban2189/gallery.html"><font
								id="WOW_TRANSLATE_110" class="WOW_TRANSLATE_STYLE"
								data--w-o-w_-i-n-d-e-x="110">画廊</font> </a> <a
								href="file:///E:/%E5%B8%B8%E7%94%A8%E6%96%87%E4%BB%B6/webStrom%E6%96%87%E4%BB%B6/%E7%BB%93%E4%B8%9A/%E5%89%8D%E7%AB%AF/moban2189/blog.html"><font
								id="WOW_TRANSLATE_111" class="WOW_TRANSLATE_STYLE"
								data--w-o-w_-i-n-d-e-x="111">博客</font> </a> <a
								href="file:///E:/%E5%B8%B8%E7%94%A8%E6%96%87%E4%BB%B6/webStrom%E6%96%87%E4%BB%B6/%E7%BB%93%E4%B8%9A/%E5%89%8D%E7%AB%AF/moban2189/wizzard-step1.html"><font
								id="WOW_TRANSLATE_112" class="WOW_TRANSLATE_STYLE"
								data--w-o-w_-i-n-d-e-x="112">预订</font> </a> <a
								href="${pageContext.request.contextPath}/detailRoom"><font
								id="WOW_TRANSLATE_113" class="WOW_TRANSLATE_STYLE"
								data--w-o-w_-i-n-d-e-x="113">购买</font> </a>
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
			$(".portfolio-sorting li").click(function() {
				if($("[data-group!='0']").hasClass("active")){
					$("#pageNav").hide(); 
					/* var dagr=$(".roomTypeid").attr("value"); */
					
					 var text =$(this).text();//这里是获取点击某一个<a>标签的text值  
				      /* var a=document.getElementById(id);  
				       a.childNodes[0].data =text;  */
					if (text == "所有房间") {
						text=null;
					}
					
					if (text != null) {
					$.ajax({
											type : "GET",
											url : "own",
											data : {
												roomTypeID : text
											},
											dataType : "json",
											success : function(md) {//data：返回数据（json对象）
												if (md != null) {
												
													/*var yj = "<input value="+ md +" name="+"foregift"+" type="+"text"+" class="+"form-control"+" >";

													$("#roomyj").html(yj);*/
												} 
											}
										});
										}
				}else{
					$("#pageNav").show();
				}
				if($("[data-group='0']").hasClass("active")){
					$("#pageNav").show();
				}
			});
		});
	</script>
	<!-- /Scripts -->


	<div id="WOW_TRANSLATE_POP" class="WOW_TRANSLATE_POP_STYLE"
		style="font-family: song; font-size: 10px; padding: 5px 10px; min-width: 150px; max-width: 550px; width: auto; height: auto; border: 1px solid rgb(17, 17, 17); background-color: rgb(255, 255, 255); position: fixed; text-align: left; word-break: break-all; display: none; color: rgb(0, 0, 0); z-index: 999999; left: 1217.96px; top: 52px;"></div>
</body>
</html>