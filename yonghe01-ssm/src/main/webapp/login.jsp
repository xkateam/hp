<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0"> 
	<title>登录界面</title>
    <link href="${pageContext.request.contextPath }/default.css" rel="stylesheet" type="text/css" />
	<!--必要样式-->
    <link href="${pageContext.request.contextPath }/styles.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath }/demo.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath }/loaders.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div style="width:100%;text-align:center">
    <h1>用户登录</h1>
    <form action="${pageContext.request.contextPath }/login"  method="post">
        <span>${msg1}</span><br>
        姓名: <input type="text" name="username" ><br>
        <span>${msg2}</span><br>
        密码: <input type="text" name="password"><br>
        <input type="submit" value="登录">
        <br>
    </form>
</div>
</body>
</html>
