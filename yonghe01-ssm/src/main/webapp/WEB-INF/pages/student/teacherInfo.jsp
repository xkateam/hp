<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <meta charset="utf-8"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>课程分类</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="" />
<meta name="keywords" content="" />
<script src="${pageContext.request.contextPath }/resources/js/jquery-2.1.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/teacher/css/animate.css">

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/teacher/css/flatpickr.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/teacher/css/line-awesome.css">
<link rel="stylesheet" type="text/css" href="css/line-awesome-font-awesome.min.css">
<link rel="stylesheet" href="https://www.jq22.com/jquery/font-awesome.4.7.0.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/teacher/css/slick/slick.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/teacher/lib/slick/slick.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/teacher/lib/slick/slick-theme.css">
<link rel="stylesheet" type="text/css" href="${pageCon	text.request.contextPath }/resources/teacher/css/style.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/teacher/css/responsive.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/teacher/css/slick/slick.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/teacher/css/font-awesome.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/teacher/css/font-awesome.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/teacher/css/font-awesome-ie7.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/teacher/css/font-awesome-ie7.min.css">
</head>


<body>
	

	<div class="wrapper">
		


		<header>
			<div class="container">
				<div class="header-data">
					<div class="logo">
						<a href="index.html" title=""><img src="${pageContext.request.contextPath }/resources/teacher/${pageContext.request.contextPath }/resources/teacher/images/logo.png" alt=""></a>
					</div><!--logo end-->
					<div class="search-bar">
						<form>
							<input type="text" name="search" placeholder="Search...">
							<button type="submit"><i class="la la-search"></i></button>
						</form>
					</div><!--search-bar end-->
					<nav>
						<ul>
							<li>
								<a href="${pageContext.request.contextPath }/student/studentIndex" title="">
									<span><img src="${pageContext.request.contextPath }/resources/teacher/${pageContext.request.contextPath }/resources/teacher/images/icon1.png" alt=""></span>
									Home
								</a>
							</li>
						
							<li>
								<a href="#" title="" class="not-box-open">
									<span><img src="${pageContext.request.contextPath }/resources/teacher/${pageContext.request.contextPath }/resources/teacher/images/icon6.png" alt=""></span>
									Messages
								</a>
								<div class="notification-box msg">
									<div class="nt-title">
										<h4>Setting</h4>
										<a href="#" title="">Clear all</a>
									</div>
									<div class="nott-list">
										<div class="notfication-details">
							  				<div class="noty-user-img">
							  					<img src="${pageContext.request.contextPath }/resources/teacher/images/resources/ny-img1.png" alt="">
							  				</div>
							  				<div class="notification-info">
							  					<h3><a href="messages.html" title="">Jassica William</a> </h3>
							  					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</p>
							  					<span>2 min ago</span>
							  				</div><!--notification-info -->
						  				</div>
						  				<div class="notfication-details">
							  				<div class="noty-user-img">
							  					<img src="${pageContext.request.contextPath }/resources/teacher/images/resources/ny-img2.png" alt="">
							  				</div>
							  				<div class="notification-info">
							  					<h3><a href="messages.html" title="">Jassica William</a></h3>
							  					<p>Lorem ipsum dolor sit amet.</p>
							  					<span>2 min ago</span>
							  				</div><!--notification-info -->
						  				</div>
						  				<div class="notfication-details">
							  				<div class="noty-user-img">
							  					<img src="${pageContext.request.contextPath }/resources/teacher/images/resources/ny-img3.png" alt="">
							  				</div>
							  				<div class="notification-info">
							  					<h3><a href="messages.html" title="">Jassica William</a></h3>
							  					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempo incididunt ut labore et dolore magna aliqua.</p>
							  					<span>2 min ago</span>
							  				</div><!--notification-info -->
						  				</div>
						  				<div class="view-all-nots">
						  					<a href="messages.html" title="">View All Messsages</a>
						  				</div>
									</div><!--nott-list end-->
								</div><!--notification-box end-->
							</li>
							<li>
								<a href="#" title="" class="not-box-open">
									<span><img src="${pageContext.request.contextPath }/resources/teacher/images/icon7.png" alt=""></span>
									Notification
								</a>
								<div class="notification-box">
									<div class="nt-title">
										<h4>Setting</h4>
										<a href="#" title="">Clear all</a>
									</div>
									<div class="nott-list">
										<div class="notfication-details">
							  				<div class="noty-user-img">
							  					<img src="${pageContext.request.contextPath }/resources/teacher/images/resources/ny-img1.png" alt="">
							  				</div>
							  				<div class="notification-info">
							  					<h3><a href="#" title="">Jassica William</a> Comment on your project.</h3>
							  					<span>2 min ago</span>
							  				</div><!--notification-info -->
						  				</div>
						  				<div class="notfication-details">
							  				<div class="noty-user-img">
							  					<img src="${pageContext.request.contextPath }/resources/teacher/images/resources/ny-img2.png" alt="">
							  				</div>
							  				<div class="notification-info">
							  					<h3><a href="#" title="">Jassica William</a> Comment on your project.</h3>
							  					<span>2 min ago</span>
							  				</div><!--notification-info -->
						  				</div>
						  				<div class="notfication-details">
							  				<div class="noty-user-img">
							  					<img src="${pageContext.request.contextPath }/resources/teacher/images/resources/ny-img3.png" alt="">
							  				</div>
							  				<div class="notification-info">
							  					<h3><a href="#" title="">Jassica William</a> Comment on your project.</h3>
							  					<span>2 min ago</span>
							  				</div><!--notification-info -->
						  				</div>
						  				<div class="notfication-details">
							  				<div class="noty-user-img">
							  					<img src="${pageContext.request.contextPath }/resources/teacher/images/resources/ny-img2.png" alt="">
							  				</div>
							  				<div class="notification-info">
							  					<h3><a href="#" title="">Jassica William</a> Comment on your project.</h3>
							  					<span>2 min ago</span>
							  				</div><!--notification-info -->
						  				</div>
						  				<div class="view-all-nots">
						  					<a href="#" title="">View All Notification</a>
						  				</div>
									</div><!--nott-list end-->
								</div><!--notification-box end-->
							</li>
						</ul>
					</nav><!--nav end-->
					<div class="menu-btn">
						<a href="#" title=""><i class="fa fa-bars"></i></a>
					</div><!--menu-btn end-->
					<div class="user-account">
						<div class="user-info">
							<img src="${pageContext.request.contextPath }/resources/teacher/images/resources/user.png" alt="">
							<a href="#" title="">John</a>
							<i class="la la-sort-down"></i>
						</div>
						<div class="user-account-settingss">
							<h3>Online Status</h3>
							<ul class="on-off-status">
								<li>
									<div class="fgt-sec">
										<input type="radio" name="cc" id="c5">
										<label for="c5">
											<span></span>
										</label>
										<small>Online</small>
									</div>
								</li>
								<li>
									<div class="fgt-sec">
										<input type="radio" name="cc" id="c6">
										<label for="c6">
											<span></span>
										</label>
										<small>Offline</small>
									</div>
								</li>
							</ul>
							<h3>Custom Status</h3>
							<div class="search_form">
								<form>
									<input type="text" name="search">
									<button type="submit">Ok</button>
								</form>
							</div><!--search_form end-->
							<h3>Setting</h3>
							<ul class="us-links">
								<li><a href="profile-account-setting.html" title="">Account Setting</a></li>
								<li><a href="#" title="">Privacy</a></li>
								<li><a href="#" title="">Faqs</a></li>
								<li><a href="#" title="">Terms & Conditions</a></li>
							</ul>
							<h3 class="tc"><a href="login.jsp" title="">Logout</a></h3>
						</div><!--user-account-settingss end-->
					</div>
				</div><!--header-data end-->
			</div>
		</header><!--header end-->	


		<section class="companies-info">
			<div class="container">
				<div class="company-title">
					<h3>课程分类</h3>

				</div><!--company-title end-->
				<div class="companies-list">
					<div class="row">
						<div class="col-lg-3 col-md-4 col-sm-6">
							<div class="company_profile_info">
								<div class="company-up-info">
									<img src="${pageContext.request.contextPath }/resources/teacher/images/resources/cmp-icon1.png" alt="">
									<h3>初中语文</h3>
									<h4>Establish Feb, 2004</h4>
									<ul>
										<li><a href="#" title="" class="follow">Follow</a></li>
										<li><a href="#" title="" class="message-us"><i class="fa fa-envelope"></i></a></li>
									</ul>
								</div>
								<a href="${pageContext.request.contextPath }/student/czYuWen" title="" class="view-more-pro">点击查看详情</a>
							</div><!--company_profile_info end-->
						</div>
						<div class="col-lg-3 col-md-4 col-sm-6">
							<div class="company_profile_info">
								<div class="company-up-info">
									<img src="${pageContext.request.contextPath }/resources/teacher/images/resources/cmp-icon2.png" alt="">
									<h3>初中数学</h3>
									<h4>Establish Feb, 2004</h4>
									<ul>
										<li><a href="#" title="" class="follow">Follow</a></li>
										<li><a href="#" title="" class="message-us"><i class="fa fa-envelope"></i></a></li>
									</ul>
								</div>
								<a href="${pageContext.request.contextPath }/student/czShuXue" title="" class="view-more-pro">点击查看详情</a>
							</div><!--company_profile_info end-->
						</div>
						<div class="col-lg-3 col-md-4 col-sm-6">
							<div class="company_profile_info">
								<div class="company-up-info">
									<img src="${pageContext.request.contextPath }/resources/teacher/images/resources/cmp-icon3.png" alt="">
									<h3>初中英语</h3>
									<h4>Establish Feb, 2004</h4>
									<ul>
										<li><a href="#" title="" class="follow">Follow</a></li>
										<li><a href="#" title="" class="message-us"><i class="fa fa-envelope"></i></a></li>
									</ul>
								</div>
								<a href="#" title="" class="view-more-pro">点击查看详情</a>
							</div><!--company_profile_info end-->
						</div>
						<div class="col-lg-3 col-md-4 col-sm-6">
							<div class="company_profile_info">
								<div class="company-up-info">
									<img src="${pageContext.request.contextPath }/resources/teacher/images/resources/cmp-icon4.png" alt="">
									<h3>初中物理</h3>
									<h4>Establish Feb, 2004</h4>
									<ul>
										<li><a href="#" title="" class="follow">Follow</a></li>
										<li><a href="#" title="" class="message-us"><i class="fa fa-envelope"></i></a></li>
									</ul>
								</div>
								<a href="${pageContext.request.contextPath }/student/czWuLi"  title="" class="view-more-pro">点击查看详情</a>
							</div><!--company_profile_info end-->
						</div>
						<div class="col-lg-3 col-md-4 col-sm-6">
							<div class="company_profile_info">
								<div class="company-up-info">
									<img src="${pageContext.request.contextPath }/resources/teacher/images/resources/cmp-icon5.png" alt="">
									<h3>初中化学</h3>
									<h4>Establish Feb, 2004</h4>
									<ul>
										<li><a href="#" title="" class="follow">Follow</a></li>
										<li><a href="#" title="" class="message-us"><i class="fa fa-envelope"></i></a></li>
									</ul>
								</div>
								<a href="${pageContext.request.contextPath }/student/czHuaXue"  title="" class="view-more-pro">点击查看详情</a>
							</div><!--company_profile_info end-->
						</div>
						<div class="col-lg-3 col-md-4 col-sm-6">
							<div class="company_profile_info">
								<div class="company-up-info">
									<img src="${pageContext.request.contextPath }/resources/teacher/images/resources/cmp-icon6.png" alt="">
									<h3>初中生物</h3>
									<h4>Establish Feb, 2004</h4>
									<ul>
										<li><a href="#" title="" class="follow">Follow</a></li>
										<li><a href="#" title="" class="message-us"><i class="fa fa-envelope"></i></a></li>
									</ul>
								</div>
								<a href="${pageContext.request.contextPath }/student/czShengWu"  title="" class="view-more-pro">点击查看详情</a>
							</div><!--company_profile_info end-->
						</div>
						<div class="col-lg-3 col-md-4 col-sm-6">
							<div class="company_profile_info">
								<div class="company-up-info">
									<img src="${pageContext.request.contextPath }/resources/teacher/images/resources/cmp-icon7.png" alt="">
									<h3>高中语文</h3>
									<h4>Establish Feb, 2004</h4>
									<ul>
										<li><a href="#" title="" class="follow">Follow</a></li>
										<li><a href="#" title="" class="message-us"><i class="fa fa-envelope"></i></a></li>
									</ul>
								</div>
								<a href="${pageContext.request.contextPath }/student/gzYuWen"  title="" class="view-more-pro">点击查看详情</a>
							</div><!--company_profile_info end-->
						</div>
						<div class="col-lg-3 col-md-4 col-sm-6">
							<div class="company_profile_info">
								<div class="company-up-info">
									<img src="${pageContext.request.contextPath }/resources/teacher/images/resources/cmp-icon8.png" alt="">
									<h3>高中数学</h3>
									<h4>Establish Feb, 2004</h4>
									<ul>
										<li><a href="#" title="" class="follow">Follow</a></li>
										<li><a href="#" title="" class="message-us"><i class="fa fa-envelope"></i></a></li>
									</ul>
								</div>
								<a href="${pageContext.request.contextPath }/student/gzShuXue" title="" class="view-more-pro">点击查看详情</a>
							</div><!--company_profile_info end-->
						</div>
						<div class="col-lg-3 col-md-4 col-sm-6">
							<div class="company_profile_info">
								<div class="company-up-info">
									<img src="${pageContext.request.contextPath }/resources/teacher/images/resources/cmp-icon9.png" alt="">
									<h3>高中英语</h3>
									<h4>Establish Feb, 2004</h4>
									<ul>
										<li><a href="#" title="" class="follow">Follow</a></li>
										<li><a href="#" title="" class="message-us"><i class="fa fa-envelope"></i></a></li>
									</ul>
								</div>
								<a href="${pageContext.request.contextPath }/student/gzYingYu"  title="" class="view-more-pro">点击查看详情</a>
							</div><!--company_profile_info end-->
						</div>
						<div class="col-lg-3 col-md-4 col-sm-6">
							<div class="company_profile_info">
								<div class="company-up-info">
									<img src="${pageContext.request.contextPath }/resources/teacher/images/resources/cmp-icon10.png" alt="">
									<h3>高中物理</h3>
									<h4>Establish Feb, 2004</h4>
									<ul>
										<li><a href="#" title="" class="follow">Follow</a></li>
										<li><a href="#" title="" class="message-us"><i class="fa fa-envelope"></i></a></li>
									</ul>
								</div>
								<a href="${pageContext.request.contextPath }/student/gzWuLi"  title="" class="view-more-pro">点击查看详情</a>
							</div><!--company_profile_info end-->
						</div>
						<div class="col-lg-3 col-md-4 col-sm-6">
							<div class="company_profile_info">
								<div class="company-up-info">
									<img src="${pageContext.request.contextPath }/resources/teacher/images/resources/cmp-icon11.png" alt="">
									<h3>高中化学</h3>
									<h4>Establish Feb, 2004</h4>
									<ul>
										<li><a href="#" title="" class="follow">Follow</a></li>
										<li><a href="#" title="" class="message-us"><i class="fa fa-envelope"></i></a></li>
									</ul>
								</div>
								<a href="${pageContext.request.contextPath }/student/gzHuaXue"  title="" class="view-more-pro">点击查看详情</a>
							</div><!--company_profile_info end-->
						</div>
						<div class="col-lg-3 col-md-4 col-sm-6">
							<div class="company_profile_info">
								<div class="company-up-info">
									<img src="${pageContext.request.contextPath }/resources/teacher/images/resources/cmp-icon12.png" alt="">
									<h3>高中生物</h3>
									<h4>Establish Feb, 2004</h4>
									<ul>
										<li><a href="#" title="" class="follow">Follow</a></li>
										<li><a href="#" title="" class="message-us"><i class="fa fa-envelope"></i></a></li>
									</ul>
								</div>
								<a href="${pageContext.request.contextPath }/student/gzShengWu"  title="" class="view-more-pro">点击查看详情</a>
							</div><!--company_profile_info end-->
						</div>
					</div>
				</div><!--companies-list end-->
				<div class="process-comm">
					<a href="#" title=""><img src="${pageContext.request.contextPath }/resources/teacher/images/process-icon.png" alt=""></a>
				</div>
			</div>
		</section><!--companies-info end-->


	</div><!--theme-layout end-->



<script src="https://www.jq22.com/jquery/jquery-1.10.2.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/teacher/js/popper.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/teacher/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/teacher/js/flatpickr.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/teacher/lib/slick/slick.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/teacher/js/script.js"></script>
</body>
</html>
