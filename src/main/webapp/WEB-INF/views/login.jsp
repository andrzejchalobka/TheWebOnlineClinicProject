<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>



<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<html>
<head>
    <title>LOGIN</title>
</head>
<body>
<form action="/login" method="post">
    <input type="text" id="username" name="email" placeholder="email"/>
    <br>
    <input type="password" id="password" name="password" placeholder="password" />
    </br>
    <%--<form:errors path="*"/>--%>
    <input type="submit" value="Log In">


</form>
</body>
</html>
