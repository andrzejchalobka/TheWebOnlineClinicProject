
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Add User</title>
</head>
<body>

<form:form method="post" modelAttribute="user">

    Name: <br><form:input path="name"/>
    Last name: <br><form:input path="lastName"/>
    Email: <br><form:input path="email"/>
    Password: <br><form:input path="password"/>



    <form:errors path="*"/>
    <form:hidden path="id"/>
    <input type="submit" value="Add User"/>

</form:form>

</body>
</html>
