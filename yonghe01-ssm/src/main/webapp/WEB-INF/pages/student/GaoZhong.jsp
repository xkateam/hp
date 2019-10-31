<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>	
<div class="row cl">
    <label class="form-label col-xs-4 col-sm-2">
        <span class="c-red">*</span> 头像：
    </label>  
     &nbsp;&nbsp;&nbsp;&nbsp;
     <img id="pic3" src="" width="106" alt="">
    <input type='file' style="width: 200px;" name='picPaths3'id='picPaths3'           
    onchange="showPic(this, 3);" />  
</div>

</body>
</html>