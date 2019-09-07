<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <meta charset="utf-8"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="${pageContext.request.contextPath}/resources/teacher/assets/js/modules/jquery-3.4.1.min.js"  type="text/javascript"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap-3.3.7-dist/css/bootstrap.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/bootstrap-3.3.7-dist/js/bootstrap.js" ></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap-3.3.7-dist/css/bootstrap.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/userList.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap-3.3.7-dist/css/bootstrap-table.css" />
<script src="${pageContext.request.contextPath}/resources/bootstrap-table/bootstrap-table.min.js"></script>


</head>
<body>
	 <div class="result-wrap">
    <div class="row">

        <div class="col-md-12">
            <table id="table1"></table>
        </div>

    </div>
</div>
<button type="button" id="test">test</button>
</body>
<script>
/*
$("#test").click(function(){
	$.ajax({
		url:"${pageContext.request.contextPath }/TeacherTest",
		success:function(data){
			console.log(data)
		},
		error:function(data){
        	console.log(data);	
        }
	});
});
*/
$(document).ready(function () {
	$.ajax({
		url:"${pageContext.request.contextPath }/TeahcherTest",
		
		
		success:function(data){
			console.log(data)
		},
		error:function(data){
        	console.log(data);	
        }
	});
    $('#table1').bootstrapTable({
        method: "get",
        columns: [
            {
                field: 'teacherId',
                title: 'teacherId',
                align: "center"
            },
            {
                field: 'teacherName',
                title: 'teacherName',
                align: "center"
            },
            {
                field: 'teacherGender',
                title: 'teacherGender',
                align: "center",
                width: "8%"
            },
            {
                field: 'teacherPhone',
                title: 'teacherPhone',
                align: "center",

            }
           ,
           {
               field: 'teacherGrade',
               title: 'teacherGrade',
               align: "center",

           },
           {
               field: 'teacherCourse',
               title: 'teacherCourse',
               align: "center",

           }
        ],
        uniqueId: "teacherId",                     //每一个行的主键进行主键的查询
        
        
        height: 580,
        pagination: true,
        pageList: [10, 15],
        search: true,
        showHeader: true,
        pageNumber: 1,
        striped: false,
        toolbar: '#toolbar',
        showRefresh: true,
        paginationPreText: "上一页",
        paginationNextText: "下一页",
        clickToSelect: true, //是	否启用点击选中行
        smartDisplay: false,//智能显示分页按钮
        url: '${pageContext.request.contextPath }/TeacherTest',
        onLoadSuccess: function (data) {  //加载成功时执行
            console.info("加载成功");
        	console.log(data);
        },
        onLoadError: function (data) {  //加载失败时执行
            console.info("加载数据失败！");
        }
    });
})


</script>

</html>