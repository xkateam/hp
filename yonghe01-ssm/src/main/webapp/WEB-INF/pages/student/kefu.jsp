<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/jquery-easyui-1.7.0/themes/default/easyui.css">

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/jquery-easyui-1.7.0/themes/icon.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/jquery-easyui-1.7.0/demo.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/jquery-easyui-1.7.0/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/jquery-easyui-1.7.0/jquery.easyui.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<div id="cc" class="easyui-calendar" style="width:180px;height:180px;"></div>
<div id="bb" class="easyui-calendar" style="width:180px;height:180px;margin-left:200px;margin-top:-190px"></div>
</body>

<script type="text/javascript">

$('#cc').calendar({
    current:new Date()
});

$('#cc').calendar({
	onSelect: function(date){
		alert(date.getFullYear()+"-"+(date.getMonth()+1)+"-"+date.getDate());
	}
});

$('#bb').calendar({
    current:new Date()
});

$('#bb').calendar({
	onSelect: function(date){
		alert(date.getFullYear()+"-"+(date.getMonth()+1)+"-"+date.getDate());
	}
});
</script>
</html>