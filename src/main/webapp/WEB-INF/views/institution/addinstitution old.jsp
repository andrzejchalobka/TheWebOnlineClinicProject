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
    <title>Add institution</title>
</head>
<body>

<form:form method="post" modelAttribute="institution">


    Town :<br><form:input path="town"/>

    Adress: <br><form:input path="adress"/>

    Number : <br><form:input path="number"/>

    <form:errors path="*"/>
    <form:hidden path="id"/>
    <input type="submit" value="Add Institution"/>

</form:form>

</body>
</html>
