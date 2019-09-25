<%--
  Created by IntelliJ IDEA.
  User: loshower
  Date: 2017-12-08
  Time: 13:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户页面(TODO)</title>
</head>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/style/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/style/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/style/bootstrap-table/bootstrap-table.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/style/css/userList.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/style/pnotify/pnotify.custom.min.css">
<link rel="stylesheet"
      href="${pageContext.request.contextPath }/resources/style/datetimepicker/css/bootstrap-datetimepicker.min.css">
<script src="${pageContext.request.contextPath}/resources/style/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/style/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/style/bootstrap-table/bootstrap-table.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/style/pnotify/pnotify.custom.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/style/bootstrap-table/locale/bootstrap-table-zh-CN.js"></script>
<script src="${pageContext.request.contextPath}/resources/style/datetimepicker/js/bootstrap-datetimepicker.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/style/datetimepicker/js/locales/bootstrap-datetimepicker.zh-CN.js"
        charset="UTF-8"></script>
<script>
    function btn_fuzzyquery(){
        var parm =$("#exampleInputName2").val();
        var data = {
            "parm": parm
        };

        $.ajax(
            {
                type: "POST",//方法类型
                data: data,
                url: "${pageContext.request.contextPath }/fuzzyquery",
                success: function (result) {
                    console.info(result);
                    console.info("进去了");
                    $("#table1").bootstrapTable('refresh');

                },
            });

    }
   

    $(document).ready(function () {
    	var username = "${current_user.username}";
        $('#table1').bootstrapTable({
            method: "get",
            queryParamsType : '',
            queryParams :{'username' : username},
      //	private Integer order_id;
	//private String create_time;
            columns: [
                {
                    field: 'order_id',
                    title: 'order_id',
                    align: "center"
                },
                {
                    field: 'create_time',
                    title: 'create_time',
                    align: "center"
                },
                {
                    field: 'teacher_name',
                    title: 'teacher_name',
                    align: "center",
                    width: "8%"
                },
                {
                    field: 'price',
                    title: 'price',
                    align: "center"

                },
                {
                    field: 'username',
                    title: 'username',
                    align: "center"

                },
/*                 {
                    field: 'teacher_phone',
                    title: 'teacher_phone',
                    align: "center",
                    width: "5%"
                }, */
                {
                    field: 'grade_description',
                    title: 'grade_description',
                    width: "15%",
                    align: "center"
                }
            ],
            striped: true,
            pagination: true,
            pageList: [10, 15],
            search: true,
            showHeader: true,
            pageNumber: 1,
            striped: true,
            url: '${pageContext.request.contextPath }/order/findAllOrder',
            onLoadSuccess: function () {  //加载成功时执行
                console.info("加载成功");
            },
            onLoadError: function () {  //加载失败时执行
                console.info("加载数据失败");
            }
        });
    })


    

</script>

<body>
<div class="search-wrap">
    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-2"><p class="search-title">我的订单查询</p></div>
        <div class="col-md-2">
            <input type="text" class="form-control" id="exampleInputName2"
                   placeholder="请输入用户名其中一个字符进行模糊检索.">
        </div>
        <div class="col-md-2">
            <button type="button" class="btn btn-primary" onclick="btn_fuzzyquery()">查找</button>
        </div>
        <div class="col-md-2">
            <div class="form-group">
                <div class='input-group date' id='date1'>
                    <input type='text' class="form-control"/>
                    <span class="input-group-addon">
                        <span class="glyphicon glyphicon-calendar"></span>
                    </span>
                </div>
            </div>
        </div>
        <div class="col-md-2">
            <button type="button" class="btn btn-primary">查找</button>
        </div>
        <div class="col-md-2"></div>
    </div>
</div>
<%--user list--%>
<div class="result-wrap">
    <div class="row">

        <div class="col-md-12">
            <table id="table1"></table>
        </div>

    </div>
</div>
<!-- 删除用户模态框（Modal） -->
<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">删除用户</h4>
            </div>
            <div class="modal-body" id="cfmMsg"></div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default cancelDelete" data-dismiss="modal">取消</button>
                <button type="button" class="btn btn-danger confirmDelete" data-dismiss="modal">确认</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
</body>
</html>


