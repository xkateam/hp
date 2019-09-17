<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!doctype html>
<html class="no-js" lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Home</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

		<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath }/resources/course/assets/img/favicon.ico">
        <!-- Place favicon.ico in the root directory -->
		<!-- CSS here -->
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/course/assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/course/assets/css/animate.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/course/assets/css/magnific-popup.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/course/assets/css/fontawesome-all.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/course/assets/css/elegant-icon.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/course/assets/css/nice-select.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/course/assets/css/flaticon.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/course/assets/css/owl.carousel.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/course/assets/css/meanmenu.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/course/assets/css/slick.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/course/assets/css/default.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/course/assets/css/style.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/course/assets/css/responsive.css">
    </head>
    <body>

        <!-- preloader -->
        <div id="preloader">
            <div class="preloader">
                <span></span>
                <span></span>
            </div>
        </div>
        <!-- preloader end  -->

        <!-- header -->
        <header>
            <div class="header-top d-none d-md-block">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-8">
                            <div class="header-contact text-center text-lg-left">
                                <ul>
                                    <li><i class="icon_phone"></i> +111 2222 444</li>
                                    <li><i class="icon_mail_alt"></i> hpxiaozu@gmail.com</li>
                                    <li><i class="icon_pin_alt"></i> 中国天津</li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-4 d-none d-lg-block">
                            <div class="header-social text-right">
                                <a href="#"><i class="social_facebook"></i></a>
                                <a href="#"><i class="social_twitter"></i></a>
                                <a href="#"><i class="social_googleplus"></i></a>
                                <a href="#"><i class="social_dribbble"></i></a>
                                <a href="#"><i class="social_linkedin"></i></a>
                                <a href="#"><i class="social_skype"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="header-sticky" class="menu-area">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-3">
                            <div class="logo">
                                <a href="index.html"><img src="${pageContext.request.contextPath }/resources/course/assets/img/logo/logo.png" alt="Logo"></a>
                            </div>
                        </div>
                        
                        <div class="col-lg-1 d-none d-lg-block">
                            <div class="menu-icon text-right">
                                <a href="#" class="search-modal" data-toggle="modal" data-target="#search-modal"><i class="icon_search"></i></a>
                            </div>
                            <!-- Modal Search -->
                            <div class="modal fade" id="search-modal" tabindex="-1" role="dialog" aria-hidden="true">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <form>
                                            <input type="text" placeholder="Search here...">
                                            <button><i class="fas fa-search"></i></button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="mobile-menu"></div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!-- header-end -->

        <!-- main-area -->
        <main>
            <!-- slider-area -->
                <section class="slider-area slider-bg" data-background="${pageContext.request.contextPath }/resources/course/assets/img/slider/slider_bg01.jpg">
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-10">
                                <div class="slider-content pt-165 text-center">
                                    <h2 class="wow fadeInUp" data-wow-delay="0s">每天学习多一点，安心教育资源系统为您保驾护航</h2>
                                 
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            <!-- slider-area-end -->
            <!-- features-area -->
            <section class="features-area features-mt pb-140">
                <div class="container">
                    <div class="row no-gutters">
                        <div class="col-lg-4 col-md-6">
                            <div class="single-features">
                                <div class="features-icon mb-25">
                                    <img src="${pageContext.request.contextPath }/resources/course/assets/img/icon/features_icon01.png" alt="icon">
                                </div>
                                <div class="features-content">
                                    <h4>初中板块</h4>
                                    <p>设有初中语文、初中数学、初中英语、初中生物、初中物理、初中化学</p>
                                    <div class="features-more">
                                        <a href="${pageContext.request.contextPath }/student/ChuZhong">Readmore<i class="arrow_right"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="single-features green">
                                <div class="features-icon mb-25">
                                    <img src="${pageContext.request.contextPath }/resources/course/assets/img/icon/features_icon02.png" alt="icon">
                                </div>
                                <div class="features-content">
                                    <h4>高中板块</h4>
                                    <p>设有高中语文、高中数学、高中英语、高中生物、高中物理、高中化学</p>
                                    <div class="features-more">
                                        <a href="${pageContext.request.contextPath }/student/GaoZhong">Read more <i class="arrow_right"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="single-features red">
                                <div class="features-icon mb-25">
                                    <img src="${pageContext.request.contextPath }/resources/course/assets/img/icon/features_icon03.png" alt="icon">
                                </div>
                                <div class="features-content">
                                    <h4>大学生辅导</h4>
                                    <p>在校大学生兼职进行辅导</p>
                                    <div class="features-more">
                                        <a href="${pageContext.request.contextPath }/student/DaXue">Read more <i class="arrow_right"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- features-area-end -->
            <!-- courses-area -->
            <section class="courses-area pb-150">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-lg-6">
                            <div class="section-title mb-30 text-center">
                                <h2>我们的特色课程</h2>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="tab course-tab">
                                <ul class="tabs text-center">
                                    <li class="current"><a href="#">高中英语</a></li>
                                    <li><a href="#">高中数学</a></li>
                                    <li><a href="#">初中物理</a></li>
                                    <li><a href="#">高中化学</a></li>
                                    <li><a href="#">初中数学</a></li>
                                </ul>
                                <div class="tab_content">
                                    <div class="tabs_item">
                                        <div class="projects-carousel owl-carousel">
                                            <div class="single-course mb-30">
                                                <div class="course-thumb">
                                                    <img src="${pageContext.request.contextPath }/resources/course/assets/img/course/1.jpg" alt="img">
                                                </div>
                                                <div class="course-content">
                                                    <div class="course-fee">Free</div>
                                                    <div class="c-review mb-20">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star-half_alt"></i>
                                                        <span>(222 Reviews)</span>
                                                    </div>
                                                    <h3><a href="#">UI UX design basic to dvance design course</a></h3>
                                                    <div class="course-meta">
                                                        <div class="c-author">
                                                            <p>By <a href="#">Ibraim emran</a></p>
                                                        </div>
                                                        <ul>
                                                            <li><i class="icon_heart"></i>288</li>
                                                            <li><i class=" icon_profile"></i> 158</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="single-course mb-30">
                                                <div class="course-thumb">
                                                    <img src="${pageContext.request.contextPath }/resources/course/assets/img/course/2.jpg" alt="img">
                                                </div>
                                                <div class="course-content">
                                                    <div class="course-fee">Free</div>
                                                    <div class="c-review mb-20">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star-half_alt"></i>
                                                        <span>(222 Reviews)</span>
                                                    </div>
                                                    <h3><a href="#">Mastering illustrator: 10 tips &
                                                    tricks to speed your workflow</a></h3>
                                                    <div class="course-meta">
                                                        <div class="c-author">
                                                            <p>By <a href="#">Ibraim emran</a></p>
                                                        </div>
                                                        <ul>
                                                            <li><i class="icon_heart"></i>288</li>
                                                            <li><i class=" icon_profile"></i> 158</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="single-course mb-30">
                                                <div class="course-thumb">
                                                    <img src="${pageContext.request.contextPath }/resources/course/assets/img/course/3.jpg" alt="img">
                                                </div>
                                                <div class="course-content">
                                                    <div class="course-fee">Free</div>
                                                    <div class="c-review mb-20">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star-half_alt"></i>
                                                        <span>(222 Reviews)</span>
                                                    </div>
                                                    <h3><a href="#">Creative writing: crafting
                                                    personal essays with impact</a></h3>
                                                    <div class="course-meta">
                                                        <div class="c-author">
                                                            <p>By <a href="#">Ibraim emran</a></p>
                                                        </div>
                                                        <ul>
                                                            <li><i class="icon_heart"></i>288</li>
                                                            <li><i class=" icon_profile"></i> 158</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="single-course mb-30">
                                                <div class="course-thumb">
                                                    <img src="${pageContext.request.contextPath }/resources/course/assets/img/course/4.jpg" alt="img">
                                                </div>
                                                <div class="course-content">
                                                    <div class="course-fee">Free</div>
                                                    <div class="c-review mb-20">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star-half_alt"></i>
                                                        <span>(222 Reviews)</span>
                                                    </div>
                                                    <h3><a href="#">UI UX design basic to dvance design course</a></h3>
                                                    <div class="course-meta">
                                                        <div class="c-author">
                                                            <p>By <a href="#">Ibraim emran</a></p>
                                                        </div>
                                                        <ul>
                                                            <li><i class="icon_heart"></i>288</li>
                                                            <li><i class=" icon_profile"></i> 158</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="single-course mb-30">
                                                <div class="course-thumb">
                                                    <img src="${pageContext.request.contextPath }/resources/course/assets/img/course/5.jpg" alt="img">
                                                </div>
                                                <div class="course-content">
                                                    <div class="course-fee">Free</div>
                                                    <div class="c-review mb-20">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star-half_alt"></i>
                                                        <span>(222 Reviews)</span>
                                                    </div>
                                                    <h3><a href="#">UI UX design basic to dvance design course</a></h3>
                                                    <div class="course-meta">
                                                        <div class="c-author">
                                                            <p>By <a href="#">Ibraim emran</a></p>
                                                        </div>
                                                        <ul>
                                                            <li><i class="icon_heart"></i>288</li>
                                                            <li><i class=" icon_profile"></i> 158</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tabs_item">
                                        <div class="projects-carousel owl-carousel">
                                            <div class="single-course mb-30">
                                                <div class="course-thumb">
                                                    <img src="${pageContext.request.contextPath }/resources/course/assets/img/course/6.jpg" alt="img">
                                                </div>
                                                <div class="course-content">
                                                    <div class="course-fee">Free</div>
                                                    <div class="c-review mb-20">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star-half_alt"></i>
                                                        <span>(222 Reviews)</span>
                                                    </div>
                                                    <h3><a href="#">UI UX design basic to dvance design course</a></h3>
                                                    <div class="course-meta">
                                                        <div class="c-author">
                                                            <p>By <a href="#">Ibraim emran</a></p>
                                                        </div>
                                                        <ul>
                                                            <li><i class="icon_heart"></i>288</li>
                                                            <li><i class=" icon_profile"></i> 158</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="single-course mb-30">
                                                <div class="course-thumb">
                                                    <img src="${pageContext.request.contextPath }/resources/course/assets/img/course/1.jpg" alt="img">
                                                </div>
                                                <div class="course-content">
                                                    <div class="course-fee">Free</div>
                                                    <div class="c-review mb-20">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star-half_alt"></i>
                                                        <span>(222 Reviews)</span>
                                                    </div>
                                                    <h3><a href="#">Mastering illustrator: 10 tips &
                                                    tricks to speed your workflow</a></h3>
                                                    <div class="course-meta">
                                                        <div class="c-author">
                                                            <p>By <a href="#">Ibraim emran</a></p>
                                                        </div>
                                                        <ul>
                                                            <li><i class="icon_heart"></i>288</li>
                                                            <li><i class=" icon_profile"></i> 158</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="single-course mb-30">
                                                <div class="course-thumb">
                                                    <img src="${pageContext.request.contextPath }/resources/course/assets/img/course/2.jpg" alt="img">
                                                </div>
                                                <div class="course-content">
                                                    <div class="course-fee">Free</div>
                                                    <div class="c-review mb-20">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star-half_alt"></i>
                                                        <span>(222 Reviews)</span>
                                                    </div>
                                                    <h3><a href="#">Creative writing: crafting
                                                    personal essays with impact</a></h3>
                                                    <div class="course-meta">
                                                        <div class="c-author">
                                                            <p>By <a href="#">Ibraim emran</a></p>
                                                        </div>
                                                        <ul>
                                                            <li><i class="icon_heart"></i>288</li>
                                                            <li><i class=" icon_profile"></i> 158</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="single-course mb-30">
                                                <div class="course-thumb">
                                                    <img src="${pageContext.request.contextPath }/resources/course/assets/img/course/3.jpg" alt="img">
                                                </div>
                                                <div class="course-content">
                                                    <div class="course-fee">Free</div>
                                                    <div class="c-review mb-20">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star-half_alt"></i>
                                                        <span>(222 Reviews)</span>
                                                    </div>
                                                    <h3><a href="#">UI UX design basic to dvance design course</a></h3>
                                                    <div class="course-meta">
                                                        <div class="c-author">
                                                            <p>By <a href="#">Ibraim emran</a></p>
                                                        </div>
                                                        <ul>
                                                            <li><i class="icon_heart"></i>288</li>
                                                            <li><i class=" icon_profile"></i> 158</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="single-course mb-30">
                                                <div class="course-thumb">
                                                    <img src="${pageContext.request.contextPath }/resources/course/assets/img/course/4.jpg" alt="img">
                                                </div>
                                                <div class="course-content">
                                                    <div class="course-fee">Free</div>
                                                    <div class="c-review mb-20">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star-half_alt"></i>
                                                        <span>(222 Reviews)</span>
                                                    </div>
                                                    <h3><a href="#">UI UX design basic to dvance design course</a></h3>
                                                    <div class="course-meta">
                                                        <div class="c-author">
                                                            <p>By <a href="#">Ibraim emran</a></p>
                                                        </div>
                                                        <ul>
                                                            <li><i class="icon_heart"></i>288</li>
                                                            <li><i class=" icon_profile"></i> 158</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tabs_item">
                                        <div class="projects-carousel owl-carousel">
                                            <div class="single-course mb-30">
                                                <div class="course-thumb">
                                                    <img src="${pageContext.request.contextPath }/resources/course/assets/img/course/5.jpg" alt="img">
                                                </div>
                                                <div class="course-content">
                                                    <div class="course-fee">Free</div>
                                                    <div class="c-review mb-20">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star-half_alt"></i>
                                                        <span>(222 Reviews)</span>
                                                    </div>
                                                    <h3><a href="#">UI UX design basic to dvance design course</a></h3>
                                                    <div class="course-meta">
                                                        <div class="c-author">
                                                            <p>By <a href="#">Ibraim emran</a></p>
                                                        </div>
                                                        <ul>
                                                            <li><i class="icon_heart"></i>288</li>
                                                            <li><i class=" icon_profile"></i> 158</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="single-course mb-30">
                                                <div class="course-thumb">
                                                    <img src="${pageContext.request.contextPath }/resources/course/assets/img/course/6.jpg" alt="img">
                                                </div>
                                                <div class="course-content">
                                                    <div class="course-fee">Free</div>
                                                    <div class="c-review mb-20">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star-half_alt"></i>
                                                        <span>(222 Reviews)</span>
                                                    </div>
                                                    <h3><a href="#">Mastering illustrator: 10 tips &
                                                    tricks to speed your workflow</a></h3>
                                                    <div class="course-meta">
                                                        <div class="c-author">
                                                            <p>By <a href="#">Ibraim emran</a></p>
                                                        </div>
                                                        <ul>
                                                            <li><i class="icon_heart"></i>288</li>
                                                            <li><i class=" icon_profile"></i> 158</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="single-course mb-30">
                                                <div class="course-thumb">
                                                    <img src="${pageContext.request.contextPath }/resources/course/assets/img/course/1.jpg" alt="img">
                                                </div>
                                                <div class="course-content">
                                                    <div class="course-fee">Free</div>
                                                    <div class="c-review mb-20">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star-half_alt"></i>
                                                        <span>(222 Reviews)</span>
                                                    </div>
                                                    <h3><a href="#">Creative writing: crafting
                                                    personal essays with impact</a></h3>
                                                    <div class="course-meta">
                                                        <div class="c-author">
                                                            <p>By <a href="#">Ibraim emran</a></p>
                                                        </div>
                                                        <ul>
                                                            <li><i class="icon_heart"></i>288</li>
                                                            <li><i class=" icon_profile"></i> 158</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="single-course mb-30">
                                                <div class="course-thumb">
                                                    <img src="${pageContext.request.contextPath }/resources/course/assets/img/course/2.jpg" alt="img">
                                                </div>
                                                <div class="course-content">
                                                    <div class="course-fee">Free</div>
                                                    <div class="c-review mb-20">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star-half_alt"></i>
                                                        <span>(222 Reviews)</span>
                                                    </div>
                                                    <h3><a href="#">UI UX design basic to dvance design course</a></h3>
                                                    <div class="course-meta">
                                                        <div class="c-author">
                                                            <p>By <a href="#">Ibraim emran</a></p>
                                                        </div>
                                                        <ul>
                                                            <li><i class="icon_heart"></i>288</li>
                                                            <li><i class=" icon_profile"></i> 158</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="single-course mb-30">
                                                <div class="course-thumb">
                                                    <img src="${pageContext.request.contextPath }/resources/course/assets/img/course/6.jpg" alt="img">
                                                </div>
                                                <div class="course-content">
                                                    <div class="course-fee">Free</div>
                                                    <div class="c-review mb-20">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star-half_alt"></i>
                                                        <span>(222 Reviews)</span>
                                                    </div>
                                                    <h3><a href="#">UI UX design basic to dvance design course</a></h3>
                                                    <div class="course-meta">
                                                        <div class="c-author">
                                                            <p>By <a href="#">Ibraim emran</a></p>
                                                        </div>
                                                        <ul>
                                                            <li><i class="icon_heart"></i>288</li>
                                                            <li><i class=" icon_profile"></i> 158</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tabs_item">
                                        <div class="projects-carousel owl-carousel">
                                            <div class="single-course mb-30">
                                                <div class="course-thumb">
                                                    <img src="${pageContext.request.contextPath }/resources/course/assets/img/course/5.jpg" alt="img">
                                                </div>
                                                <div class="course-content">
                                                    <div class="course-fee">Free</div>
                                                    <div class="c-review mb-20">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star-half_alt"></i>
                                                        <span>(222 Reviews)</span>
                                                    </div>
                                                    <h3><a href="#">UI UX design basic to dvance design course</a></h3>
                                                    <div class="course-meta">
                                                        <div class="c-author">
                                                            <p>By <a href="#">Ibraim emran</a></p>
                                                        </div>
                                                        <ul>
                                                            <li><i class="icon_heart"></i>288</li>
                                                            <li><i class=" icon_profile"></i> 158</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="single-course mb-30">
                                                <div class="course-thumb">
                                                    <img src="${pageContext.request.contextPath }/resources/course/assets/img/course/4.jpg" alt="img">
                                                </div>
                                                <div class="course-content">
                                                    <div class="course-fee">Free</div>
                                                    <div class="c-review mb-20">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star-half_alt"></i>
                                                        <span>(222 Reviews)</span>
                                                    </div>
                                                    <h3><a href="#">Mastering illustrator: 10 tips &
                                                    tricks to speed your workflow</a></h3>
                                                    <div class="course-meta">
                                                        <div class="c-author">
                                                            <p>By <a href="#">Ibraim emran</a></p>
                                                        </div>
                                                        <ul>
                                                            <li><i class="icon_heart"></i>288</li>
                                                            <li><i class=" icon_profile"></i> 158</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="single-course mb-30">
                                                <div class="course-thumb">
                                                    <img src="${pageContext.request.contextPath }/resources/course/assets/img/course/3.jpg" alt="img">
                                                </div>
                                                <div class="course-content">
                                                    <div class="course-fee">Free</div>
                                                    <div class="c-review mb-20">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star-half_alt"></i>
                                                        <span>(222 Reviews)</span>
                                                    </div>
                                                    <h3><a href="#">Creative writing: crafting
                                                    personal essays with impact</a></h3>
                                                    <div class="course-meta">
                                                        <div class="c-author">
                                                            <p>By <a href="#">Ibraim emran</a></p>
                                                        </div>
                                                        <ul>
                                                            <li><i class="icon_heart"></i>288</li>
                                                            <li><i class=" icon_profile"></i> 158</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="single-course mb-30">
                                                <div class="course-thumb">
                                                    <img src="${pageContext.request.contextPath }/resources/course/assets/img/course/6.jpg" alt="img">
                                                </div>
                                                <div class="course-content">
                                                    <div class="course-fee">Free</div>
                                                    <div class="c-review mb-20">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star-half_alt"></i>
                                                        <span>(222 Reviews)</span>
                                                    </div>
                                                    <h3><a href="#">UI UX design basic to dvance design course</a></h3>
                                                    <div class="course-meta">
                                                        <div class="c-author">
                                                            <p>By <a href="#">Ibraim emran</a></p>
                                                        </div>
                                                        <ul>
                                                            <li><i class="icon_heart"></i>288</li>
                                                            <li><i class=" icon_profile"></i> 158</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="single-course mb-30">
                                                <div class="course-thumb">
                                                    <img src="${pageContext.request.contextPath }/resources/course/assets/img/course/2.jpg" alt="img">
                                                </div>
                                                <div class="course-content">
                                                    <div class="course-fee">Free</div>
                                                    <div class="c-review mb-20">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star-half_alt"></i>
                                                        <span>(222 Reviews)</span>
                                                    </div>
                                                    <h3><a href="#">UI UX design basic to dvance design course</a></h3>
                                                    <div class="course-meta">
                                                        <div class="c-author">
                                                            <p>By <a href="#">Ibraim emran</a></p>
                                                        </div>
                                                        <ul>
                                                            <li><i class="icon_heart"></i>288</li>
                                                            <li><i class=" icon_profile"></i> 158</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tabs_item">
                                        <div class="projects-carousel owl-carousel">
                                            <div class="single-course mb-30">
                                                <div class="course-thumb">
                                                    <img src="${pageContext.request.contextPath }/resources/course/assets/img/course/5.jpg" alt="img">
                                                </div>
                                                <div class="course-content">
                                                    <div class="course-fee">Free</div>
                                                    <div class="c-review mb-20">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star-half_alt"></i>
                                                        <span>(222 Reviews)</span>
                                                    </div>
                                                    <h3><a href="#">UI UX design basic to dvance design course</a></h3>
                                                    <div class="course-meta">
                                                        <div class="c-author">
                                                            <p>By <a href="#">Ibraim emran</a></p>
                                                        </div>
                                                        <ul>
                                                            <li><i class="icon_heart"></i>288</li>
                                                            <li><i class=" icon_profile"></i> 158</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="single-course mb-30">
                                                <div class="course-thumb">
                                                    <img src="${pageContext.request.contextPath }/resources/course/assets/img/course/3.jpg" alt="img">
                                                </div>
                                                <div class="course-content">
                                                    <div class="course-fee">Free</div>
                                                    <div class="c-review mb-20">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star-half_alt"></i>
                                                        <span>(222 Reviews)</span>
                                                    </div>
                                                    <h3><a href="#">Mastering illustrator: 10 tips &
                                                    tricks to speed your workflow</a></h3>
                                                    <div class="course-meta">
                                                        <div class="c-author">
                                                            <p>By <a href="#">Ibraim emran</a></p>
                                                        </div>
                                                        <ul>
                                                            <li><i class="icon_heart"></i>288</li>
                                                            <li><i class=" icon_profile"></i> 158</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="single-course mb-30">
                                                <div class="course-thumb">
                                                    <img src="${pageContext.request.contextPath }/resources/course/assets/img/course/1.jpg" alt="img">
                                                </div>
                                                <div class="course-content">
                                                    <div class="course-fee">Free</div>
                                                    <div class="c-review mb-20">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star-half_alt"></i>
                                                        <span>(222 Reviews)</span>
                                                    </div>
                                                    <h3><a href="#">Creative writing: crafting
                                                    personal essays with impact</a></h3>
                                                    <div class="course-meta">
                                                        <div class="c-author">
                                                            <p>By <a href="#">Ibraim emran</a></p>
                                                        </div>
                                                        <ul>
                                                            <li><i class="icon_heart"></i>288</li>
                                                            <li><i class=" icon_profile"></i> 158</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="single-course mb-30">
                                                <div class="course-thumb">
                                                    <img src="${pageContext.request.contextPath }/resources/course/assets/img/course/4.jpg" alt="img">
                                                </div>
                                                <div class="course-content">
                                                    <div class="course-fee">Free</div>
                                                    <div class="c-review mb-20">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star-half_alt"></i>
                                                        <span>(222 Reviews)</span>
                                                    </div>
                                                    <h3><a href="#">UI UX design basic to dvance design course</a></h3>
                                                    <div class="course-meta">
                                                        <div class="c-author">
                                                            <p>By <a href="#">Ibraim emran</a></p>
                                                        </div>
                                                        <ul>
                                                            <li><i class="icon_heart"></i>288</li>
                                                            <li><i class=" icon_profile"></i> 158</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="single-course mb-30">
                                                <div class="course-thumb">
                                                    <img src="${pageContext.request.contextPath }/resources/course/assets/img/course/2.jpg" alt="img">
                                                </div>
                                                <div class="course-content">
                                                    <div class="course-fee">Free</div>
                                                    <div class="c-review mb-20">
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star"></i>
                                                        <i class="icon_star-half_alt"></i>
                                                        <span>(222 Reviews)</span>
                                                    </div>
                                                    <h3><a href="#">UI UX design basic to dvance design course</a></h3>
                                                    <div class="course-meta">
                                                        <div class="c-author">
                                                            <p>By <a href="#">Ibraim emran</a></p>
                                                        </div>
                                                        <ul>
                                                            <li><i class="icon_heart"></i>288</li>
                                                            <li><i class=" icon_profile"></i> 158</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="courses-btn mt-20 text-center">
                            <a href="#" class="btn">Browse our all courses</a>
                        </div>
                    </div>
                </div>
            </section>
            <!-- courses-area-end -->
            <!-- reg-area -->
           
            <!-- reg-area-end -->
          
            <!-- testimonial-area-end -->
            <!-- blog-area -->
            <section class="blog-area pt-140">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-xl-6 col-lg-7 col-md-10">
                            <div class="section-title mb-45 text-center">
                                <h2>安心教育资源管理系统课外阅读</h2>
                              
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-6 wow fadeInLeft" data-wow-delay=".3s">
                            <div class="single-side-post">
                                <div class="side-post-thumb">
                                    <img src="${pageContext.request.contextPath }/resources/course/assets/img/blog/blog_jimg01.jpg" alt="img">
                                </div>
                                <div class="side-post-content">
                                    <div class="post-date">
                                        <span>18 Dec 2018</span>
                                    </div>
                                    <h5><a href="#">Why you need advance developmemt
                                    process course?</a></h5>
                                    <a href="#">Read more <i class="arrow_carrot-2right"></i></a>
                                </div>
                            </div>
                            <div class="single-side-post">
                                <div class="side-post-thumb">
                                    <img src="${pageContext.request.contextPath }/resources/course/assets/img/blog/blog_jimg02.jpg" alt="img">
                                </div>
                                <div class="side-post-content">
                                    <div class="post-date">
                                        <span>18 Dec 2018</span>
                                    </div>
                                    <h5><a href="#">Why you need advance developmemt
                                    process course?</a></h5>
                                    <a href="#">Read more <i class="arrow_carrot-2right"></i></a>
                                </div>
                            </div>
                            <div class="single-side-post">
                                <div class="side-post-thumb">
                                    <img src="${pageContext.request.contextPath }/resources/course/assets/img/blog/blog_jimg03.jpg" alt="img">
                                </div>
                                <div class="side-post-content">
                                    <div class="post-date">
                                        <span>18 Dec 2018</span>
                                    </div>
                                    <h5><a href="#">Why you need advance developmemt
                                    process course?</a></h5>
                                    <a href="#">Read more <i class="arrow_carrot-2right"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-10 wow fadeInRight" data-wow-delay=".3s">
                            <div class="side-event-active">
                                <div class="single-slide-event">
                                    <img src="${pageContext.request.contextPath }/resources/course/assets/img/blog/blog_jimg04.jpg" alt="img">
                                    <div class="overlay-event">
                                        <div class="slide-event-date">
                                            <h4>20</h4>
                                            <span>March</span>
                                        </div>
                                        <div class="slide-event-content">
                                            <h3><a href="#">BASIS international awardnight</a></h3>
                                            <ul>
                                                <li class="event-time">
                                                    <i class="icon_clock_alt"></i>
                                                    <span>10.00 am - 5.00 pm</span>
                                                </li>
                                                <li class="event-place">
                                                    <i class="icon_pin_alt"></i>
                                                    <span>LGED bahban, Dhanmondi, Dhaka 1125</span>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="single-slide-event">
                                    <img src="${pageContext.request.contextPath }/resources/course/assets/img/blog/blog_jimg04.jpg" alt="img">
                                    <div class="overlay-event">
                                        <div class="slide-event-date">
                                            <h4>20</h4>
                                            <span>March</span>
                                        </div>
                                        <div class="slide-event-content">
                                            <h3><a href="#">BASIS international awardnight</a></h3>
                                            <ul>
                                                <li class="event-time">
                                                    <i class="icon_clock_alt"></i>
                                                    <span>10.00 am - 5.00 pm</span>
                                                </li>
                                                <li class="event-place">
                                                    <i class="icon_pin_alt"></i>
                                                    <span>LGED bahban, Dhanmondi, Dhaka 1125</span>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- blog-area-end -->
           
            <!-- cta-area-end -->
        </main>
        <!-- main-area-end -->

        <!-- footer -->
        <footer>
            <div class="footer-wrap theme-bg pb-45 pt-95">
                <div class="container">
                    <div class="row justify-content-between">
                        <div class="col-lg-4 col-md-12 col-sm-6">
                            <div class="footer-widget mb-50">
                                <div class="fw-title mb-30">
                                    <h3>About us</h3>
                                </div>
                                <div class="footer-trext mb-25">
                                    <p>Lorem ipsum dummy text are usually
                                    use in the print and website das.</p>
                                </div>
                                <div class="footer-contact">
                                    <ul>
                                        <li>
                                            <i class="icon_phone"></i>
                                            <span>+387 64 8459 254 68</span>
                                        </li>
                                        <li>
                                            <i class="icon_mail_alt"></i>
                                            <span>info.manager@gmail.com</span>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-2 col-lg-3 col-md-4 col-sm-6">
                            <div class="footer-widget mb-50">
                                <div class="fw-title mb-30">
                                    <h3>Recommend</h3>
                                </div>
                                <div class="fw-link">
                                    <ul>
                                        <li><a href="#">Digital marketing</a></li>
                                        <li><a href="#">SEO</a></li>
                                        <li><a href="#">Pay per click</a></li>
                                        <li><a href="#">Wordpress</a></li>
                                        <li><a href="#">Socaial media</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-2 col-lg-3 col-md-4 col-sm-6">
                            <div class="footer-widget mb-50">
                                <div class="fw-title mb-30">
                                    <h3>Quick links</h3>
                                </div>
                                <div class="fw-link">
                                    <ul>
                                        <li><a href="#">Privacy policy</a></li>
                                        <li><a href="#">Contact us</a></li>
                                        <li><a href="#">Lorem ispum</a></li>
                                        <li><a href="#">Dummy content</a></li>
                                        <li><a href="#">Privacy policy</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-md-4 col-sm-6">
                            <div class="footer-widget pl-40 mb-50">
                                <div class="fw-title mb-30">
                                    <h3>Support or policy</h3>
                                </div>
                                <div class="fw-link">
                                    <ul>
                                        <li><a href="#">Documentation</a></li>
                                        <li><a href="#">Forums</a></li>
                                        <li><a href="#">Language packs</a></li>
                                        <li><a href="#">Release Status</a></li>
                                        <li><a href="#">Lorem ipsum</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="copyright-area">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="copyright-text text-center text-md-left">
                                <p>Copyright &copy; 2019.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>
                            </div>
                        </div>
                        <div class="col-md-6 d-none d-md-block">
                            <div class="copyright-link text-right">
                                <ul>
                                    <li><a href="#">Lorem</a></li>
                                    <li><a href="#">dummy</a></li>
                                    <li><a href="#">Lorem</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!-- footer-end -->




		<!-- JS here -->
        <script src="${pageContext.request.contextPath }/resources/course/assets/js/vendor/jquery-1.12.4.min.js"></script>
        <script src="${pageContext.request.contextPath }/resources/course/assets/js/popper.min.js"></script>
        <script src="${pageContext.request.contextPath }/resources/course/assets/js/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath }/resources/course/assets/js/jquery.meanmenu.min.js"></script>
        <script src="${pageContext.request.contextPath }/resources/course/assets/js/slick.min.js"></script>
        <script src="${pageContext.request.contextPath }/resources/course/assets/js/ajax-form.js"></script>
        <script src="${pageContext.request.contextPath }/resources/course/assets/js/wow.min.js"></script>
        <script src="${pageContext.request.contextPath }/resources/course/assets/js/owl.carousel.min.js"></script>
        <script src="${pageContext.request.contextPath }/resources/course/assets/js/jquery.countdown.min.js"></script>
        <script src="${pageContext.request.contextPath }/resources/course/assets/js/jquery.counterup.min.js"></script>
        <script src="${pageContext.request.contextPath }/resources/course/assets/js/jquery.waypoints.min.js"></script>
        <script src="${pageContext.request.contextPath }/resources/course/assets/js/jquery.nice-select.min.js"></script>
        <script src="${pageContext.request.contextPath }/resources/course/assets/js/jquery.scrollUp.min.js"></script>
        <script src="${pageContext.request.contextPath }/resources/course/assets/js/jquery.magnific-popup.min.js"></script>
        <script src="${pageContext.request.contextPath }/resources/course/assets/js/plugins.js"></script>
        <script src="${pageContext.request.contextPath }/resources/course/assets/js/main.js"></script>
    </body>
</html>


