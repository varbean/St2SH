<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/5/6 0006
  Time: 2:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>测试页面</title>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.9.1.min.js"></script>
    <script type="text/javascript">
        $(function(){
           $("#button1").click(function(){
              $("#form1").submit();
           });
        });
    </script>
</head>
<body>
    <form id="form1" action="${pageContext.request.contextPath}/test1" method="post">
        <input type="text" name="id" value="fb167c2d1c3c00330879" />
        <input type="button" id="button1" value="测试按钮" />
    </form>
    <input type="text" name="zkbh" value="${zkbh}">
</body>
</html>
