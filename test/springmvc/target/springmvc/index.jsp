<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script  type="text/javascript" src="<%= request.getContextPath()%>/js/jquery-3.2.1.min.js"></script>
</head>
<body>
<form id="loginform" method="post" action="<%= request.getContextPath()%>/user/login">
<table align="center" valign="middle" bgcolor="#fff8dc" style="margin-top: 123px">
    <tr >
        <td>用户名</td>
        <td><input type="text" style="width: 150px" name="userName" /></td>
    </tr>
    <tr></tr>
    <tr>
        <td>密&nbsp;&nbsp;&nbsp;&nbsp;码</td>
        <td ><input type="password" style="width: 150px" name="passWord" /></td>
    </tr>

    <tr>
        <td colspan="2" align="center">  <input type="submit"  title="login" value="登陆"/></td>
    </tr>
</table>
</form>
</body>
<script type="text/javascript">
    var xmlHttpReq ;
    function test(){
        var data = $("loginform").serialize();
        alert(data);
        createXMLHttpRequest();
        var url ="<%= request.getContextPath()%>/user/login";
        xmlHttpReq.open("post",url);
        xmlHttpReq.send(data);
        xmlHttpReq.onreadystatechange=function(a){
            if(xmlHttpReq.readyState =4 && xmlHttpReq.status==200){
               window.location.href="loginSuccess.jsp"
            }else{
                alert("失败！");
            }
        }
    }
    function createXMLHttpRequest(){

        if(window.ActiveXObject){
            xmlHttpReq = new ActiveXObject("Microsoft.XMLHTTP");
        }else if(window.XMLHttpRequest){
            xmlHttpReq = new XMLHttpRequest()
        }
    }
</script>
</html>
