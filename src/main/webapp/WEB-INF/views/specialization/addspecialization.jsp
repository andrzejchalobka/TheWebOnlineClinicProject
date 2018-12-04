<%--
  Created by IntelliJ IDEA.
  User: andrzej
  Date: 01.12.18
  Time: 14:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Add Specialization</title>
</head>
<body>

<form:form method="post" modelAttribute="specialization">

    Specialization: <br><form:input path="specialType"/>
    <form:errors path="*"/>
    <%--<form:hidden path="id"/>--%>
    <input type="submit" value="Add Specialization"/>

</form:form>


<%--<form:form method="post" modelAttribute="user">--%>
    <%--First Name : <br><form:input path="firstName"/><br>--%>
    <%--Last Name : <br><form:input path="lastName"/><br>--%>
    <%--Email : <br><form:input path="email"/><br>--%>
    <%--<form:errors path="*"/>--%>
    <%--<form:hidden path="id"/>--%>
    <%--<input type="submit" value="Send"/>--%>
<%--</form:form>--%>
</body>
</html>
