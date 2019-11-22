<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Trabajo HTML5 Responsive Template</title>
    <!-- Favicon -->
    <link rel="icon" href="${pageContext.request.contextPath }/resources/zhaopin/assets/images/favicon.png" type="image/png" sizes="32x32">
    <!-- All CSS -->
    <link rel="stylesheet" href="https://www.jq22.com/jquery/bootstrap-4.2.1.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/zhaopin/assets/css/aos.min.css">
    <link rel="stylesheet" href="https://www.jq22.com/jquery/font-awesome.4.7.0.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/zhaopin/assets/css/magnific.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/zhaopin/assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/zhaopin/assets/css/select2.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/zhaopin/assets/css/slimmenu.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/zhaopin/assets/css/style.css">
    <!-- Google font -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
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
                                <!--<li class="nav-item">
                                    <a class="nav-link" href="about.html">About</a>
                                </li>
                                 <li class="nav-item">
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
    <div class="header-banner clearfix" style="background-image:url(${pageContext.request.contextPath }/resources/zhaopin/assets/images/header-bg.jpg)">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="banner-text text-center">
                        <h1>求职申请</h1>
                        <ul class="breadcumb list-inline">
                            <li class="list-inline-item"><a href="${pageContext.request.contextPath }/teacher/teacherIndex">首页</a></li>
                            <li class="list-inline-item">岗位</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <main class="main-content-area clearfix">
        <div class="post-job-area pb-100 pt-100">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class=" post-form form-bg">
                            <div class="info-title mb-3">
                                <h3>求职期望</h3>
                            </div>

                            <div class="row">
                                <div class="col-md-12">

                                    <form method="post" action="${pageContext.request.contextPath}/teacher/insertJobExpect">
                                        <div class="form-row">
                                        <input name="username" type="hidden" id="username" />
                                            <div class="form-group col-md-12">
                                                <label for="jobname">输入课程名称</label>
                                                <input name="jobname" type="text" class="form-control" id="jobname" placeholder=" ">
                                            </div>
                                        </div>

                                        <div class="form-row">
                                            <div class="form-group col-md-12">
                                                <label for="jobcat">选择年级</label>
                                                <select name="jobcat" id="jobcat" class="form-control custom-select">
                                                    <option selected>请选择</option>
                                                    <option>小学</option>
                                                    <option>初中</option>
                                                    <option>高中</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="form-row">
                                            <div class="form-group col-md-12">
                                                <label for="jobDescription">工作经历</label>
                                                <textarea name="jobDescription" class="form-control" id="jobDescription" rows="13"></textarea>
                                            </div>
                                        </div>
                                        <!-- <div class="form-row">
                                            <div class="form-group col-md-12">
                                                <label for="jobexp">What level of experience should your freelancer have?</label>
                                                <select id="jobexp" class="form-control custom-select">
                                                    <option selected>Please select</option>
                                                    <option>Entry Level</option>
                                                    <option>Intermediate</option>
                                                    <option>Expert</option>
                                                    <option>Pro Expert</option>
                                                </select>
                                            </div>
                                        </div> -->

                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <label for="sallary">薪资范围</label>
                                                <input name="sallary" type="text" class="form-control" id="sallary">
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label for="joblocation">工作地点</label>
                                                <input name="joblocation" type="text" class="form-control" id="joblocation">
                                            </div>
                                        </div>

                                        <!-- <div class="form-group">
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" id="gridCheck">
                                                <label class="form-check-label" for="gridCheck">
                                                    Yes, I agreed all the terms of conditions to post the job
                                                </label>
                                            </div>
                                        </div>
 -->                                        <button type="submit" onclick="submitOver()" class="btn btn-primary job-post-btn btn-lg btn-block ">提交</button>
                                    </form>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <!--footer-area-start -->
    <%-- <footer>
        <div class="footer-area pt-100 pb-100 clearfix minus-30">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-3 col-sm-6">
                        <div class="footer-widget">
                            <div class="widget-title">
                                <a href="index.html"><img src="${pageContext.request.contextPath }/resources/zhaopin/assets/images/footer-logo.png" alt="image" /></a>
                            </div>
                            <p>Cras semper auctor neque vitae tempus quam pellentesque nec nam aliquam sem et tortor consequat id porta nibh venenatis cras sed felis eget </p>
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
                            <p>&copy; Copyright - 2019 trabajo - Designed By <a href="http://www.jq22.com/">Themeix</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer> --%>
    <!--footer-area-end -->
    <!-- ==================== START PRELOADER HERE ===================================== -->
    <div class="preloader" id="preloader">
        <div class="lds-ripple">
            <div></div>
            <div></div>
        </div>
    </div>
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
      
      <script type="text/javascript">
      	var username = "${current_user.username}";
      	$("#username").attr("value",username);
      	
      	function submitOver() {
			alert("提交成功");
			/* window.location.href="${pageContext.request.contextPath }/Application2"; */
			location.reload();
		}
      </script>

</body>

</html>