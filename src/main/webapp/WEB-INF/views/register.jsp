<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<html>
<head>
    <title>Zarejestruj sie</title>
</head>
<body>
<form:form method="post" modelAttribute="user">

    First Name : <br><form:input path="name"/><br>

    Last Name : <br><form:input path="lastName"/><br>

    Email : <br><form:input path="email"/><br>

    Pass : <br><form:password path="password"/><br>

    <form:errors path="*"/>

    <%--<form:hidden path="id"/>--%>

    <input type="submit" value="Register now!"/>

</form:form>
</body>
</html>
