<%--
  Created by IntelliJ IDEA.
  User: xinkai
  Date: 2017/4/21
  Time: 11:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>1
    <title>12sdf3</title>
</head>
<body>
<h1>123</h1>
</body>
<script type="text/javascript">
    var name = "The Window";
    var object = {
        name : "My Object",
        getNameFunc : function(){
            var that = this;
            return function (){
                return that.name;
            };
        }
    };
    var a = object.getNameFunc()
    alert(a());

</script>
</html>
