<%@ page language="java" contentType="text/html; charset=UTf-8"
    pageEncoding="UTf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTf-8">
<title>发布招聘</title>
 <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/stylefbzp.css">

 <style type="text/css">
#top {
	background-color: #09F;
	height: 100px;
	width: 100%;
	margin: 0px;
	padding: 0px;
	text-align: center;
	font-size: 30px;
}
.p {
	font-size: 14px;
	color: #999;
	align=:center;
}
.hf{
font-size: 30px;
font-weight: bold;
padding: 0px;
}

</style>
</head>
<script src="${pageContext.request.contextPath }/resources/js/jquery-2.1.1.min.js"></script>
<script src='${pageContext.request.contextPath }/resources/js/jqueryfbzp.min.js'></script>
<script  src="${pageContext.request.contextPath }/resources/js/indexfbzp.js"></script>

<body  style="padding-top:0px;margin-top: 0px;" >
<div id="top">安心教育资源网 发布招聘</div>
<form>
<div>
<table width="800" border="0" align="center">
  <tr>
    <td   width="400" rowspan="3" align="center">&nbsp;</td>
    <td  class="tdtop" height="130">所在地区：
     <select name="city_name" id="city_name" class="form-control">
  <option value="和平区">和平区</option>
  <option value="河东区">河东区</option>
  <option value="河西区">河西区</option>
  <option value="南开区">南开区</option>
  <option value="河北区">河北区</option>
  <option value="红桥区">红桥区</option>
  <option value="滨海新区">滨海新区</option>
  <option value="东丽区">东丽区</option>
  <option value="西青区">西青区</option>
  <option value="津南区">津南区</option>
  <option value="北辰区">北辰区</option>
  <option value="武清区">武清区</option>
  <option value="宝坻区">宝坻区</option>
  <option value="宁河区">宁河区</option>
  <option value="静海区">静海区</option> 
  <option value="蓟州区">蓟州区</option>
</select>
    </td>
  </tr>
  <tr>
    <td  class="tdtop" height="100">所学科目：
    <select name="subject_id" id ="subject_id"  class="form-control">
  <option value="语文">语文</option>
  <option value="英语">英语</option>
  <option value="数学">数学</option>
  <option value="政治">政治</option>
  <option value="历史">历史</option>
  <option value="地理">地理</option>
  <option value="物理">物理</option>
  <option value="化学">化学</option>
  <option value="生物">生物</option>
</select>
    </td>
  </tr>
  <tr>
    <td  class="tdtop" height="100" >期望价格：<select name="price" id="price" class="form-control">
  <option value="50">50积分</option>
  <option value="100">100积分</option>
  <option value="150">150积分</option>
  <option value="200">200积分</option>
  <option value="250">250积分</option>
  <option value="300">300积分</option>
  </select>/节</td>
  </tr>
  <tr>
  <td align="right" colspan="2"> <button  type="button" onclick="insertzpinfo()" class="btn btn-info">发出招聘</button></td>
  </tr>
</table>
   <div class='selector'>
  <ul>
    <li>
      <input id='1' type='checkbox'name="grade_id" value="初一">
      <label for='1'>初一</label>
    </li>
    <li>
      <input id='2' type='checkbox'name="grade_id" value="初二">
      <label for='2'>初二</label>
    </li>
    <li>
      <input id='3' type='checkbox'name="grade_id" value="初三">
      <label for='3'>初三</label>
    </li>
    <li>
      <input id='4' type='checkbox'name="grade_id" value="高一">
      <label for='4'>高一</label>
    </li>
    <li>
      <input id='5' type='checkbox'name="grade_id" value="高二">
      <label for='5'>高二</label>
    </li>
    <li>
      <input id='6' type='checkbox'name="grade_id" value="高三">
      <label for='6'>高三</label>
    </li>
    <li>
      <input id='7' type='checkbox'name="grade_id" value="初中综合">
      <label for='7'>初中综合</label>
    </li>
    <li>
      <input id='8' type='checkbox'name="grade_id" value="高中综合">
      <label for='8'>高中综合</label>
    </li>
  </ul>
  <button>年级</button>
</div>
</div>
</form>
<!-- <div  class='selector1'>
<ul>
    <li>
      <input id='11' type='checkbox'name="subject_id" value="语文">
      <label for='11'>语文</label>
    </li>
    <li>
      <input id='21' type='checkbox'name="subject_id" value="数学">
      <label for='21'>数学</label>
    </li>
    <li>
      <input id='31' type='checkbox'name="subject_id" value="英语">
      <label for='31'>英语</label>
    </li>
    <li>
      <input id='41' type='checkbox'name="subject_id" value="政治">
      <label for='41'>政治</label>
    </li>
    <li>
      <input id='51' type='checkbox'name="subject_id" value="历史">
      <label for='51'>历史</label>
    </li>
    <li>
      <input id='61' type='checkbox'name="subject_id" value="地理">
      <label for='61'>地理</label>
    </li>
    <li>
      <input id='71' type='checkbox'name="subject_id" value=化学>
      <label for='71'>化学 </label>
    </li>
    <li>
      <input id='81' type='checkbox'name="subject_id" value="生物">
      <label for='81'>生物</label>
    </li>
    <li>
      <input id='91' type='checkbox'name="subject_id" value="物理">
      <label for='91'>物理 </label>
    </li>
  </ul>
  <button id =1>科目</button>
 </div> -->

 <table width="800" border="0" align="center">
  <tr>
    <td align="center">&nbsp;</td>
    <td align="center" class="tdtop">&nbsp;</td>
  </tr>
</table>
</div>
<div id="down"> 
<p class="p"  style="text-align: center;">安心教育资源网 Copyright ©1999-2016</p>
<p class="p" style="text-align: center;">京ICP证150096号京ICP备14061128号京公网安备11010802020026号网络文化经营许可证京网文[2016]1631-199网站经营者信息公示</p>
</div>
<!-- <div style="position: static;">
<table align="center"  >
<tr>
<td align="center" width="300" height="100">
	 ———————————————————科目  多选—————————————————————————— 
<input type="checkbox" name="test" value="语文"/><span>1语文</span>
<input type="checkbox" name="test" value="数学"/><span>2数学</span>
<input type="checkbox" name="test" value="英语"/><span>3英语</span>
<input type="checkbox" name="test" value="历史"/><span>4历史</span>
<input type="checkbox" name="test" value="化学"/><span>5化学</span>
<input type='button' value='确定' οnclick="show()"/>
	
</td>

<input type="checkbox" name="subject_id" value="语文"/><span>1语文</span>
<input type="checkbox" name="subject_id" value="数学"/><span>2数学</span>
<input type="checkbox" name="subject_id" value="英语"/><span>3英语</span>
<input type="checkbox" name="subject_id" value="历史"/><span>4历史</span>
<input type="checkbox" name="subject_id" value="化学"/><span>5化学</span>	
<button  type="button" onclick="show1()">确定</button>


</td>
<td align="center"  width="300" height="100">
————————————————————年级 多选——————————————————————————
	

<input type="text" id ="grade_id" name="grade_id" placeholder="年级"> 
</td>
</tr>
<tr>
<td align="center"  width="300" height="100">
	————————————————————地区 单选——————————————————————————
	上课地区：<select name="city_name">
  <option value="和平区">和平区</option>
  <option value="河东区">河东区</option>
  <option value="河西区">河西区</option>
  <option value="南开区">南开区</option>
  <option value="河北区">河北区</option>
  <option value="红桥区">红桥区</option>
  <option value="滨海新区">滨海新区</option>
  <option value="东丽区">东丽区</option>
  <option value="西青区">西青区</option>
  <option value="津南区">津南区</option>
  <option value="北辰区">北辰区</option>
  <option value="武清区">武清区</option>
  <option value="宝坻区">宝坻区</option>
  <option value="宁河区">宁河区</option>
  <option value="静海区">静海区</option> 
  <option value="蓟州区">蓟州区</option>
</select>
	
</td>
<td align="center"  width="300" height="100">
		 ————————————————————价格  单选—————————————————————————
		
	课程价格：	<select name="city_name">
  <option value="50">50积分</option>
  <option value="100">100积分</option>
  <option value="150">150积分</option>
  <option value="200">200积分</option>
  <option value="250">250积分</option>
  <option value="300">300积分</option>
  </select>/节
</td>
</tr>
<tr>
<td align="center"  width="300" height="100"> 
		 ————————————————————开始时间—————————————————————————
</td>
<td align="center"  width="300" height="100">
	 ————————————————————结束时间—————————————————————————
	<input  type="text" id="city_name"name="city_name" placeholder="区域">
</td>
</tr>
<tr>
<td  align="center"colspan="2"> <button  type="button" onclick="insertzpinfo()">点击保存</button></td>
</tr>
</table>
</div>
 -->
</body>
<script type="text/javascript">


function show1(){
	var subject=$("input:checkbox:checked").val();
	
/*     subject = [];
    for(k in obj){
        if(obj[k].checked)
        	subject.push(obj[k].value);
    } */
    alert("1111"+subject);
    console.log("223"+subject);
}
 

/* function show(){
     obj = document.getElementsByName("subject_id");
     check_val = [];
     for(k in obj){
         if(obj[k].checked)
             check_val.push(obj[k].value);
     }
     alert(check_val);
 } */
function insertzpinfo(){
				//var subject_id=$("#subject_id option:checked").text();
			   	//var subject_id =$("#subject_id checkbox:checked").val();
				//var subject_id=$("#subject_id").val();
				//var subject_id=$("#subject_id option:selected").val();
				//var grade_id =$("#grade_id").val();
				//var grade_id =$("#grade_id").val();
				var  grade_id =$("input:checkbox:checked").val();
				var  subject_id = $("#subject_id option:selected").val();
				var teacher_name =$("#teacher_name").val();
				var price =$("#price option:selected").val();
				var city_name =$("#city_name option:selected").val();
				//var start_time=$("start_time").val();
				//var finish_time=$("finish_time").val();
				var data={

						 "subject_id":subject_id,						 
						"grade_id":grade_id,
						 "teacher_name":teacher_name,
						 "price":price,
						 "city_name":city_name,
						// "start_time":start_time,
						// "finish_time":finish_time,
						 
						 
				} 
				console.log(grade_id); 
				console.log(teacher_name);
				console.log(price);
				console.log(city_name);
				console.log(subject_id);
			/* 	alert("年级1"+grade_id);
				alert("1科目"+subject_id);
				alert("11单价1"+price);
				alert("11城市"+city_name); */
		
				//setTimeout("location.href='${pageContext.request.contextPath }/student/studentIndex';", 3000); 
	
				 $.ajax(
	               {
	             	
	            		type : "post",
		    			data : JSON.stringify(data),
		    			dataType : "json",
		                contentType: 'application/json',
	                   url: "${pageContext.request.contextPath }/zpinfo/insertzpinfo",
	               
	                success: function (result) {
	                    console.info(result);
	                    console.info("进去了保存信息得页面");
	                    
	                    window.location.href="${pageContext.request.contextPath }/student/fbzp";
	                    alert("您的信息已成功发布，即将跳转首页");
	                    //setTimeout(" window.location.href='${pageContext.request.contextPath }/student/studentIndex';", 3000); 
	                    window.location.href="${pageContext.request.contextPath }/student/studentIndex";
	                },
	                
	            });
	
	
}
</script>
<script
	src="${pageContext.request.contextPath }/resources/js/jquery-2.1.1.min.js"></script>
<script
	src="${pageContext.request.contextPath }/resources/js/request.js"></script>
	<script
	src="${pageContext.request.contextPath }/resources/TIM_admin/assets/js/bootstrap.min.js"
	type="text/javascript"></script>
 
</html>