<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>用户登录</title>
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
