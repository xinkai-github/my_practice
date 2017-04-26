<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
</head>
<body>
<table align="center" valign="middle" bgcolor="#fff8dc" style="margin-top: 123px">
    <tr >
        <td>用户名</td>
        <td><input type="text" style="width: 150px"/></td>
    </tr>
    <tr></tr>
    <tr>
        <td>密&nbsp;&nbsp;&nbsp;&nbsp;码</td>
        <td ><input type="password" style="width: 150px"/></td>
    </tr>

    <tr>
        <td colspan="2" align="center">  <input type="button" onclick="test()" title="login" value="登陆"/></td>
    </tr>
</table>
</body>
<script type="text/javascript">
    var xmlHttpReq ;
    function test(){
        createXMLHttpRequest();
        var url ="http://localhost:8080/springmvc/user/login";
        xmlHttpReq.open("post",url);
        xmlHttpReq.send();
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
