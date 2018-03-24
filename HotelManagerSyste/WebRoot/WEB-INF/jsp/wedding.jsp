<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Home</title>
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Florence Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //Custom Theme files -->
<link href="assets/css/bootstrap.css" type="text/css" rel="stylesheet"
	media="all">
<link href="assets/css/style.css" type="text/css" rel="stylesheet"
	media="all">
<!-- js -->
<script
	src="${pageContext.request.contextPath }/assets/js/jquery-1.11.1.min.js"></script>
<!-- //js -->
</head>
<body>
	<!--header-->
	<div class="wrapper">

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

	</div>
	<!--//header-->
	<!--banner-->
	<div class="banner">
		<div class="banner-info">
			<h2 class="hdng">Lorem ipsum dolor sit amet onsectetur</h2>
			<p>Our best Florence make your day special</p>
		</div>
	</div>
	<!--//banner-->
	<!--banner-bottom-->
	<div class="bnr-botom">
	<div class="row">
				<div class="col-md-12">
				<h2 style="text-align:right;margin:20px;">如需预定请联系 李经理 : <a style=" COLOR:#33FF00;"	>18578646829</a></h2>
				</div>
				</div>
		<div class="col-md-6 bnr-botom-left">
			
			<div class="bnr-botom-info">
				<!--banner Slider starts Here-->
				<script		src="${pageContext.request.contextPath }/assets/js/responsiveslides.min.js"></script>
				
				<!--//End-slider-script-->
				
				<div id="top" class="callbacks_container">
					<ul class="rslides" id="slider3">
						<li>
							<h3>
								大宴会厅<span> 为爱</span>而造
							</h3>
						</li>
						<!-- <li>
							<h3>
								11111<span> 2222 </span><br> 3333
								44444
							</h3></li>
						<li>
							<h3>
								55555<span> 6666 </span><br> 7777
								88888
							</h3></li> -->
					</ul>
					<div class="clearfix"></div>
				</div>
				<p>经验丰富的婚礼专家将为您打造梦想中的完美婚礼。我们的房间采光充足，营造出优雅浪漫的氛围。室内陈设高雅，设备一流，可俯瞰宏伟庭院景观。悉心周到的服务，配合您对这一特别日子的各种需求，为您与至爱亲朋打造值得收藏一生的珍贵回忆。</p><br>
				<br><br><br><br>
				<a >点击预定</a>
			</div>
		</div>
		<div class="copyrights">
			Collect from <a href="http://www.cssmoban.com/" title="网站模板">网站模板</a>
		</div>
		<div class="col-md-6 bnr-botom-right">
			<img src="${pageContext.request.contextPath }/assets/images/ai.jpg"
				alt="">
		</div>
		<div class="clearfix"></div>
		<!--welcome-->
		<div class="welcome">
			<div class="col-md-6 bnr-botom-left">
				<img
					src="${pageContext.request.contextPath }/assets/images/lomes.jpg"
					alt="">
			</div>
			<div class="col-md-6 welcome-right">
				<h3>新娘房</h3>
				<p>靠近大宴会厅的专用房间，可作新娘换妆用，配室内洗手间。</p>
			</div>
			<div class="clearfix"></div>
		</div>
		<!--//welcome-->
	</div>
	<!--//banner-bottom-->
	<!--slid-->
	<div class="slid">
		<div class="col-md-6 slid-left">
			<img
				src="${pageContext.request.contextPath }/assets/images/meishi.jpg"
				alt="">
		</div>
		<div class="col-md-6 slid-right">
			<div class="slid-right-info">
				<h3>美食</h3>
				<p>八大菜系鲁菜、川菜、粤菜、闽菜、淮扬菜、浙菜、湘菜、徽菜 </p>
				<p>	
				     <span><a  stpe="text-align:center">推荐套餐</a>
					<a href="#h1"><h4>珠联璧合</h4></a>  
					<a href="#h2"><h4>琴瑟和鸣 </h4></a>
					<a href="#h3"><h4>鸳鸯福禄</h4></a> 
					<a href="#h4"><h4>并蒂荣华</h4></a></span>

				</p>

			</div>
		</div>
		<div class="clearfix"></div>
		<!--welcome-->
		<div class="welcome">
			<div class="col-md-6 welcome-right">
				<h3>场地详情</h3>
				
				<ul>
					<li><a href="#"><span
							class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
							返回顶部</a>
					</li>
					<li><a href="#"><span
							class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
							Epsum et rutrum</a>
					</li>
					<li><a href="#"><span
							class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
							Proin semper utr</a>
					</li>
					<li><a href="#"><span
							class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
							Ligula sit amet</a>
					</li>
				</ul>
			</div>
			<div class="col-md-6 bnr-botom-left">
				<img
					src="${pageContext.request.contextPath }/assets/images/particulars.png"
					alt="">
			</div>
			<div class="clearfix"></div>
		</div>
		<!--//welcome-->
	</div>
		
		<div class="row " style="margin-top:420px">
		<div class="row " style="text-align: center;">
		
			<a name="h1"><img alt="" src="${pageContext.request.contextPath }/assets/images/qq1.png"></a></div>
		<div class="col-md-4 bnr-botom-left ">
		
		</div>
		<div class="col-md-8 bnr-botom-left " style="text-align:left;margin-top:20px" >
		<h3> 珠联璧合</h3><br>
		<span>每桌人民币3888元+15%服务费（10人/桌） 精美八小碟<br> 鸿运乳猪件<br> 日式虾枣拼蜜汁烟肉卷<br> 瑶柱鲍丝凤丝烩生翅<br>
			野菌黑椒煎牛柳<br> 鲍汁鹅掌扣智利鲍鱼<br> 脆皮炸子鸡<br> 荷香古法蒸石斑鱼 <br>金华瑶柱浸时蔬<br> 干贝鸭丝金菇燜伊面 <br>美点双辉 <br>百莲好合 <br>四季果盘<br>
			免费提供当晚婚房1间（豪华房，并赠送豪廷咖啡厅二人自助早餐）<br>婚房内喜庆布置<br>赠送新鲜水果一份 免费提供新娘化妆间1间 免费厅内红地毯铺设
			<br>免费提供全场套椅 <br>厅内及舞台免费鲜花布置 免费提供麦克风（3支）<br>及其配套音响设备 提供婚礼进行曲及背景音乐 赠送每桌桌花装饰
			免费提供每桌精美菜单 赠送婚宴喜帖（按确认来宾人数的30%提供）<br> 赠送嘉宾签到册一本 用餐期间3小时免费软饮料（可乐，雪碧）及本地啤酒畅饮
			<br>免费提供香槟塔（五层）一个及气泡酒一瓶 赠送婚宴喜庆蛋糕一只（8寸）<br> 免费提供婚礼装饰蛋糕一只 免费泊车（限3辆）<br>
			赠送豪廷西餐厅周年纪念晚餐券一张（２人份</span>
	</div>
	</div>
	
	<div class="row" style="margin-top:120px;">
	<div class="row " style="text-align: center;">
		
			<a name="h2"><img alt="" src="${pageContext.request.contextPath }/assets/images/qq2.png"></a></div>
		
		<div class="col-md-4 bnr-botom-left "></div>
		<div class="col-md-8 bnr-botom-left " style="text-align:left" >
		<h3>琴瑟和鸣</h3><br>
		<span>
		每桌人民币4888元+15%服务费（10人/桌）<br>

沪港八小碟<br>
大红乳猪全体<br>
脆皮芝士炸蟹钳<br>
鹊巢X.O酱爆澳带<br>
龙凤海皇翅<br>
芝士牛油口大明虾<br>
清蒸海石斑<br>
葱香水晶鸡<br>
黄汤野生竹笙浸时蔬<br>
鲍鱼鲜虾黄金炒饭<br>
美点双辉<br>
芋香椰汁紫米露<br>
四季果盘<br>
<br><br>
免费提供当晚婚房1间（普通套房，并赠送豪廷咖啡厅二人自助早餐），婚房内喜庆布置，赠送新鲜水果一份）<br>
免费提供新娘化妆间1间<br>
免费厅内红地毯铺设<br>
免费提供全场套椅<br>
厅内及舞台免费鲜花布置<br>
免费提供麦克风（3支）及其配套音响设备<br>
提供婚礼进行曲及背景音乐<br>
赠送每桌桌花装饰<br>
免费提供每桌精美菜单<br>
赠送婚宴喜帖（按确认来宾人数的50%提供）<br>
赠送嘉宾签到册一本<br>
用餐期间3小时免费软饮料（可乐，雪碧）及本地啤酒畅饮<br>
免费提供香槟塔（五层）一个及气泡酒一瓶<br>
赠送婚宴喜庆蛋糕一只（12寸）<br>
免费提供婚礼装饰蛋糕一只<br>
免费泊车（限3辆）<br>
赠送豪廷西餐厅周年纪念晚餐券一张（２人份）<br>
酒店豪华轿车服务单程迎接至酒店，配有专职司机<br>
提供餐前鸡尾酒服务及小食<br>
		
		</span>
</div>	
	</div>
	<div class="row" style="margin-top:120px;">
	<div class="row " style="text-align: center;">
		
			<a name="h3"><img alt="" src="${pageContext.request.contextPath }/assets/images/qq3.png"></a></div>
		
		<div class="col-md-4 bnr-botom-left "></div>
		<div class="col-md-8 bnr-botom-left " style="text-align:left" >
		<h3>鸳鸯福禄</h3><br>
		<span>
		每桌人民币5888元+15%服务费（10人/桌）<br>

豪廷八味碟<br>
鲜果大龙虾沙律<br>
潮州蟹肉大生翅<br>
脆皮日式海鲜球拼凤凰紫菜卷<br>
虫草花炒桂花带子<br>
清蒸海红斑 <br>
黑椒雪花牛仔骨<br>
一品吊烧琵琶鸭<br>
金华竹笙扒时蔬<br>
鲍鱼海皇鸳鸯烩饭<br>
美点双辉<br>
生磨核桃露<br>
四季果盘<br>
<br><br>
免费提供当晚婚房1间（豪廷豪华套房，并赠送豪廷咖啡厅二人自助早餐），婚房内喜庆布置，赠送新鲜水果一份<br>
免费提供新娘化妆间1间<br>
免费厅内红地毯铺设<br>
免费提供全场套椅<br>
厅内及舞台免费鲜花布置<br>
免费提供麦克风（3支）及其配套音响设备<br>
提供婚礼进行曲及背景音乐<br>
赠送每桌桌花装饰<br>
免费提供每桌精美菜单<br>
赠送婚宴喜帖（按确认来宾人数的50%提供）<br>
赠送嘉宾签到册一本<br>
用餐期间3小时免费软饮料（可乐，雪碧）及本地啤酒畅饮<br>
免费提供香槟塔（五层）一个及气泡酒一瓶<br>
三层精美婚礼仪式鲜奶蛋糕<br>
免费泊车（限5辆）<br><br>
结婚周年纪念日免费入住豪廷套房一晚（仅限周末）<br>
酒店豪华轿车服务单程迎接至酒店，配有专职司机<br>
提供餐前鸡尾酒服务及小食<br>
组合乐队席间现场伴奏
		</span>
</div>	
	</div>
	
	<div class="row" style="margin-top:120px;">
	<div class="row " style="text-align: center;">
		
			<a name="h4"><img alt="" src="${pageContext.request.contextPath }/assets/images/qq4.png"></a></div>
		
		<div class="col-md-4 bnr-botom-left "></div>
		<div class="col-md-8 bnr-botom-left " style="text-align:left" >
		<h3> 并蒂荣华</h3><br>
		<span>
		每桌人民币6888元+15%服务费（10人/桌）<br>

喜宴八小碟<br>
日式炸酿蟹钳<br>
金巢蜜桃鸳鸯蚌<br>
红烧三宝烩鱼翅<br>
原条婆参扒鲍脯<br>
水晶大虾皇配香茅汁<br>
清蒸海东星斑<br>
妙龄三乳鸽<br>
药膳鲨骨浓汤津菜胆<br>
海皇鸳鸯烩饭<br><br>
红莲炖雪蛤<br>
双喜点心<br>
环球水果盘<br>

<br><br>
免费提供当晚婚房1间（豪廷豪华套房，并赠送豪廷咖啡厅二人自助早餐），婚房内喜庆布置，赠送新鲜水果一份<br>
免费提供新娘化妆间1间<br>
免费厅内红地毯铺设<br>
免费提供全场套椅<br>
厅内及舞台免费鲜花布置<br>
免费提供麦克风（3支）及其配套音响设备<br>
提供婚礼进行曲及背景音乐<br>
赠送每桌桌花装饰<br>
免费提供每桌精美菜单<br>
赠送婚宴喜帖（按确认来宾人数的50%提供）<br>
赠送嘉宾签到册一本<br>
用餐期间3小时免费软饮料（可乐，雪碧）及本地啤酒畅饮<br>
免费提供香槟塔（五层）一个及气泡酒一瓶<br>
三层精美婚礼仪式鲜奶蛋糕<br>
免费泊车（限8辆）<br>
结婚周年纪念日免费入住豪廷套房一晚（仅限周末）<br>
酒店豪华轿车服务单程迎接至酒店，配有专职司机<br>
提供餐前鸡尾酒服务及小食<br>
组合乐队席间现场伴奏 <br>
经典鲜花拱门装饰宴会厅<br>
价值人民币500元餐券（可用于酒店任何餐厅，仅供２位使用，有效期为举办婚宴后的半年之内）<br>
提供一间新人休息室<br>
每桌提供酒店特选红酒一瓶
		</span>
</div>
	</div>
	<div class="footer-bottom" >
			<div class="container" >
				<div class="row" style="margin-top:20px;background:#000;widows: 100%;height: 40px;  line-height:40px;overflow:hidden;">
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<div class="footer-bottom_copy">
							版权 &copy; 2017.公司名称保留所有权利.网页模板.<a target="_blank"
								href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a>
						</div>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12"  >
						<div class="footer-bottom_links" style="text-align:left">
							<a class="active" href="index.html">家</a> <a href="gallery.html">画廊</a>
							<a href="blog.html">博客</a> <a href="wizzard-step1.html">预定</a> <a
								href="#">购买</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	<!--//slid-->
	<!--footer-->

	<!--//footer-->
	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script	src="${pageContext.request.contextPath }/assets/js/bootstrap.js"></script>
	<script type="text/javascript">
	
	</script>
</body>
</html>