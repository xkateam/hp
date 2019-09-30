<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<title>用户登录界面</title>
<link
	href="${pageContext.request.contextPath }/resources/css/default.css"
	rel="stylesheet" type="text/css" />
<!--必要样式-->
<link
	href="${pageContext.request.contextPath }/resources/css/styles.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/resources/css/demo.css"
	rel="stylesheet" type="text/css" />
<link
	href="${pageContext.request.contextPath }/resources/css/loaders.css"
	rel="stylesheet" type="text/css" />
</head>
<body>
	<div class='login'>
		<div class='login_title'>
			<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			用户登录界面</span>
		</div>

		<div class='login_fields'>
			<form action="${pageContext.request.contextPath }/login"
				method="post">
				<div class='login_fields__user'>
					<div class='icon'>
						<img alt=""
							src='${pageContext.request.contextPath }/resources/img/user_icon_copy.png'>
					</div>
					<input name="username" id="username" placeholder='用户名' maxlength="16" type='text' />
					<%-- <span>${msg1}</span> --%>
					<div class='validation'>
						<img alt=""
							src='${pageContext.request.contextPath }/resources/img/tick.png'>
					</div>
				</div>
				<div class='login_fields__password'>
					<div class='icon'>
						<img alt=""
							src='${pageContext.request.contextPath }/resources/img/lock_icon_copy.png'>
					</div>
					<input name="password" id="password" placeholder='密码' maxlength="16" type='text'>
					<%-- <span>${msg2}</span><br> --%>
					<div class='validation'>
						<img alt="" src='${pageContext.request.contextPath }/resources/img/tick.png'>
					</div>
				</div>
			</form>
			<div class='login_fields__password'>
				<div class='icon'>
					<img alt=""
						src='${pageContext.request.contextPath }/resources/img/key.png'>
				</div>
				<input name="code" placeholder='验证码' maxlength="4" type='text'
					name="ValidateNum" autocomplete="off">
				<div class='validation' style="opacity: 1; right: -5px; top: -3px;">
					<canvas class="J_codeimg" id="myCanvas" onclick="Code();">对不起，您的浏览器不支持canvas，请下载最新版浏览器!</canvas>
				</div>
			</div>
			<div class='login_fields__submit'>
				<input type='button' value='登录'><br/>
					<br/><a style="color:#efecec" href=" ${pageContext.request.contextPath }/user/regist">还没有账户？点击注册</a>
			
			</div>
			
		</div>
	</div>
	
	
	<!-- 跳转认证动画 -->
	<div class='authent'>
		<div class="loader"
			style="height: 44px; width: 44px; margin-left: 28px;">
			<div class="loader-inner ball-clip-rotate-multiple">
				<div></div>
				<div></div>
				<div></div>
			</div>
		</div>
		<p>认证中...</p>
	</div>
	<div class="OverWindows"></div>
	<link
		href="${pageContext.request.contextPath }/resources/layui/css/layui.css"
		rel="stylesheet" type="text/css" />
	<script src="${pageContext.request.contextPath }/resources/TIM_admin/assets/js/jquery-1.10.2.js"></script>
	
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/resources/js/jquery-ui.min.js"></script>
		
	<script type="text/javascript"
		src='${pageContext.request.contextPath }/resources/js/stopExecutionOnTimeout.js?t=1'></script>
	<script
		src="${pageContext.request.contextPath }/resources/layui/layui.js"
		type="text/javascript"></script>
	<script
		src="${pageContext.request.contextPath }/resources/js/Particleground.js"
		type="text/javascript"></script>
	<script
		src="${pageContext.request.contextPath }/resources/js/Treatment.js"
		type="text/javascript"></script>
	<script
		src="${pageContext.request.contextPath }/resources/js/jquery.mockjax.js"
		type="text/javascript"></script>
	<script type="text/javascript">
	function regist(){
	

	        $.ajax(
	            {
	                type: "POST",//方法类型
	                data: data,
	                url: "${pageContext.request.contextPath }/user/regist"
	               
	            });

	}
	

		/* var ckusername= $("#username").val();
		var ckpassword= $("#password").val();
		$.ajax({
			url:"${pageContext.request.contextPath }/queryInfoByUsername",
			data:{
				username:ckusername
			},
			success:function(data){
				console.log(data.toString())
			}
		}); */
		var canGetCookie = 0;//是否支持存储Cookie 0 不支持 1 支持
		var ajaxmockjax = 1;//是否启用虚拟Ajax的请求响 0 不启用  1 启用
		//默认账号密码

		var truelogin = null;
		var truepassword = null;
		var roleid=null;

		var CodeVal = 0;
		Code();
		function Code() {
			if (canGetCookie == 1) {
				createCode("AdminCode");
				var AdminCode = getCookieValue("AdminCode");
				showCheck(AdminCode);
			} else {
				showCheck(createCode(""));
			}
		}
		function showCheck(a) {
			CodeVal = a;
			var c = document.getElementById("myCanvas");
			var ctx = c.getContext("2d");
			ctx.clearRect(0, 0, 1000, 1000);
			ctx.font = "80px 'Hiragino Sans GB'";
			ctx.fillStyle = "#E8DFE8";
			ctx.fillText(a, 0, 100);
		}
		$(document).keypress(function(e) {
			// 回车键事件  
			if (e.which == 13) {
				$('input[type="button"]').click();
			}
		});
		//粒子背景特效
		$('body').particleground({
			dotColor : '#E8DFE8',
			lineColor : '#133b88'
		});
		$('input[name="password"]').focus(function() {
			$(this).attr('type', 'password');
		});
		$('input[type="text"]').focus(function() {
			$(this).prev().animate({
				'opacity' : '1'
			}, 200);
		});
		$('input[type="text"],input[type="password"]').blur(function() {
			$(this).prev().animate({
				'opacity' : '.5'
			}, 200);
		});
		$('input[name="username"],input[name="password"]').keyup(function() {
			var Len = $(this).val().length;
			if (!$(this).val() == '' && Len >= 5) {
				$(this).next().animate({
					'opacity' : '1',
					'right' : '30'
				}, 200);
			} else {
				$(this).next().animate({
					'opacity' : '0',
					'right' : '20'
				}, 200);
			}
		});
		var open = 0;
		layui.use('layer', function() {
			var msgalert = '默认账号:' + 'zhangsan' + '<br/> 默认密码:' + 'zhangsan';
			/*  var index = layer.alert(msgalert, {
				icon : 6,
				time : 4000,
				offset : 't',
				closeBtn : 0,
				title : '友情提示',
				btn : [],
				anim : 2,
				shade : 0
			}); 
			layer.style(index, {
				color : '#777'
			}); */
			//非空验证
			/* 当按下回车键，或者点击登录按钮时，触发此事件 */
			$('input[type="button"]').click(
					function() {
						var username = $('input[name="username"]').val();
						var password = $('input[name="password"]').val();
						var code = $('input[name="code"]').val();
						if (username == '') {
							ErroAlert('请输入您的账号');
						} else if (password == '') {
							ErroAlert('请输入密码');
						} else if (code == '' || code.length != 4) {
							ErroAlert('输入验证码');
						} else {
							//认证中..
							/* fullscreen(); */
							$('.login').addClass('test'); //倾斜特效
							setTimeout(function() {
								$('.login').addClass('testtwo'); //平移特效
							}, 300);
							setTimeout(function() {
								$('.authent').show().animate({
									right : -320
								}, {
									easing : 'easeOutQuint',
									duration : 600,
									queue : false
								});
								$('.authent').animate({
									opacity : 1
								}, {
									duration : 200,
									queue : false
								}).addClass('visible');
							}, 500);

							
							/* 虚拟ajax让你在没有后端程序的情况下能真实地在线模拟ajax请求 */
							/* 修改此方法，讲虚拟ajax转换为真实ajax提交，或者form表单提交 */
							//登陆
							var JsonData = {
								username : username,
								password : password,
								code : code
							};
							//此处做为ajax内部判断
							var url = "";
							
							console.log('username:'+username+',password:'+password);
							$.ajax({
								cache: false,
								async: false, 
								type:'POST',
								url:"${pageContext.request.contextPath }/checkAccountInfo",
								data:{
									'username':JsonData.username,
									'password':JsonData.password,
								},
								success:function(data){
									console.log("ok");
									truelogin=data.username;
									truepassword=data.password;
								
									console.log('username:'+truelogin+',password:'+truepassword);
									if(JsonData.username == truelogin && JsonData.password == truepassword && JsonData.code.toUpperCase() == CodeVal.toUpperCase()){
										url = "Ajax/Login";
									}else{
										url = "Ajax/LoginFalse";
									}
								},error:function(data){
									console.log("error");
								}
							});
							
							

							AjaxPost(url, JsonData, function() {}, function(data) {
								//ajax返回 
								//认证完成
								setTimeout(function() {
									$('.authent').show().animate({
										right : 90
									}, {
										easing : 'easeOutQuint',
										duration : 600,
										queue : false
									});
									$('.authent').animate({
										opacity : 0
									}, {
										duration : 200,
										queue : false
									}).addClass('visible');
									$('.login').removeClass('testtwo'); //平移特效
								}, 2000);
								setTimeout(function () {
                                    $('.authent').hide();
                                    $('.login').removeClass('test');
                                    if (data.Status == 'ok') {
                                        //登录成功
                                        $('.login div').fadeOut(100);
                                        $('.success').fadeIn(1000);
                                        $('.success').html(data.Text);
										//跳转操作
                                        
                                        $.ajax({
                                        	type:'POST',
                                        	url:'${pageContext.request.contextPath }/success',
                                        	data:{
                                        		'username':JsonData.username
                                        	},success:function(data){
                                        		var role_id = data;
                                        		//验证为学生
                                            	if(role_id == 1){
                                            		
                                            		window.location.href="${pageContext.request.contextPath }/student/studentIndex";
                                            	}//验证为老师
                                            	else if (role_id==2) {
                                            		
                                            		window.location.href="${pageContext.request.contextPath }/teacher/teacherIndex";
                                        		}//验证管理员
                                            	
                                            	
                                        	}
                                        });
                                    } else {
                                        AjaxErro(data);
                                    }
                                }, 2400);
							}) 
						}
					})
		})
		var fullscreen = function() {
			elem = document.body;
			if (elem.webkitRequestFullScreen) {
				elem.webkitRequestFullScreen();	
			} else if (elem.mozRequestFullScreen) {
				elem.mozRequestFullScreen();
			} else if (elem.requestFullScreen) {
				elem.requestFullscreen();
			} else {
				//浏览器不支持全屏API或已被禁用  
			}
		}
		if (ajaxmockjax == 1) {
			$.mockjax({
				url : 'Ajax/Login',
				status : 200,
				responseTime : 50,
				responseText : {
					"Status" : "ok",
					"Text" : "登陆成功<br /><br />欢迎回来"
				}
			});
			$.mockjax({
				url : 'Ajax/LoginFalse',
				status : 200,
				responseTime : 50,
				responseText : {
					"Status" : "Erro",
					"Erro" : "账号名或密码或验证码有误"
				}
			});
		}
	</script>
</body>
</html>