<%--
  Created by IntelliJ IDEA.
  User: andrzej
  Date: 01.12.18
  Time: 16:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Add Doctor</title>
</head>
<body>

<form:form method="post" modelAttribute="doctor">


    Name :<br><form:input path="name"/><br>

    Surname: <br><form:input path="surname"/><br>


    Specizalization : <br><form:select path="specialization.id" items="${specialization}" itemValue="id" itemLabel="specialType"/><br>


    <form:errors path="*"/>
    <form:hidden path="id"/>
    <input type="submit" value="Add Doctor"/>

</form:form>

</body>
</html>
