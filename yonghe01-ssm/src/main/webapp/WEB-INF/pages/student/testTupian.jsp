<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">

<title>jQuery图片轮播(焦点图)插件</title>


<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/jquery.slideBox.css"/>
	<script src="${pageContext.request.contextPath }/resources/js/jquery-1.7.1.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/js/jquery.slideBox.js"></script>



<script>

jQuery(function($){

	$('#demo1').slideBox();

	$('#demo2').slideBox({

		direction : 'top',//left,top#方向

		duration : 0.3,//滚动持续时间，单位：秒

		easing : 'linear',//swing,linear//滚动特效

		delay : 5,//滚动延迟时间，单位：秒

		startIndex : 1//初始焦点顺序

	});

	$('#demo3').slideBox({

		duration : 0.3,//滚动持续时间，单位：秒

		easing : 'linear',//swing,linear//滚动特效

		delay : 5,//滚动延迟时间，单位：秒

		hideClickBar : false,//不自动隐藏点选按键

		clickBarRadius : 10

	});

	$('#demo4').slideBox({

		hideBottomBar : true//隐藏底栏

	});

});

</script>

</head>




<body background="${pageContext.request.contextPath }/resources/img/000.jpg">
<style>
  #demo0{
    width: 100%;height: 100%;
  }
  #demo1{
    width: 100%;height: 30%;
  }
  #demo2{
    width: 100%;height: 70%;
  }
</style>


<div id="demo0" class="00" >
  <h3><font size="6" color="Orange">欢迎来到安心教育资源网<br></font></h3>
<div id="demo1" class="slideBox" >
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <ul class="items">

    <li><a href="${pageContext.request.contextPath}/student/studentIndex" title="首先进入首页"><img src="${pageContext.request.contextPath }/resources/img/111.png"></a></li>

    <li><a href="${pageContext.request.contextPath}/student/ChuZhong" title="之后可点击初中课程"><img src="${pageContext.request.contextPath }/resources/img/222.png"></a></li>

    <li><a href="${pageContext.request.contextPath}/student/dashuju" title="可点击"><img src="${pageContext.request.contextPath }/resources/img/333.png"></a></li>

    <li><a href="#" title="可点击"><img src="${pageContext.request.contextPath }/resources/img/444.png"></a></li>

    <li><a href="#" title="可点击"><img src="${pageContext.request.contextPath }/resources/img/555.png"></a></li>

  </ul>

</div>
<div id="demo2" class="slidebox" >
<li><br><font size="4" color="orange">&nbsp;&nbsp;&nbsp;公司简介与企业文化</font></li>
  <p><font size="3" >&nbsp;&nbsp;&nbsp;本网站精
    心打造并推出户外体验式培训与内训课程为一体的课程套餐，全面性的提高学员的个人综合素质能力和团队协作能力。
    公司针对青少年综合素质的实施，主要围绕就业指导咨询、素质拓展训练、建立评价体系、职业生涯规划四个环节展开。在素质拓展领域不断创新，追求卓越，在调整心态、个人定位、提高自信、团队协作、自我实现等方面，全面增强学员的个人竞争力。
    公司以创新的精神，卓越的培训，完善的服务，为企业和青少年搭建金色桥梁。
    创新是公司发展永恒的原动力。公司积极参与科技应用和观念创新，充分拓展企业生存空间，创建并保持企业的核心竞争力。公司未来广阔的发展空间，是职员最好的职业平台。
    团队意识与强烈的事业心是公司力量不竭的源泉。你会发现个人的聪明才智只有融入团队才会获得更好的发挥、才能取得更大的成就。。</font>
<p><fount size="1">Originality never forgets original intention</fount></p >
</div>
</div>



</body>

</html>

