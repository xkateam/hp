<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>注册用户</title>
</head>

<body background="${pageContext.request.contextPath }/resources/666666/1/worker2/picture/bjt.jpg">
<table border="2px" cellpadding="10px" cellspacing="0px"
       style="width: 30%;margin:auto;)"
       bordercolor="black" >
    <caption><h3>家教注册申请表</h3></caption>
    <form action="#" method="get">

        <tr>
            <th>姓名:</th>
            <td><input type="text" name="username"></th>
        </tr>
        <tr>
            <th>手机号:</th>
            <td><input type="password" name="password"></td>
        </tr>
        <tr>
            <th>邮箱:</th>
            <td><input type="text" name="username"></td>
        </tr>
        <tr>
            <th>性别:</th>
            <td>
                <input type="radio" name="gender" value="man" checked="checked">男 &nbsp;&nbsp;
                <input type="radio" name="gender" value="woman">女
            </td>
        </tr>
        <tr>
            <th>所授课程:</th>
            <td>
                <input type="checkbox" name="hobby" value="lq" checked="checked">数学 &nbsp;
                <input type="checkbox" name="hobby" value="zq">语文&nbsp;
                <input type="checkbox" name="hobby" value="pq">英语&nbsp;
                <input type="checkbox" name="hobby" value="wl">物理&nbsp;
                <input type="checkbox" name="hobby" value="hx">化学&nbsp;<br>
                <input type="checkbox" name="hobby" value="sw">生物&nbsp;&nbsp;
                <input type="checkbox" name="hobby" value="dl">地理&nbsp;
                <input type="checkbox" name="hobby" value="zz">政治&nbsp;

            </td>
        </tr>
        <tr>
            <th>工作城市:</th>
            <td>

                <select>
                    <option value="sh">上海
                    <option value="bg">北京
                    <option value="sz">深圳
                    <option value="cq">重庆
                    <option value="tj">天津
                    <option value="qt">其他
                </select><br>
                <fount >若填选其他需备注期期望城市</fount>
            </td>
        </tr>
        <tr>
            <th>上传简历<br>及相关信息</th>
            <td><input type="file" name="img"></td>
        </tr>

        <tr>
            <th>备注及补充:</th>
            <td><textarea name="profile" rows="3" cols="30" style="color: red">请输入描述信息！</textarea></td>
        </tr>
        <tr>
            <th colspan="2">
                <input type="submit" value="提交">&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="reset" value="重置" onclick="ts()">
            </th>
        </tr>
    </form>
</table>
</body>
<script type="text/javascript">
    var a=0;
    function ts()
    {
        a++;
        if(a==1||a==6||a==9)
        {
            document.getElementById("ss").src="picture/y1.png";
        }
        else if (a==2||a==8||a==10) {
            document.getElementById("ss").src="picture/y2.png";
        }else if (a==3||a==7||a==11) {
            document.getElementById("ss").src="picture/y3.png";
        }else if (a==4) {
            document.getElementById("ss").src="picture/y4.png";
        }else{
            document.getElementById("ss").src="picture/y5.png";
        }
    }
</script>
</html>