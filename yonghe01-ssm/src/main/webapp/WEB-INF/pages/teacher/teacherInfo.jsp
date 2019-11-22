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
                                <li><a class="nav-link" href="${pageContext.request.contextPath }/teacher/Application2">求职申请</a>
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
                        <h1>个人信息</h1>
                        <ul class="breadcumb list-inline">
                            <li class="list-inline-item"><a href="${pageContext.request.contextPath }/teacher/teacherIndex">首页</a></li>
                            <li class="list-inline-item">信息</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <main class="main-content-area pb-100 pt-100 clearfix">
        <div class="submit-form-area">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="submit-form form-bg">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="info-title">
                                        <h4>个人信息</h4>
                                    </div>
                                </div>
							 
								
                                <div class="col-md-6">
                                    <div class="submit-form">
                                        <form action="#">
                                            <div class="form-info">
                                                <div class="info-field">
                                                    <div class="input-group mb-3">
                                                         <div class="custom-file">
                                                         
                                                            <input type="file" class="custom-file-input"/> 
                                                            
                                                            <label class="custom-file-label">上传你的照片</label>
                                                        </div>
                                                    </div>
                                                    <p>
                                                        <input id="teacher_name" name="teacher_name" class="form-control" type="text" placeholder="姓名" />
                                                    </p> 
                                                    <p>
                                                        <input id="email" name="email" type="Email" placeholder="邮箱" />
                                                    </p>
                                                    <p>
                                                        <input  id="age" name="age" class="form-control" type="text" placeholder="年龄" />
                                                    </p>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-info">
                                        <div class="info-field">
                                            <p>
                                                <input id="teacherGrade" name="teacherGrade" class="form-control" type="text" placeholder="教师等级" />
                                            </p>
                                             <p>
                                                <input id="gender" name="gender" class="form-control" type="text" placeholder="性别" />
                                            </p> 
                                            <p>
                                                <input id="phone" name="phone" class="form-control" type="text" placeholder="手机号" />
                                            </p>
                                            <p>
                                                <input id="city_id" name="city_id" class="form-control" type="text" placeholder="家庭住址" />
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12">
								<textarea class="form-control" id="aboutMe" name="aboutMe" rows="7" placeholder="自我介绍"></textarea>
                                    
                                </div>
                            </div>
                             
                            
                                    <button type="submit" onclick="saveAccountInfo()" class="btn btn-primary job-post-btn btn-lg btn-block mt-2">提交</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
    
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


var account_id = null;
$(function(){
    	
    init();
    
});
function init(){
	var username = "${current_user.username}";
	console.log(username);
		
	$.ajax({
		url:'${pageContext.request.contextPath}/teacher/selectTeacherInfoByusername',
		cache: false,
		async: false,
		type:'POST',
		data:{'username':username},
		
		success:function(data){
			console.log(data);
			var teacher_name = data[0].teacher_name;
			var age =data[0].age;
			var gender = data[0].gender;
			var phone = data[0].phone;
			var email = data[0].email;
			var aboutMe = data[0].aboutMe;
			var city_id = data[0].city_id;
			var teacherGrade = data[0].teacherGrade;
			
			
			$("#teacher_name").attr("value", teacher_name);
			$("#age").attr("value", age);
			$("#gender").attr("value", gender);
			$("#teacherGrade").attr("value", teacherGrade);
			$("#city_id").attr("value", city_id);
			$("#phone").attr("value", phone);
			$("#email").attr("value", email);
			$("#aboutMe").val(aboutMe);
			
		}
		
		
	});
}
	
function saveAccountInfo(){
	
				var teacher_name =$("#teacher_name").val();
				var age =$("#age").val();
				var gender =$("#gender").val();
				var phone =$("#phone").val();
				var email =$("#email").val();
				var teacherGrade =$("#teacherGrade").val();
				var city_id =$("#city_id").val();
				var aboutMe =$("#aboutMe").val();
				var username = "${current_user.username}";
				 $.ajax(
	               {
	             	
	            	type : "post",
	    			data :{

							'username':username,
							 'teacher_name':teacher_name,
							 'gender':gender,
							 'phone':phone,
							 'email':email,
							 'age':age,
							 'city_id':city_id,
							 'teacherGrade':teacherGrade,
							 'aboutMe':aboutMe
					},
	                url: "${pageContext.request.contextPath }/teacher/updateTeacherInfoByusername",
	                success: function (result) {
	                    console.info(result);
	                    console.info("进去了保存信息得页面");
	                    alert("保存成功"); 
	                    /* window.location.href="${pageContext.request.contextPath }/teacherInfo"; */

	                },
	                
	            });
	
	
}

</script>

</body>

</html>
