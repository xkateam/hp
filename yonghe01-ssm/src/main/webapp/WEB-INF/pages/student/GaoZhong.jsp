<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<link rel="shortcut icon" href="${pageContext.request.contextPath }/resources/gaozhong/images/favicon.ico">
	<link rel="apple-touch-icon" href="${pageContext.request.contextPath }/resources/gaozhong/images/apple-touch-icon.png">
	<link rel="apple-touch-icon" sizes="72x72" href="${pageContext.request.contextPath }/resources/gaozhong/images/apple-touch-icon-72x72.png">
	<link rel="apple-touch-icon" sizes="114x114" href="${pageContext.request.contextPath }/resources/gaozhong/images/apple-touch-icon-114x114.png">
	
	<!-- ==============================================
	CSS VENDOR
	=============================================== -->
	
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/gaozhong/css/vendor/owl.carousel.min.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/gaozhong/css/vendor/owl.theme.default.min.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/gaozhong/css/vendor/magnific-popup.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/gaozhong/css/vendor/animate.min.css">
	
	<!-- ==============================================
	Custom Stylesheet
	=============================================== -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/gaozhong/css/style.css" />
	
    <script src="${pageContext.request.contextPath }/resources/gaozhong/js/vendor/modernizr.min.js"></script>

</head>

<body>

	<!-- LOAD PAGE -->
	<div class="animationload">
		<div class="loader"></div>
	</div>
	
	<!-- BACK TO TOP SECTION -->
	<a href="#0" class="cd-top cd-is-visible cd-fade-out">Top</a>

	<!-- HEADER -->
    <div class="header header-1">

    	<!-- TOPBAR -->
    	<div class="topbar">
			<div class="container">
				<div class="row align-items-center">
					<div class="col-sm-8 col-md-6">
						<div class="info">
							<div class="info-item">
								<i class="fa fa-phone"></i> <br><br><br>欢迎您来到安心教育资源管理系统——————————————————————————————————————
							</div>
							<div class="info-item">
								<i class="fa fa-envelope-o"></i> <a href="mailto:support@kids.com" title="">联系我们</a>
							</div>
						</div>
					</div>
					
				</div>
			</div>
		</div>

		<!-- NAVBAR SECTION -->
		<div class="navbar-main">
			<div class="container">
			   

			</div>
		</div>

    </div>

	<!-- BANNER -->
    <div id="oc-fullslider" class="banner">
    	<div class="owl-carousel owl-theme full-screen">
	    	<div class="item">
	        	<img src="${pageContext.request.contextPath }/resources/gaozhong/images/homeslide.jpg" alt="Slider">
	        	<div class="overlay-bg"></div>
	        	
	    	</div>
	    	<div class="item">
	            <img src="${pageContext.request.contextPath }/resources/gaozhong/images/homeslide2.jpg" alt="Slider">
	            <div class="overlay-bg"></div>
	            <div class="container d-flex align-items-center">
	            	<div class="wrap-caption">
		                <h4 class="caption-supheading">Welcome to Kids</h4>
		                <h1 class="caption-heading">Best Kindergarten at California</h1>
		                <a href="#" class="btn btn-secondary mt-3">LEARN MORE</a>
		            </div>  
	            </div>
	        </div>  
	    	<div class="item">
	            <img src="${pageContext.request.contextPath }/resources/gaozhong/images/home2.jpg" alt="Slider"> 
	            <div class="overlay-bg"></div>
	            <div class="container d-flex align-items-center">
	            	<div class="wrap-caption">
		                <h4 class="caption-supheading">Welcome to Kids</h4>
		                <h1 class="caption-heading">Best Kindergarten at California</h1>
		                <a href="#" class="btn btn-secondary mt-3">LEARN MORE</a>
		            </div>  
	            </div>
	        </div>  
    	</div>
	    <div class="custom-nav owl-nav"></div>
    </div>	

    <!-- SHORTCUT -->
	<div class="section services">
		<div class="content-wrap pb-3">
			<div class="container">
				<div class="row">
					<div class="col-sm-12 col-md-12">
						<div class="row col-0 overlap no-gutters">
							<div class="col-sm-12 col-md-4 col-lg-4">
								<!-- BOX 1 -->
								<div class="rs-feature-box-1 bg-primary">
									<i class="fa fa-clock-o"></i>
									<div class="body">
										<h4>科目：高中数学</h4>
										<p>老师：陈芳</p>
										<p>手机号：12432432424</p>
										<div class="spacer-10"></div>
										<a href="${pageContext.request.contextPath}/student/gaozhong1" class="btn">LEARN MORE</a>
									</div>
					            </div>
							</div>
							<div class="col-sm-12 col-md-4 col-lg-4">
								<!-- BOX 2 -->
								<div class="rs-feature-box-1 bg-secondary">
									<i class="fa fa-home"></i>
									<div class="body">
										<h4>科目：高中语文</h4>
										<p>老师：陈宇</p>
										<p>手机号：15532432424</p>
										<div class="spacer-10"></div>
										<a href="${pageContext.request.contextPath}/student/gaozhong2" class="btn">LEARN MORE</a>
									</div>
					            </div>
							</div>
							
							<div class="col-sm-12 col-md-4 col-lg-4">
								<!-- BOX 3 -->
								<div class="rs-feature-box-1 bg-primary">
									<i class="fa fa-trophy"></i>
									<div class="body">
										<h4>科目：高中生物</h4>
										<p>老师：鱼鱼</p>
										<p>手机号：12332432424</p>
										<div class="spacer-10"></div>
										<a href="${pageContext.request.contextPath}/student/gaozhong3" class="btn">LEARN MORE</a>
									</div>
					            </div>
							</div>
							<div class="col-sm-12 col-md-4 col-lg-4">
								<!-- BOX 3 -->
								<div class="rs-feature-box-1 bg-secondary">
									<i class="fa fa-home"></i>
									<div class="body">
										<h4>科目：高中化学</h4>
										<p>老师：比比</p>
										<p>手机号：13332432424</p>
										<div class="spacer-10"></div>
										<a href="${pageContext.request.contextPath}/student/gaozhong4" class="btn">LEARN MORE</a>
									</div>
					            </div>
							</div>
							<div class="col-sm-12 col-md-4 col-lg-4">
								<!-- BOX 3 -->
								<div class="rs-feature-box-1 bg-tertiary">
									<i class="fa fa-trophy"></i>
									<div class="body">
										<h4>科目：高中英语</h4>
										<p>老师：直至</p>
										<p>手机号：12832432424</p>
										<div class="spacer-10"></div>
										<a href="${pageContext.request.contextPath}/student/gaozhong5" class="btn">LEARN MORE</a>
									</div>
					            </div>
							</div>
							<div class="col-sm-12 col-md-4 col-lg-4">
								<!-- BOX 3 -->
								<div class="rs-feature-box-1 bg-secondary">
									<i class="fa fa-clock-o"></i>
									<div class="body">
										<h4>科目：高中数学</h4>
										<p>老师：布布</p>
										<p>手机号：12332332424</p>
										<div class="spacer-10"></div>
										<a href="${pageContext.request.contextPath}/student/gaozhong6" class="btn">LEARN MORE</a>
									</div>
					            </div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>	

	<!-- WELCOME TO KIDS -->
	<div class="section">
		<div class="content-wrap">
			<div class="container">
				<div class="row">
					<div class="col-sm-12 col-md-12 col-lg-6">
						<img src="${pageContext.request.contextPath }/resources/gaozhong/images/homeslide2.jpg" alt="" class="img-fluid img-border mb-3">
					</div>
					<div class="col-sm-12 col-md-12 col-lg-6">
						<h2 class="section-heading">
							Welcome to Kids
						</h2>
						<p>本网站精 心打造并推出户外体验式培训与内训课程为一体的课程套餐，全面性的提高学员的个人综合素质能力和团队协作能力。 公司针对青少年综合素质的实施，主要围绕就业指导咨询、素质拓展训练、建立评价体系、职业生涯规划四个环节展开。在素质拓展领域不断创新，追求卓越，在调整心态、个人定位、提高自信、团队协作、自我实现等方面，全面增强学员的个人竞争力。 公司以创新的精神，卓越的培训，完善的服务，为企业和青少年搭建金色桥梁。</p>
						<p> 创新是公司发展永恒的原动力。公司积极参与科技应用和观念创新，充分拓展企业生存空间，创建并保持企业的核心竞争力。公司未来广阔的发展空间，是职员最好的职业平台。 团队意识与强烈的事业心是公司力量不竭的源泉。你会发现个人的聪明才智只有融入团队才会获得更好的发挥、才能取得更大的成就。以公司共同目标和整体形象为前提，公司提倡个性发挥，为职员提供广阔的发展空间。 公司倡导健康丰盛的人生，追求的价值观在于有兴趣的工作、志趣相投的同事、健康的体魄、开放的心态、乐观向上的精神，这些都具有金钱所无法替代的价值 。 </p>
						<div class="spacer-10"></div>
						<a href="#" class="btn btn-secondary">DISCOVER MORE</a>
						<div class="spacer-30"></div>
					</div>
				</div>
			</div>
		</div>
	</div>

	
	<!-- WHY CHOOSE US -->
	<div class="section bgi-repeat" data-background="${pageContext.request.contextPath }/resources/gaozhong/images/school2.jpg">
		<div class="content-wrap pb-0">
			<div class="container">
				<div class="row align-items-end">
					<div class="col-sm-12 col-md-12 col-lg-7">
						<p class="supheading">Why Choose Us</p>
						<h2 class="section-heading">
							Best Kindergarten
						</h2>
						<p>本网站精 心打造并推出户外体验式培训与内训课程为一体的课程套餐，全面性的提高学员的个人综合素质能力和团队协作能力。 公司针对青少年综合素质的实施，主要围绕就业指导咨询、素质拓展训练、建立评价体系、职业生涯规划四个环节展开。在素质拓展领域不断创新，追求卓越，在调整心态、个人定位、提高自信、团队协作、自我实现等方面，全面增强学员的个人竞争力。 公司以创新的精神，卓越的培训，完善的服务，为企业和青少年搭建金色桥梁。</p>
						<p> 创新是公司发展永恒的原动力。公司积极参与科技应用和观念创新，充分拓展企业生存空间，创建并保持企业的核心竞争力。公司未来广阔的发展空间，是职员最好的职业平台。 团队意识与强烈的事业心是公司力量不竭的源泉。你会发现个人的聪明才智只有融入团队才会获得更好的发挥、才能取得更大的成就。以公司共同目标和整体形象为前提，公司提倡个性发挥，为职员提供广阔的发展空间。 公司倡导健康丰盛的人生，追求的价值观在于有兴趣的工作、志趣相投的同事、健康的体魄、开放的心态、乐观向上的精神，这些都具有金钱所无法替代的价值 。 </p>
						<div class="spacer-content"></div>
					</div>
					<div class="col-sm-12 col-md-12 col-lg-5">
						<img src="${pageContext.request.contextPath }/resources/gaozhong/images/teacher_promo.png" alt="" class="img-fluid">
					</div>
				</div>
				
			</div>
		</div>
	</div>



	<!-- OUR TESTIMONIALS -->
	<div class="section">
		<div class="content-wrap">
			<div class="container">
				<div class="row">
					<div class="col-sm-12 col-md-12">
						<p class="supheading text-center">Our Testimonials</p>
						<h2 class="section-heading text-center mb-5">
							What parents say
						</h2>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-12 col-md-10 offset-md-1">
						<div class="text-center text-secondary mb-3"><i class="fa fa-quote-right fa-3x"></i></div>
						<div id="testimonial" class="owl-carousel owl-theme">
							<div class="item">
								<div class="rs-box-testimony">
									<div class="quote-box">
										<blockquote>
										 作为家长我很高兴看到孩子的进步，希望这个进步只是一个开始，在新学期能够继续延续，这样才能不负老师的期望。
										</blockquote>
										<div class="media">
											<img src="${pageContext.request.contextPath }/resources/gaozhong/images/team-img1.jpg" alt="" class="rounded-circle">
										</div>
										<p class="quote-name">
											Johnathan Doel <span>Businessman</span>
										</p>                        
									</div>
								</div>
							</div>
							<div class="item">
								<div class="rs-box-testimony">
									<div class="quote-box">
										<blockquote>
										 在新的一年里，望老师严格要求学生，作为家长也会全力配合老师的工作，我们共同努力使学生争取取得更大的进步，谢谢。
										</blockquote>
										<div class="media">
											<img src="${pageContext.request.contextPath }/resources/gaozhong/images/team-img2.jpg" alt="" class="rounded-circle">
										</div>
										<p class="quote-name">
											Johnathan Doel <span>CEO Buka Kreasi</span>
										</p>                        
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>

	
		
		<div class="fcopy">
			<div class="container">
				<div class="row">
					<div class="col-sm-12 col-md-12">
						<p class="ftex">Copyright 2019 &copy; <span class="color-primary">Kids HTML Template</span>. Designed by <span class="color-primary">Rometheme.</span></p> 
					</div>
				</div>
			</div>
		</div>
		
	</div>
	
	<!-- JS VENDOR -->
	<script src="${pageContext.request.contextPath }/resources/gaozhong/js/vendor/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/gaozhong/js/vendor/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/gaozhong/js/vendor/owl.carousel.js"></script>
	<script src="${pageContext.request.contextPath }/resources/gaozhong/js/vendor/jquery.magnific-popup.min.js"></script>

	<!-- SENDMAIL -->
	<script src="${pageContext.request.contextPath }/resources/gaozhong/js/vendor/validator.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/gaozhong/js/vendor/form-scripts.js"></script>

	<script src="${pageContext.request.contextPath }/resources/gaozhong/js/script.js"></script>

</body>

</html>