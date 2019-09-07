<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8" />
	<link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
	<link rel="icon" type="image/png" sizes="96x96" href="assets/img/favicon.png">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title></title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />

    <!-- Bootstrap core CSS     -->
    <link href="${pageContext.request.contextPath }/resources/TIM_admin/assets/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Animation library for notifications   -->
    <link href="${pageContext.request.contextPath }/resources/TIM_admin/assets/css/animate.min.css" rel="stylesheet"/>

    <!--  Paper Dashboard core CSS    -->
    <link href="${pageContext.request.contextPath }/resources/TIM_admin/assets/css/paper-dashboard.css" rel="stylesheet"/>

    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="${pageContext.request.contextPath }/resources/TIM_admin/assets/css/demo.css" rel="stylesheet" />

    <!--  Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Muli:400,300' rel='stylesheet' type='text/css'>
    <link href="${pageContext.request.contextPath }/resources/TIM_admin/assets/css/themify-icons.css" rel="stylesheet">

</head>
<body">

<div class="wrapper">
	<div class="sidebar" data-background-color="white" data-active-color="danger">

    <!--
		Tip 1: you can change the color of the sidebar's background using: data-background-color="white | black"
		Tip 2: you can change the color of the active button using the data-active-color="primary | info | success | warning | danger"
	-->

    	<div class="sidebar-wrapper">
            <div class="logo">
                <a href="#" class="simple-text">
                  您的个人信息
                </a>
            </div>

            <ul class="nav">
            
                <li class="active">
                    <a href="#">
                        <i class="ti-user"></i>
                        <p>个人信息查看与修改 </p>
                    </a>
                </li>
               
            </ul>
    	</div>
    </div>

    <div class="main-panel">
		<nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar bar1"></span>
                        <span class="icon-bar bar2"></span>
                        <span class="icon-bar bar3"></span>
                    </button>
                    <a class="navbar-brand" href="#">个人信息</a>
                </div>
                <div class="collapse navbar-collapse">
                   

                </div>
            </div>
        </nav>


        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-4 col-md-5">
                        <div class="card card-user">
                            <div class="image">
                                <img src="${pageContext.request.contextPath }/resources/TIM_admin/assets/img/background.jpg" alt="..."/>
                            </div>
                            <div class="content">
                                <div class="author">
                                  <img class="avatar border-white" src="${pageContext.request.contextPath }/resources/TIM_admin/assets/img/faces/face-2.jpg" alt="..."/>
                                  <h4 class="title"><br />
                                     <a ><small>@email</small></a>
                                  </h4>
                                </div>
                                <p class="description text-center">
                                    "I like the way you work it <br>
                                    No diggity <br>
                                    I wanna bag it up"
                                </p>
                            </div>
                            <hr>
                            <div class="text-center">
                                <div class="row">
                                    <div class="col-md-3 col-md-offset-1">
                                        <h5>12<br /><small>Files</small></h5>
                                    </div>
                                    <div class="col-md-4">
                                        <h5>2GB<br /><small>Used</small></h5>
                                    </div>
                                    <div class="col-md-3">
                                        <h5>24,6$<br /><small>Spent</small></h5>
                                    </div>
                                </div>
                            </div>
                        </div>	
                        <div class="card">
                            <div class="header">
                                <h4 class="title">Team Members</h4>
                            </div>
                            <div class="content">
                                <ul class="list-unstyled team-members">
                                            <li>
                                                <div class="row">
                                                    <div class="col-xs-3">
                                                        <div class="avatar">
                                                            <img src="${pageContext.request.contextPath }/resources/TIM_admin/assets/img/faces/face-0.jpg" alt="Circle Image" class="img-circle img-no-padding img-responsive">
                                                        </div>
                                                    </div>
                                                    <div class="col-xs-6">
                                                        DJ Khaled
                                                        <br />
                                                        <span class="text-muted"><small>Offline</small></span>
                                                    </div>

                                                    <div class="col-xs-3 text-right">
                                                        <btn class="btn btn-sm btn-success btn-icon"><i class="fa fa-envelope"></i></btn>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="row">
                                                    <div class="col-xs-3">
                                                        <div class="avatar">
                                                            <img src="${pageContext.request.contextPath }/resources/TIM_admin/assets/img/faces/face-1.jpg" alt="Circle Image" class="img-circle img-no-padding img-responsive">
                                                        </div>
                                                    </div>
                                                    <div class="col-xs-6">
                                                        Creative Tim
                                                        <br />
                                                        <span class="text-success"><small>Available</small></span>
                                                    </div>

                                                    <div class="col-xs-3 text-right">
                                                        <btn class="btn btn-sm btn-success btn-icon"><i class="fa fa-envelope"></i></btn>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="row">
                                                    <div class="col-xs-3">
                                                        <div class="avatar">
                                                            <img src="${pageContext.request.contextPath }/resources/TIM_admin/assets/img/faces/face-3.jpg" alt="Circle Image" class="img-circle img-no-padding img-responsive">
                                                        </div>
                                                    </div>
                                                    <div class="col-xs-6">
                                                        Flume
                                                        <br />
                                                        <span class="text-danger"><small>Busy</small></span>
                                                    </div>

                                                    <div class="col-xs-3 text-right">
                                                        <btn class="btn btn-sm btn-success btn-icon"><i class="fa fa-envelope"></i></btn>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-8 col-md-7">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">Edit Profile</h4>
                            </div>
                            
                            <div class="content">
                         
                                <form>
                                    <div class="row">
                                      
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>username</label>
                                                <input type="text"  id="username" name="username"class="form-control border-input" placeholder="Username" >
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="exampleInputEmail1">real_name</label>
                                                <input type="text"  id="real_name" name="email"class="form-control border-input" placeholder="Email">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>gender</label>
                                                <input type="text"  id="gender" name="gender"class="form-control border-input" placeholder="Company" value="Chet">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>phone</label>
                                                <input type="text"  id="phone" name="phone"class="form-control border-input" placeholder="Last Name" value="Faker">
                                            </div>
                                        </div>
                                    </div>

                                  

                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>address</label>
                                                <input type="text"  id="address" name="address"class="form-control border-input" placeholder="City" value="Melbourne">
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>grade</label>
                                                <input type="text" id="grade" name="grade" class="form-control border-input" placeholder="Country" value="Australia">
                                            </div>
                                        </div>
                                       
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>aboutMe</label>
                                                <textarea rows="5" class="form-control border-input"  id="aboutMe" name="aboutMe" placeholder="Here can be your description" value="Mike">
                                               </textarea>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="text-center">
                                        <button type="submit" onclick="saveAccountInfo()" class="btn btn-info btn-fill btn-wd">点击保存修改信息</button>
                                    </div>
                                    <div class="clearfix"></div>
                                </form>
                            </div>
                        </div>
                    </div>


                </div>
            </div>
        </div>


				<div class="copyright pull-right">
                    Copyright &copy; 2019.安心教育资源管理系统.<a target="_blank" >&#x7F51;&#x9875;&#x6A21;&#x677F;</a>
                </div>
            </div>
        </footer>

    </div>
</div>


</body>
	<script src="${pageContext.request.contextPath }/resources/js/jquery-2.1.1.min.js"></script>

    <!--   Core JS Files   -->
<%--     <script src="${pageContext.request.contextPath }/resources/TIM_admin/assets/js/jquery-1.10.2.js" type="text/javascript"></script>
 --%>	<script src="${pageContext.request.contextPath }/resources/TIM_admin/assets/js/bootstrap.min.js" type="text/javascript"></script>

	<!--  Checkbox, Radio & Switch Plugins -->
	<script src="${pageContext.request.contextPath }/resources/TIM_admin/assets/js/bootstrap-checkbox-radio.js"></script>

	<!--  Charts Plugin -->
	<script src="${pageContext.request.contextPath }/resources/TIM_admin/assets/js/chartist.min.js"></script>

    <!--  Notifications Plugin    -->
    <script src="${pageContext.request.contextPath }/resources/TIM_admin/assets/js/bootstrap-notify.js"></script>

    <!--  Google Maps Plugin    -->
    <!---<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js"></script>--->

    <!-- Paper Dashboard Core javascript and methods for Demo purpose -->
	<script src="${pageContext.request.contextPath }/resources/TIM_admin/assets/js/paper-dashboard.js"></script>

	<!-- Paper Dashboard DEMO methods, don't include it in your project! -->
	<script src="${pageContext.request.contextPath }/resources/TIM_admin/assets/js/demo.js"></script>
	

<script type="text/javascript">

var account_id = null;
$(function(){
    
    init();
    
});
function init(){
	
	/*var account = {
            username:username,
            password:password
            
        };
	$.ajax({
	    url:'${pageContext.request.contextPath}/getAccountNameAndPwd',
		cache: false,
		async: false,
		type:'POST',
		data:user.username,
		
		*/
		var username = "${current_user.username}";
		console.log(username);
		
	$.ajax({
		url:'${pageContext.request.contextPath}/student/selectAccountInfo1',
		cache: false,
		async: false,
		type:'POST',
		data:{'username':username},
		
		success:function(data){
			console.log(data);
			var username = data.data.data.username;
			var real_name =data.data.data.real_name;
			var gender = data.data.data.gender;
			var phone = data.data.data.phone;
			var address = data.data.data.address;
			var account_id = data.data.data.account_id;
			
			$("#username").attr("value", username);
			$("#real_name").attr("value", real_name);
			$("#gender").attr("value", gender);
			$("#phone").attr("value", phone);
			$("#address").attr("value", address);
			
		}
		
		
	});
}
	
function saveAccountInfo(){
	 $.ajax(
	            {
	                type: "POST",//方法类型
	                data:{'username':$('#username').val(),
	                	'real_name':$("#real_name").val(),
	                	'gender':$("#gender").val(),
	                	'phone':$("#phone").val(),
	                	'address':$("#address").val(),
	                	'grade':$("#grade").val(),
	                	'aboutMe':$("#aboutMe").val(),
	                	'account_id':account_id
	                },
	                url: "${pageContext.request.contextPath }/student/saveAccountInfo",
	                success: function (result) {
	                    console.info(result);
	                    console.info("进去了保存信息");

	                },
	            });
}

</script>
</html>
