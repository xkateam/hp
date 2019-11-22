<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Trabajo HTML5 Responsive Template</title>
    <!-- Favicon -->
    <link rel="icon" href="assets/images/favicon.png" type="image/png" sizes="32x32">
    <!-- All CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/zhaopin/assets/css/aos.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/zhaopin/assets/css/magnific.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/zhaopin/assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/zhaopin/assets/css/select2.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/zhaopin/assets/css/slimmenu.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/zhaopin/assets/css/style.css">
    
    
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/style/bootstrap-table/bootstrap-table.min.css">

    <!-- Google font -->

</head>
   <body>
      <!--header-start -->
      <header class="header-area">
         <div class="container">
            <div class="row">
               <div class="col-lg-2">
                  
               </div>
               <div class="col-lg-10">
                  <div class="header-container d-flex justify-content-between highlight">
                     <nav class="highlight">
                        <ul id="responsive-menu" class="slimmenu">
                            <li><a class="nav-link" href="${pageContext.request.contextPath }/teacher/teacherInfo">个人信息</a>
                           </li>
                           <li class="nav-item">
                              <a class="nav-link" href="${pageContext.request.contextPath }/teacher/Application2">求职申请</a>
                           </li>
                           <!--<li class="nav-item">
                              <a class="nav-link" href="#">Pages</a>
                              <ul>
                                 <li><a href="job-listing.html">Job listing</a></li>
                                 <li><a href="job-post.html">Job Details</a></li>
                                 <li><a href="submit.html">Submit Resume</a></li>
                                 <li><a href="post-job.html">Post Job</a></li>
                                 <li><a href="candidates.html">Candidates</a></li>
                                 <li><a href="companies.html">Companies</a></li>								 
                                 <li><a href="login.html">Login</a></li>
                                 <li><a href="reg.html">Register</a></li>
                                 <li><a href="style-guide.html">Style Guide</a></li>
                                 <li><a href="404.html">404 Page </a></li>
                              </ul>
                           </li>
                           <li class="nav-item">
                              <a class="nav-link" href="candidates.html">Candidates</a>
                           </li>
                           <li class="nav-item">
                              <a class="nav-link" href="blog-page.html">Blog</a>
                              <ul>
                                 <li><a href="blog-details.html">Blog Post</a></li>
                                 <li><a href="style-guide.html">Style Guide</a></li>
                              </ul>
                           </li>
                           <li class="nav-item"><a href="contact.html">Contact</a></li> -->
                           <li class="nav-item call-to-action "><a href="${pageContext.request.contextPath }/teacher/teacherIndex">首页</a></li>
                        </ul>
                     </nav>
                  </div>
               </div>
            </div>
         </div>
      </header>
      <!--header-end -->
      <main class="main-content-area">
         <!--slider-start -->
         <div class="slider-area clearfix">
            <div class="container">
			  <div class="row">
			  	<div class="col-lg-12">
				 <div class="slider-wrapper">
	               <div class="row">
                  <div class="col-md-68 mx-auto">
                     <div class="slider-text text-center">
                        <div class="slide-title">
                           <!-- <h1><div class="mobile-show">5,000+ Jobs Available</div><div class="mobile-hide">5,000+ Jobs <span class="typed"></span> </div></h1> -->
                           <div class="typed-strings">
                             <!--  <p>Available</p> -->
                           </div>
                           <!-- <p>Fusitae risusvol ptatem vitae iaculis gravida, luctus dui fermentum mauris.</p> -->
                        </div>
                        <div class="slider-btn">
                           <!-- <div class="buttonfx btn-green"><a class="shutter-in-horizontal green-border-2" href="#">Apply Now</a></div>
                           <div class="btn-trasparent-green buttonfx curtainup"><a class="shutter-in-horizontal green-border-2"  href="#">Join with Us</a></div> -->
                        </div> 
                     </div>
                  </div>
               </div>
				 <div class="job-search-bar">
					<div class="search-bar text-center">
					   <form action="#" class="">
						  <div class="form-row">
							 <div class="col-md-3">
								<input id="className" name="className" type="search" placeholder="输入关键字..." />
							 </div>
							 <div class="col-md-3">
								<select class="custom-multi-select" id="classLevel">
								  <option value="" disabled selected>教学级别</option>
								   <option value="xiaoxue">小学</option>
								   <option value="chuzhong">初中</option>
								   <option value="gaozhong">高中</option>
								</select>
							 </div>
							 <div class="col-md-3">
								<select class="custom-multi-select" id="classInfo">
								<option value="" disabled selected>科目类型</option>
								   <option value="yuwen">语文</option>
								   <option value="shuxue">数学</option>
								   <option value="yingyu">英语</option>

								</select>
							 </div>
							 <div class="col-md-3">
								<button type="submit" id="selectJobs" class="buttonfx curtainup" onclick="selectJobs()">查找工作</button>
							 </div>
						  </div>
					   </form>
					</div>
				 </div>			
				</div>
				</div>
			  </div>

            </div>
         </div>
         <div class="col-md-12">
            <table id="table1"></table>
        </div>
         <!--slider-end -->

         <!--work-area-start -->
         <div class="how-work-area pt-100 pb-100 clearfix">
            <div class="container">
               <div class="how-work-wrapper text-center">
                  <div class="row">
                     <div class="col-md-4">
                        <div class="work-block" data-aos="fade-up">
                           <%-- <div class="icon">
                              <a href="${pageContext.request.contextPath }/teacher/teacherInfo"><img src="${pageContext.request.contextPath }/resources/zhaopin/assets/images/lock.png" alt="image" /></a>
                           </div>
                           <div class="title">
                              <h3>个人信息</h3>
                           </div> --%>
                           <!-- <p>Lorem ipsum dolor sit amet, a arcu justo eget, placerat suspendisse ornare accumsan et fringilla consectetuer <br/> -->
                           <%-- <a class="read-more" href="${pageContext.request.contextPath }/teacher/teacherInfo">Read More</a>  --%>
                            <!-- </p> -->
                        </div>
                     </div>
                     <%-- <div class="col-md-4">
                        <div class="work-block">
                           <div class="icon">
                              <a href="#"><img src="${pageContext.request.contextPath }/resources/zhaopin/assets/images/search.png" alt="image" /></a>
                           </div>
                           <div class="title">
                              <h3>Serach Job</h3>
                           </div>
                           <p>Lorem ipsum dolor sit amet, a arcu justo eget, placerat suspendisse ornare accumsan et fringilla consectetuer <br/><a class="read-more" href="#">Read More</a>  </p>
                        </div>
                     </div> --%>
                     <%-- <div class="col-md-4">
                        <div class="work-block m-0">
                           <div class="icon">
                              <a href="${pageContext.request.contextPath }/teacher/Application2"><img src="${pageContext.request.contextPath }/resources/zhaopin/assets/images/resume.png" alt="image" /></a>
                           </div>
                           <div class="title">
                              <h3>求职申请</h3>
                           </div> --%>
                           <!-- <p>Lorem ipsum dolor sit amet, a arcu justo eget, placerat suspendisse ornare accumsan et fringilla consectetuer <br/> -->
                           <%-- <a class="read-more" href="${pageContext.request.contextPath }/teacher/Application2">Read More</a>  --%>
                           <!--  </p> -->
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <%-- <!--work-area-end -->
         <!--job-post-area-start -->
         <div class="job-post-area pt-100 bg-color2 pb-100 minus-15 clearfix">
            <div class="container">
               <div class="row">
                  <div class="col-md-12">
                     <div class="section-title text-left">
                        <span>This week's top jobs</span>
                        <h2>Featured Jobs</h2>
                        <div class="line"></div>
                     </div>
                  </div>
               </div>
               <div class="row">
                  <div class="col-lg-6 col-md-12">
                     <div class="job-post-list">
                        <div class="single-job d-md-flex" data-aos="fade-left">
                           <div class="logo">
                              <a href="job-post.html"><img src="${pageContext.request.contextPath }/resources/zhaopin/assets/images/logo-2.png" alt="image" /></a>
                           </div>
                           <div class="job-meta">
                              <div class="title">
                                 <h4><a href="job-post.html">
                                    Restaurant Team Member</a>
                                 </h4>
                              </div>
                              <div class="meta-info d-flex">
                                 <p><i class="fa fa-briefcase" aria-hidden="true"></i>Kibo</p>
                                 <p><i class="fa fa-map-marker" aria-hidden="true"></i><a href="#">Canada</a></p>
                                 <p><i class="fa fa-calendar" aria-hidden="true"></i>Today</p>
                              </div>
                           </div>
                           <div class="timing ml-auto">
                              <a class="time-btn1 time-btn" href="#">Full Time</a>
                           </div>
                        </div>
                        <div class="single-job  d-md-flex" data-aos="fade-right">
                           <div class="logo">
                              <a href="job-post.html"><img src="${pageContext.request.contextPath }/resources/zhaopin/assets/images/logo-3.png" alt="image" /></a>
                           </div>
                           <div class="job-meta">
                              <div class="title">
                                 <h4><a href="job-post.html">
                                    Web Designer needed</a>
                                 </h4>
                              </div>
                              <div class="meta-info d-flex">
                                 <p><i class="fa fa-briefcase" aria-hidden="true"></i>Kibo</p>
                                 <p><i class="fa fa-map-marker" aria-hidden="true"></i><a href="#">City Town</a> </p>
                                 <p><i class="fa fa-calendar" aria-hidden="true"></i>4 Days ago</p>
                              </div>
                           </div>
                           <div class="timing ml-auto">
                              <a class="time-btn2 time-btn" href="#">Part Time</a>
                           </div>
                        </div>
                        <div class="single-job  d-md-flex" data-aos="fade-left">
                           <div class="logo">
                              <a href="job-post.html"><img src="${pageContext.request.contextPath }/resources/zhaopin/assets/images/logo-4.png" alt="image" /></a>
                           </div>
                           <div class="job-meta">
                              <div class="title">
                                 <h4><a href="job-post.html">
                                    MySQL Developers</a>
                                 </h4>
                              </div>
                              <div class="meta-info d-flex">
                                 <p><i class="fa fa-briefcase" aria-hidden="true"></i>Kibo</p>
                                 <p><i class="fa fa-map-marker" aria-hidden="true"></i><a href="#">London</a></p>
                                 <p><i class="fa fa-calendar" aria-hidden="true"></i>3 Days ago</p>
                              </div>
                           </div>
                           <div class="timing ml-auto">
                              <a class="time-btn3 time-btn" href="#">Full Time</a>
                           </div>
                        </div>
                        <div class="single-job d-md-flex" data-aos="fade-right">
                           <div class="logo">
                              <a href="job-post.html"><img src="${pageContext.request.contextPath }/resources/zhaopin/assets/images/logo-5.png" alt="image" /></a>
                           </div>
                           <div class="job-meta">
                              <div class="title">
                                 <h4><a href="job-post.html">
                                    UX/UI Designer</a>
                                 </h4>
                              </div>
                              <div class="meta-info d-flex">
                                 <p><i class="fa fa-briefcase" aria-hidden="true"></i>Kibo</p>
                                 <p><i class="fa fa-map-marker" aria-hidden="true"></i><a href="#">London</a></p>
                                 <p><i class="fa fa-calendar" aria-hidden="true"></i>Today</p>
                              </div>
                           </div>
                           <div class="timing ml-auto">
                              <a class="time-btn4 time-btn" href="#">Part Time</a>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="col-lg-6 col-md-12">
                     <div class="job-post-list">
                        <div class="single-job  d-md-flex" data-aos="fade-left">
                           <div class="logo">
                              <a href="job-post.html"><img src="${pageContext.request.contextPath }/resources/zhaopin/assets/images/logo-6.png" alt="image" /></a>
                           </div>
                           <div class="job-meta">
                              <div class="title">
                                 <h4><a href="job-post.html">
                                    Sales Engineer</a>
                                 </h4>
                              </div>
                              <div class="meta-info d-flex">
                                 <p><i class="fa fa-briefcase" aria-hidden="true"></i>Kibo</p>
                                 <p><i class="fa fa-map-marker" aria-hidden="true"></i><a href="#">London</a></p>
                                 <p><i class="fa fa-calendar" aria-hidden="true"></i>01 Days ago</p>
                              </div>
                           </div>
                           <div class="timing ml-auto">
                              <a class="time-btn1 time-btn" href="#">Full Time</a>
                           </div>
                        </div>
                        <div class="single-job d-md-flex" data-aos="fade-right">
                           <div class="logo">
                              <a href="job-post.html"><img src="${pageContext.request.contextPath }/resources/zhaopin/assets/images/logo-7.png" alt="image" /></a>
                           </div>
                           <div class="job-meta">
                              <div class="title">
                                 <h4><a href="job-post.html">
                                    Web Designer needed</a>
                                 </h4>
                              </div>
                              <div class="meta-info d-flex">
                                 <p><i class="fa fa-briefcase" aria-hidden="true"></i>Kibo</p>
                                 <p><i class="fa fa-map-marker" aria-hidden="true"></i><a href="#">London</a></p>
                                 <p><i class="fa fa-calendar" aria-hidden="true"></i>2 Days ago</p>
                              </div>
                           </div>
                           <div class="timing ml-auto">
                              <a class="time-btn2 time-btn" href="#">Part Time</a>
                           </div>
                        </div>
                        <div class="single-job  d-md-flex" data-aos="fade-left">
                           <div class="logo">
                              <a href="job-post.html"><img src="${pageContext.request.contextPath }/resources/zhaopin/assets/images/logo-8.png" alt="image" /></a>
                           </div>
                           <div class="job-meta">
                              <div class="title">
                                 <h4><a href="job-post.html">
                                    Software Developer -IT Co</a>
                                 </h4>
                              </div>
                              <div class="meta-info d-flex">
                                 <p><i class="fa fa-briefcase" aria-hidden="true"></i>Kibo</p>
                                 <p><i class="fa fa-map-marker" aria-hidden="true"></i><a href="#">London</a></p>
                                 <p><i class="fa fa-calendar" aria-hidden="true"></i>03 Days ago</p>
                              </div>
                           </div>
                           <div class="timing ml-auto">
                              <a class="time-btn3 time-btn" href="#">Full Time</a>
                           </div>
                        </div>
                        <div class="single-job d-md-flex" data-aos="fade-left">
                           <div class="logo">
                              <a href="job-post.html"><img src="${pageContext.request.contextPath }/resources/zhaopin/assets/images/logo-5.png" alt="image" /></a>
                           </div>
                           <div class="job-meta">
                              <div class="title">
                                 <h4><a href="job-post.html">
                                    UX/UI Designer</a>
                                 </h4>
                              </div>
                              <div class="meta-info d-flex">
                                 <p><i class="fa fa-briefcase" aria-hidden="true"></i>Kibo</p>
                                 <p><i class="fa fa-map-marker" aria-hidden="true"></i><a href="#">London</a></p>
                                 <p><i class="fa fa-calendar" aria-hidden="true"></i>Today</p>
                              </div>
                           </div>
                           <div class="timing ml-auto">
                              <a class="time-btn4 time-btn" href="#">Part Time</a>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <!--job-post-area-end -->
         <!--apps-download-area-start -->
         <div class="apps-download-area pt-100 pb-100 clearfix">
            <div class="container">
               <div class="row">
                  <div class="col-md-7">
                     <div class="apps-details-content">
                        <div class="section-title text-left">
                           <span>Search the job from app</span>
                           <h2>Download our app <br />
                              and find your dream job
                           </h2>
                           <div class="line"></div>
                        </div>
						<p><b>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </b></p>
                        <p> non tellus orci ac auctor augue. Aliquam sem fringilla ut morbi tincidunt augue. Suspendisse interdum consectetur libero id faucibus nisl. Semper auctor neque vitae tempus quam pellentesque nec nam aliquam.  </p>
                        <p>   Eu scelerisque felis imperdiet proin fermentum. Odio pellentesque diam volutpat commodo sed. At elementum eu facilisis sed odio morbi quis commodo odio.</p>
                        <div class="apps-btn d-md-flex">
                           <a href="#">
                              <img src="${pageContext.request.contextPath }/resources/zhaopin/assets/images/Google-Play.png" alt="image" />
                           </a>
                           <a href="#">
                              <img src="${pageContext.request.contextPath }/resources/zhaopin/assets/images/App-Store.png" alt="image" />
                           </a>
                        </div>
                     </div>
                  </div>
                  <div class="col-md-4 d-flex align-items-center themeix-h offset-md-1">
                     <div class="mobile themeix-h" data-aos="fade-up-left">
                        <img src="${pageContext.request.contextPath }/resources/zhaopin/assets/images/mobile-img.png" alt="image" />
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <!--apps-download-area-end -->
         <!--job-browse-area-start -->
         <div class="job-browse-area pt-100 pb-100 clearfix" style="background-image:url(${pageContext.request.contextPath }/resources/zhaopin/assets/images/bg-2.jpg)">
            <div class="container">
               <div class="row">
                  <div class="col-md-12">
                     <div class="details-text text-center" data-aos="flip-up">
                        <div class="title pb-3">
                           <div class="heading-two mb-2">
                              <h2>Browse Our <span>6,000+ </span>Latest Jobs</h2>
                           </div>
                           <p>Get your best job in here</p>
                        </div>
                        <div class="btn-trasparent-white buttonfx curtainup"><a href="#">Get started now</a></div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <!--job-browse-area-end -->
         <!--job-categories-area-start -->
         <div class="job-categories-area bg-color2 pt-100 pb-100 clearfix">
            <div class="container">
               <div class="row">
                  <div class="col-md-12">
                     <div class="section-title text-left">
                        <span>Most popular categories</span>
                        <h2>Browse Category</h2>
                        <div class="line"></div>
                     </div>
                  </div>
               </div>
               <div class="cat-list-items">
                  <div class="row">
                     <div class="col-md-4">
                        <div class="single-category text-center" data-aos="flip-up">
                           <div class="cat-icon"><a href="#"><img src="${pageContext.request.contextPath }/resources/zhaopin/assets/images/cat-1.jpg" alt="image" /></a></div>
                           <div class="cat-details">
                              <h4><a href="#">Accounting / finance</a><span>(10 open vacancies)</span></h4>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <div class="single-category text-center">
                           <div class="cat-icon"><a href="#"><img src="${pageContext.request.contextPath }/resources/zhaopin/assets/images/cat-2.jpg" alt="image" /></a></div>
                           <div class="cat-details">
                              <h4><a href="#">Education training</a><span>(15 open vacancies)</span></h4>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <div class="single-category text-center" data-aos="flip-up">
                           <div class="cat-icon"><a href="#"><img src="${pageContext.request.contextPath }/resources/zhaopin/assets/images/cat-3.jpg" alt="image" /></a></div>
                           <div class="cat-details">
                              <h4><a href="#">Book services </a><span>(17 open vacancies)</span></h4>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <div class="single-category text-center">
                           <div class="cat-icon"><a href="#"><img src="${pageContext.request.contextPath }/resources/zhaopin/assets/images/cat-4.jpg" alt="image" /></a></div>
                           <div class="cat-details">
                              <h4><a href="#">Health care</a><span>(9 open vacancies)</span></h4>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <div class="single-category text-center" >
                           <div class="cat-icon"><a href="#"><img src="${pageContext.request.contextPath }/resources/zhaopin/assets/images/cat-5.jpg" alt="image" /></a></div>
                           <div class="cat-details">
                              <h4><a href="#">Automotive job</a><span>(6 open vacancies)</span></h4>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <div class="single-category text-center">
                           <div class="cat-icon"><a href="#"><img src="${pageContext.request.contextPath }/resources/zhaopin/assets/images/cat-6.jpg" alt="image" /></a></div>
                           <div class="cat-details">
                              <h4><a href="#">Sales  marketing</a><span>(12 open vacancies)</span></h4>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <div class="single-category text-center" data-aos="flip-up">
                           <div class="cat-icon"><a href="#"><img src="${pageContext.request.contextPath }/resources/zhaopin/assets/images/cat-7.jpg" alt="image" /></a></div>
                           <div class="cat-details">
                              <h4><a href="#">Sales  marketing</a><span>(12 open vacancies)</span></h4>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <div class="single-category text-center">
                           <div class="cat-icon"><a href="#"><img src="${pageContext.request.contextPath }/resources/zhaopin/assets/images/cat-8.jpg" alt="image" /></a></div>
                           <div class="cat-details">
                              <h4><a href="#">Sales  marketing</a><span>(12 open vacancies)</span></h4>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <div class="single-category text-center" data-aos="flip-up">
                           <div class="cat-icon"><a href="#"><img src="${pageContext.request.contextPath }/resources/zhaopin/assets/images/cat-9.jpg" alt="image" /></a></div>
                           <div class="cat-details">
                              <h4><a href="#">Sales  marketing</a><span>(12 open vacancies)</span></h4>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <!--job-categories-area-end -->
         <!--testimonial-area-start -->
         <div class="testimonial-area pt-100 pb-100 clearfix" id="tastimonial">
            <div class="container">
               <div class="row">
                  <div class="col-md-12">
                     <div class="section-title text-left">
                        <span>Cover story</span>
                        <h2>Success Stories</h2>
                        <div class="line"></div>
                     </div>
                  </div>
               </div>
               <div class="row">
                  <div class="col-md-12">
                     <div class="testimonial-slider owl-carousel">
                        <div class="testi-stories  text-left">
                           <blockquote class="testimonial">
                              <p>Porttitor lacus luctus accumsan tortor posuere ac ut consequat semper viverra nam libero justo laoreet sit amet cursus sit amet dictum sit amet justo donec enim diam vulputate ut pharetra</p>
                           </blockquote>
                           <div class="arrow-down"></div>
                           <p class="testimonial-author"><img src="${pageContext.request.contextPath }/resources/zhaopin/assets/images/testimonial-2.png" alt="image" /> Neil Roberts | <span>Designer</span></p>
                        </div>
                        <div class="testi-stories  text-left">
                           <blockquote class="testimonial">
                              <p>Mollis nunc sed id semper risus in hendrerit gravida rutrum quisque non tellus orci ac auctor augue mauris augue neque gravida in fermentum et sollicitudin ac orci phasellus egestas tellu</p>
                           </blockquote>
                           <div class="arrow-down"></div>
                           <p class="testimonial-author"><img src="${pageContext.request.contextPath }/resources/zhaopin/assets/images/testimonial-1.png" alt="image" /> Jhon Doe | <span>Photgrapher</span></p>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <!--testimonial-area-end -->
		 		 <!--team-area-start -->
         <div class="team-area pt-100 pb-100 clearfix bg-color2">
            <div class="container">
               <div class="team-wrapper text-center">
				   <div class="row">
					  <div class="col-md-12">
						 <div class="section-title text-left">
							<span>Our top three freelancer</span>
							<h2>Top Freelancer</h2>
							<div class="line"></div>
						 </div>
					  </div>
				   </div>
                  <div class="row">
                     <div class="col-md-4">
                        <div class="team-reviewer" data-aos="fade-up">
                           <div class="image">
                              <a href="#"><img src="${pageContext.request.contextPath }/resources/zhaopin/assets/images/team-img.jpg" alt="image" /></a>
							   <ul class="team-social list-inline">
								  <li class="facebook"><a href="#"><i class="fa fa-facebook-f"></i></a></li>
								  <li class="twitter"><a href="#"><i class="fa fa-twitter"></i></a></li>
								  <li class="linkedin"><a href="#"><i class="fa fa-linkedin"></i></a></li>
							   </ul>
							  
                           </div>
                           <div class="content">
                              <h4><a href="#">Paul Molive</a></h4>
							  <p>Web Developer </p>
							  <ul class="team-star list-inline">
								<li class="list-inline-item">
									<i class="fa fa-star" aria-hidden="true"></i>
								</li><li class="list-inline-item">
									
									<i class="fa fa-star-o" aria-hidden="true"></i>
								</li><li class="list-inline-item">
									<i class="fa fa-star-o" aria-hidden="true"></i>
								</li><li class="list-inline-item">
									<i class="fa fa-star-o" aria-hidden="true"></i>
								</li>
								<li class="list-inline-item">
									<i class="fa fa-star-o" aria-hidden="true"></i>
								</li>
							  </ul>
                           </div>
                           
                        </div>
                     </div>  <div class="col-md-4">
                        <div class="team-reviewer" data-aos="fade-up">
                           <div class="image">
                              <a href="#"><img src="${pageContext.request.contextPath }/resources/zhaopin/assets/images/team-img2.jpg" alt="image" /></a>
							   <ul class="team-social list-inline">
								  <li class="facebook"><a href="#"><i class="fa fa-facebook-f"></i></a></li>
								  <li class="twitter"><a href="#"><i class="fa fa-twitter"></i></a></li>
								  <li class="linkedin"><a href="#"><i class="fa fa-linkedin"></i></a></li>
							   </ul>
							  
                           </div>
                           <div class="content">
                              <h4><a href="#">Paige Turner</a></h4>
							  <p>Php Developer </p>
							  <ul class="team-star list-inline">
								<li class="list-inline-item">
									<i class="fa fa-star" aria-hidden="true"></i>
								</li><li class="list-inline-item">
									<i class="fa fa-star" aria-hidden="true"></i>
								</li><li class="list-inline-item">
									<i class="fa fa-star" aria-hidden="true"></i>
								</li><li class="list-inline-item">
									<i class="fa fa-star-o" aria-hidden="true"></i>
								</li>
								<li class="list-inline-item">
									<i class="fa fa-star-o" aria-hidden="true"></i>
								</li>
							  </ul>
                           </div>
                           
                        </div>
                     </div>  <div class="col-md-4">
                        <div class="team-reviewer" data-aos="fade-up">
                           <div class="image">
                              <a href="#"><img src="${pageContext.request.contextPath }/resources/zhaopin/assets/images/team-img3.jpg" alt="image" /></a>
							   <ul class="team-social list-inline">
								  <li class="facebook"><a href="#"><i class="fa fa-facebook-f"></i></a></li>
								  <li class="twitter"><a href="#"><i class="fa fa-twitter"></i></a></li>
								  <li class="linkedin"><a href="#"><i class="fa fa-linkedin"></i></a></li>
							   </ul>
							  
                           </div>
                           <div class="content">
                              <h4><a href="#">Bob Frapples</a></h4>
							  <p>Java Developer </p>
							 <ul class="team-star list-inline">
								<li class="list-inline-item">
									<i class="fa fa-star" aria-hidden="true"></i>
								</li><li class="list-inline-item">
									<i class="fa fa-star" aria-hidden="true"></i>
								</li><li class="list-inline-item">
									<i class="fa fa-star" aria-hidden="true"></i>
								</li><li class="list-inline-item">
									<i class="fa fa-star" aria-hidden="true"></i>
								</li>
								<li class="list-inline-item">
									<i class="fa fa-star-o" aria-hidden="true"></i>
								</li>
							  </ul>
                           </div>
                           
                        </div>
                     </div> 
                  </div>
               </div>
            </div>
         </div>
         <!--team-area-end -->
         <!--video-area-start -->
         <div class="video-area clearfix">
            <div class="container-fluid p-0">
               <div class="row d-flex ">
                  <div class="col-lg-7 video-left align-self-stretch justify-content-end  d-flex">
				     <div class="video-support-wrapper  d-flex align-items-center pt-100 pb-100">
					    <div class="row">
				     	<div class="col-md-6">
						    <div class="video-support mb-4">
							   <div class="video-icon">
							        <img src="${pageContext.request.contextPath }/resources/zhaopin/assets/images/home.png" alt="video support icon" />
							   </div>
							   <div class="video-content">
							        <h5>Putting your first</h5>
									<p>The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using.</p>
							   </div>
							</div>
						</div><div class="col-md-6">
						    <div class="video-support mb-4">
							   <div class="video-icon">
							        <img src="${pageContext.request.contextPath }/resources/zhaopin/assets/images/settings.png" alt="video support icon" />
							   </div>
							   <div class="video-content">
							        <h5>Customer Satisfaction</h5>
									<p>It is a long established fact that a reader will be distracted by the readable content of a page when layout.</p>
							   </div>
							</div>
						</div><div class="col-md-6">
						    <div class="video-support">
							   <div class="video-icon">
							        <img src="${pageContext.request.contextPath }/resources/zhaopin/assets/images/smartphone.png" alt="video support icon" />
							   </div>
							   <div class="video-content">
							        <h5>Everyone Access</h5>
									<p>The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using.</p>
							   </div>
							</div>
						</div><div class="col-md-6">
						    <div class="video-support">
							   <div class="video-icon">
							        <img src="${pageContext.request.contextPath }/resources/zhaopin/assets/images/clock.png" alt="video support icon" />
							   </div>
							   <div class="video-content">
							        <h5>Real Time Tracking</h5>
									<p>It is a long established fact that a reader will be distracted by the readable content of a page when layout.</p>
							   </div>
							</div>
						</div>
				     </div>
					 </div>
				  
				  </div>
                  <div class="col-lg-5 video-right align-self-stretch ">
				     <img src="${pageContext.request.contextPath }/resources/zhaopin/assets/images/video-bg.jpg" alt="video image" />
                     <div class="video-content text-center">
                        <a href="https://www.youtube.com/watch?v=O33uuBh6nXA" class="video-play vid-zone buttonfx curtainup" data-aos="zoom-in">
                        <i class="fa fa-play"></i>
                        </a>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <!--video-area-end -->
         <!--blog-area-start -->
         <div class="blog-area bg-color2 pt-100 pb-100 clearfix">
            <div class="container">
               <div class="row">
                  <div class="col-md-12">
                     <div class="section-title text-left">
                        <span>Get the latest news</span>
                        <h2>Latest Blog</h2>
                        <div class="line"></div>
                     </div>
                  </div>
               </div>
               <div class="blog-wrapper">
                  <div class="row">
                     <div class="col-md-4">
                        <div class="blog-block" data-aos="fade-in">
                           <div class="blog-img">
                              <div class="image-div">
                                 <img src="${pageContext.request.contextPath }/resources/zhaopin/assets/images/blog-img-1.png" alt="image" />
                                 <div class="blog-overlay">
                                    <p><a href="blog-details.html"><i class="fa fa-link" aria-hidden="true"></i></a></p>
                                 </div>
                              </div>
                           </div>
                           <div class="blog-content">
                              <div class="blog-title">
                                 <h3><a href="blog-details.html">Get your dream job in Envato </a></h3>
                              </div>
                              <ul class="blog-meta mb-3 list-inline">
                                 <li class="list-inline-item">By <a href="#">Malina</a></li>
                                 <li class="list-inline-item"> Feb 21, 2018</li>
                              </ul>
                              <div class="content">
                                 <p>Vitae tempus quam pellentesque nec nam aliquam sem et tortor consequat id porta nibh venenatis cras sed felis eget   </p>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <div class="blog-block" data-aos="fade-in">
                           <div class="blog-img">
                              <div class="image-div">
                                 <img src="${pageContext.request.contextPath }/resources/zhaopin/assets/images/blog-img-2.png" alt="image" />
                                 <div class="blog-overlay">
                                    <p><a href="blog-details.html"><i class="fa fa-link" aria-hidden="true"></i></a></p>
                                 </div>
                              </div>
                           </div>
                           <div class="blog-content">
                              <div class="blog-title">
                                 <h3><a href="blog-details.html">CEO needed for the reputated company </a></h3>
                              </div>
                              <ul class="blog-meta mb-3 list-inline">
                                 <li class="list-inline-item">By <a href="#">Malina</a></li>
                                 <li class="list-inline-item"> Feb 21, 2018</li>
                              </ul>
                              <div class="content">
                                 <p>Faucibus pulvinar elementum integer enim neque volutpat ac tincidunt vitae semper quis lectus nulla at volutpat diam  </p>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <div class="blog-block" data-aos="fade-in">
                           <div class="blog-img">
                              <div class="image-div">
                                 <img src="${pageContext.request.contextPath }/resources/zhaopin/assets/images/blog-img-3.png" alt="image" />
                                 <div class="blog-overlay">
                                    <p><a href="blog-details.html"><i class="fa fa-link" aria-hidden="true"></i></a></p>
                                 </div>
                              </div>
                           </div>
                           <div class="blog-content">
                              <div class="blog-title">
                                 <h3><a href="blog-details.html">Secret tips to be success in your business </a></h3>
                              </div>
                              <ul class="blog-meta mb-3 list-inline">
                                 <li class="list-inline-item">By <a href="#">Malina</a></li>
                                 <li class="list-inline-item"> Feb 21, 2018</li>
                              </ul>
                              <div class="content">
                                 <p>Lorem ipsum dolor sit amet, imperdiet elit nisl etiam ducimus, molestie etiam tempus, tincidunt egetid enim hendrerit interdum </p>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <!--blog-area-end -->
         <!--client-area-start -->
         <div class="client-area pt-100 pb-100 clearfix">
            <div class="container">
               <div class="row">
                  <div class="col-lg-8">
                     <div class="client-logo">
                        <a href="#"><img src="${pageContext.request.contextPath }/resources/zhaopin/assets/images/company-logo.png" alt="image" /></a>
                     </div>
                  </div>
                  <div class="col-lg-4 d-flex align-items-center justify-content-center">
                     <div class="client-content">
                          <h5> See Why Over </h5>
						  <h3 class="client-big">10,00258+</h3>
                          <p>Companies have already used Trabajo </p>
						  <a href="#tastimonial" class="client-btn">Trabajo Reviews </a>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <!--client-area-end -->
      </main>
      <!--footer-area-start -->
      <footer>
         <div class="footer-area minus-30 pt-100 pb-100 clearfix">
            <div class="container">
               <div class="row">
                  <div class="col-lg-3 col-md-3 col-sm-6">
                     <div class="footer-widget">
                        <div class="widget-title">
                           <a href="index.html"><img src="${pageContext.request.contextPath }/resources/zhaopin/assets/images/footer-logo.png" alt="image" /></a>
                        </div>
                        <p>Cras semper auctor neque vitae tempus quam pellentesque nec nam aliquam sem et tortor consequat id porta nibh venenatis cras sed felis eget  </p>
                        <div class="social-link mt-4">
                           <ul>
                              <li class="facebook"><a href="#"><i class="fa fa-facebook-f"></i></a></li>
                              <li class="twitter"><a href="#"><i class="fa fa-twitter"></i></a></li>
                              
                              <li class="linkedin"><a href="#"><i class="fa fa-linkedin" ></i></a></li>
                           </ul>
                        </div>
                     </div>
                  </div>
                  <div class="col-lg-3 col-md-3 col-sm-6">
                     <div class="footer-widget">
                        <div class="widget-title">
                           <h3>Candidates</h3>
                        </div>
                        <div class="widget-link">
                           <ul>
                              <li><a href="#"><i class="fa fa-angle-right" aria-hidden="true"></i>Browse Jobs</a></li>
                              <li><a href="#"><i class="fa fa-angle-right" aria-hidden="true"></i>Submit Resume</a></li>
                              <li><a href="#"><i class="fa fa-angle-right" aria-hidden="true"></i>My Bookmarks</a></li>
                              <li><a href="#"><i class="fa fa-angle-right" aria-hidden="true"></i>Job Alerts</a></li>
                           </ul>
                        </div>
                     </div>
                  </div>
                  <div class="col-lg-3 col-md-3 col-sm-6">
                     <div class="footer-widget">
                        <div class="widget-title">
                           <h3>Employers</h3>
                        </div>
                        <div class="widget-link">
                           <ul>
                              <li><a href="#"><i class="fa fa-angle-right" aria-hidden="true"></i>Employers</a></li>
                              <li><a href="#"><i class="fa fa-angle-right" aria-hidden="true"></i>Add Job</a></li>
                              <li><a href="#"><i class="fa fa-angle-right" aria-hidden="true"></i>Jobs Listing</a></li>
                              <li><a href="#"><i class="fa fa-angle-right" aria-hidden="true"></i>Employers Grid</a></li>
                              <li><a href="#"><i class="fa fa-angle-right" aria-hidden="true"></i>Employer Listing</a></li>
                           </ul>
                        </div>
                     </div>
                  </div>
                  <div class="col-lg-3 col-md-3 col-sm-6">
                     <div class="footer-widget">
                        <div class="widget-title">
                           <h3>Subscribe Us</h3>
                        </div>
                        <div class="widget-text">
                           <form action="#">
                              <input type="email" placeholder="Your Email" />
                              <button type="submit" class="buttonfx curtainup">Subscribe</button>
                           </form>
                           <p>Nceptos, nulla dictumst neque nam aliquam</p>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <div class="footer-bottom-area clearfix">
            <div class="container">
               <div class="row">
                  <div class="col-md-12">
                     <div class="footer-bottom text-center">
                        <p>&copy; copyright - 2019 trabajo - Designed By <a href="http://www.jq22.com/">Themeix</a></p>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </footer>
      <!--footer-area-end -->
      <!-- ==================== START PRELOADER HERE ===================================== -->
      <div class="preloader" id="preloader">
         <div class="lds-ripple">
            <div></div>
            <div></div>
         </div>
      </div> --%>
      <!-- ==================== END PRELOADER HERE ===================================== -->		
      <!-- ====================ALL JS FILE HERE===================================== -->
      <!-- jQuery -->
	  <script src="https://www.jq22.com/jquery/jquery-3.3.1.js"></script>
	  <script src="${pageContext.request.contextPath }/resources/zhaopin/assets/js/modules/bootstrap.min.js"></script>
	  <script src="${pageContext.request.contextPath }/resources/zhaopin/assets/js/modules/proper.js"></script>
	  <script src="${pageContext.request.contextPath }/resources/zhaopin/assets/js/modules/jquery.waypoints.min.js"></script>
	  <script src="${pageContext.request.contextPath }/resources/zhaopin/assets/js/modules/owl.carousel.min.js"></script>
	  <script src="${pageContext.request.contextPath }/resources/zhaopin/assets/js/modules/magnific.min.js"></script>
	  <script src="${pageContext.request.contextPath }/resources/zhaopin/assets/js/modules/typing.min.js"></script>
	  <script src="${pageContext.request.contextPath }/resources/zhaopin/assets/js/modules/select2.min.js"></script>
	  <script src="${pageContext.request.contextPath }/resources/zhaopin/assets/js/modules/aos.min.js"></script>
	  <script src="${pageContext.request.contextPath }/resources/zhaopin/assets/js/modules/slimmenu.min.js"></script>
	  
      <script src="${pageContext.request.contextPath }/resources/zhaopin/assets/js/app.js"></script>  
      
<script src="${pageContext.request.contextPath}/resources/style/js/jquery.min.js"></script>

<script src="${pageContext.request.contextPath}/resources/style/bootstrap-table/bootstrap-table.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/style/pnotify/pnotify.custom.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/style/bootstrap-table/locale/bootstrap-table-zh-CN.js"></script>
<script src="${pageContext.request.contextPath}/resources/style/datetimepicker/js/bootstrap-datetimepicker.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/style/datetimepicker/js/locales/bootstrap-datetimepicker.zh-CN.js"
        charset="UTF-8"></script>
      <script>
	    /*  Type js  */
		/* if((".typed").length > 0) {
			var options = {
				stringsElement: '.typed-strings',
				typeSpeed: 100,
				backDelay: 700,
				loop:!0,
				startDelay:500,
				cursorChar: '|',
			}
			var typed = new Typed(".typed", options);
		}  */
	    
		//刷新bootstrapTable
	    /* function selectJobs() {
	        $("#table1").bootstrapTable('refresh');
	    }
		 */
		 
		//转换时间日期格式(时间戳转换为datetime格式)
		    function changeDateTimeFormat(cellval) {
		        var dateVal = cellval + "";
		        if (cellval != null) {
		            var date = new Date(parseInt(dateVal.replace("/Date(", "").replace(")/", ""), 10));
		            var month = date.getMonth() + 1 < 10 ? "0" + (date.getMonth() + 1) : date.getMonth() + 1;
		            var currentDate = date.getDate() < 10 ? "0" + date.getDate() : date.getDate();

		            var hours = date.getHours() < 10 ? "0" + date.getHours() : date.getHours();
		            var minutes = date.getMinutes() < 10 ? "0" + date.getMinutes() : date.getMinutes();
		            var seconds = date.getSeconds() < 10 ? "0" + date.getSeconds() : date.getSeconds();

		            return date.getFullYear() + "-" + month + "-" + currentDate + " " + hours + ":" + minutes + ":" + seconds;
		        }
		    }

		    //转换日期格式为年月
		    function changeDateFromat(cellval) {
		        var dateVal = cellval + "";
		        if (cellval != null) {
		            var date = new Date(parseInt(dateVal.replace("/Date(", "").replace(")/", ""), 10));
		            var month = date.getMonth() + 1 < 10 ? "0" + (date.getMonth() + 1) : date.getMonth() + 1;
		            var currentDate = date.getDate() < 10 ? "0" + date.getDate() : date.getDate();
		            return date.getFullYear() + "-" + month + "-" + currentDate;
		        }
		    }
		 
		 var queryParams = function (params) {
	        var temp = {
	        	classLevel: $("#classLevel").val(),
	            classInfo: $("#classInfo").val(),
	            className:$("#className").val()
	        }
	        return temp;
	    }

		 $("#selectJobs").click(function () {
			 $("#table1").bootstrapTable('refresh');
	    	$('#table1').bootstrapTable({
	            method: "get",
	           
	            striped: true,
	      //	private Integer order_id;
		//private String create_time;
	            columns: [
	                {
	                    field: 'className',
	                    title: '课程名称',
	                    align: "center"
	                },
	                {
	                    field: 'create_time',
	                    title: '发布时间',
	                    align: "center",
	                    formatter: function (value, row, index) {
	                        return changeDateTimeFormat(value);
	                    }
	                },
	                {
	                    field: 'salary',
	                    title: '薪水',
	                    align: "center"

	                },
	                {
	                    field: 'username',
	                    title: '用户名',
	                    align: "center"

	                },
	               {
	                    field: 'phone',
	                    title: '联系方式',
	                    align: "center"
	                   
	                }
	            ],
	            striped: true, 
	            pagination: true,
	            pageList: [10, 15],
	            /* search: true, */
	            showHeader: true, 
	            pageNumber: 1,
	            striped: true,
	            queryParams: queryParams,
	            url: '${pageContext.request.contextPath }/teacher/selectZhaopin',
	            onLoadSuccess: function () {  //加载成功时执行
	                console.info("加载成功");
	            },
	            onLoadError: function () {  //加载失败时执行
	                console.info("加载数据失败");
	            }
	        });
	    	
		});
	  </script>	  
	  
   </body>
</html>
