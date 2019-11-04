<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8" />
<link rel="apple-touch-icon" sizes="76x76"
	href="assets/img/apple-icon.png">
<link rel="icon" type="image/png" sizes="96x96"
	href="assets/img/favicon.png">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<title></title>

<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'
	name='viewport' />
<meta name="viewport" content="width=device-width" />

<!-- Bootstrap core CSS     -->
<link
	href="${pageContext.request.contextPath }/resources/TIM_admin/assets/css/bootstrap.min.css"
	rel="stylesheet" />

<!-- Animation library for notifications   -->
<link
	href="${pageContext.request.contextPath }/resources/TIM_admin/assets/css/animate.min.css"
	rel="stylesheet" />

<!--  Paper Dashboard core CSS    -->
<link
	href="${pageContext.request.contextPath }/resources/TIM_admin/assets/css/paper-dashboard.css"
	rel="stylesheet" />

<!--  CSS for Demo Purpose, don't include it in your project     -->
<link
	href="${pageContext.request.contextPath }/resources/TIM_admin/assets/css/demo.css"
	rel="stylesheet" />

<!--  Fonts and icons     -->
<link
	href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css"
	rel="stylesheet">
<link href='https://fonts.googleapis.com/css?family=Muli:400,300'
	rel='stylesheet' type='text/css'>
<link
	href="${pageContext.request.contextPath }/resources/TIM_admin/assets/css/themify-icons.css"
	rel="stylesheet">

</head>
<body">

	<div class="wrapper">
		<div class="sidebar" data-background-color="white"
			data-active-color="danger">

			<!--
		Tip 1: you can change the color of the sidebar's background using: data-background-color="white | black"
		Tip 2: you can change the color of the active button using the data-active-color="primary | info | success | warning | danger"
	-->

			<div class="sidebar-wrapper">
				<div class="logo">
					<a href="#" class="simple-text"> 课程详细信息 </a>
				</div>

				<ul class="nav">

					<li class="active"><a href="#"> <i class="ti-user"></i>
							<p>查看课程详细信息</p>
					</a></li>

				</ul>
			</div>
		</div>

		<div class="main-panel">
			<nav class="navbar navbar-default">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar bar1"></span> <span class="icon-bar bar2"></span>
						<span class="icon-bar bar3"></span>
					</button>
					<a class="navbar-brand" href="#" style="padding-left:370px;">课程信息</a>
				</div>
				<div class="collapse navbar-collapse"></div>
			</div>
			</nav>


			<div class="content">
				<div class="container-fluid">
					<div class="row">
						
						<div class="col-lg-8 col-md-7" style="padding-left:200px">
							<div class="card">
								<div class="header">
									<h4 class="title">详细课程信息</h4>
								</div>

								<div class="content">

									<form>
										<div class="row">

											<div class="col-md-3">
												<div class="form-group">
													<label>老师姓名</label> <input type="text"  class="form-control border-input" 
														placeholder="111" value="陈宇">
												</div>
											</div>
											<div class="col-md-4">
												<div class="form-group">
													<label for="exampleInputEmail1">学历</label> <input
														type="text" 
														class="form-control border-input" placeholder="Email" value="研究生">
												</div>
											</div>
										</div>

										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<label>科目</label> <input type="text"  class="form-control border-input"
														placeholder="女" value="高中语文">
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label>phone</label> <input type="text"  class="form-control border-input"
														placeholder="15532432424" value="12432432424">
												</div>
											</div>
										</div>



										<div class="row">
											<div class="col-md-4">
												<div class="form-group">
													<label>上课时间</label> <input type="text" id="address"
														name="address" class="form-control border-input"
														placeholder="City" value="上课时间为每周周二到周五晚上七点到九点">
												</div>
											</div>
											<div class="col-md-4">
												<div class="form-group">
													<label>热度</label> <input type="text" id="grade"
														name="grade" class="form-control border-input"
														placeholder="Country" value="%78">
												</div>
											</div>

										</div>
										
										<input type="hidden" id="account_id" name="account_id" >
										<div class="text-center">
											<button type="button" onclick="saveAccountInfo()"
												class="btn btn-info btn-fill btn-wd">点击马上购买该课程！！！</button>
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
				Copyright &copy; 2019.安心教育资源管理系统
			</div>
		</div>
		</footer>

	</div>
	</div>


</body>
<script
	src="${pageContext.request.contextPath }/resources/js/jquery-2.1.1.min.js"></script>
<script
	src="${pageContext.request.contextPath }/resources/js/request.js"></script>

<!--   Core JS Files   -->
<%--     <script src="${pageContext.request.contextPath }/resources/TIM_admin/assets/js/jquery-1.10.2.js" type="text/javascript"></script>
 --%>
<script
	src="${pageContext.request.contextPath }/resources/TIM_admin/assets/js/bootstrap.min.js"
	type="text/javascript"></script>

<!--  Checkbox, Radio & Switch Plugins -->
<script
	src="${pageContext.request.contextPath }/resources/TIM_admin/assets/js/bootstrap-checkbox-radio.js"></script>

<!--  Charts Plugin -->
<script
	src="${pageContext.request.contextPath }/resources/TIM_admin/assets/js/chartist.min.js"></script>

<!--  Notifications Plugin    -->
<script
	src="${pageContext.request.contextPath }/resources/TIM_admin/assets/js/bootstrap-notify.js"></script>

<!--  Google Maps Plugin    -->
<!---<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js"></script>--->

<!-- Paper Dashboard Core javascript and methods for Demo purpose -->
<script
	src="${pageContext.request.contextPath }/resources/TIM_admin/assets/js/paper-dashboard.js"></script>

<!-- Paper Dashboard DEMO methods, don't include it in your project! -->
<script
	src="${pageContext.request.contextPath }/resources/TIM_admin/assets/js/demo.js"></script>


<script type="text/javascript">



function saveAccountInfo(){
	alert("请稍等正在为您处理》》》》》》》》》》》》》")
	alert("恭喜您，已购买成功！！！")
				
	
				
	
	
}

</script>
</html>
