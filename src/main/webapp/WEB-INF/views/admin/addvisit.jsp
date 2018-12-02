
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Add Visit</title>
</head>
<body>


<form:form method="post" modelAttribute="visit">

    Data : <br> <form:input path="dateOfVisit" type="date"/><br>



    <%--Full name: <br><form:input path="user"/><br>--%>

    <%--Institution : <br><form:input path="institution"/><br>--%>

    <%--Doctor : <br><form:input path="doctor"/><br>--%>
    <%--Specizalization : <br><form:select path="specialization.id" items="${specialization}" itemValue="id" itemLabel="specialType"/><br>--%>
    Doctor <form:select path="doctor.id" items="${doctors}" itemValue="id" itemLabel="fullName"/>

    Institution: <form:select path="institution.id" items="${institutions}" itemValue="id" itemLabel="adress"/>


    <form:errors path="*"/>
    <form:hidden path="id"/>
    <input type="submit" value="Add Visit"/>


</form:form>




<%--<form:form method="post" modelAttribute="visit">--%>


    <%--Name :<br><form:input path="name"/><br>--%>

    <%--Surname: <br><form:input path="surname"/><br>--%>


    <%--Specizalization : <br><form:select path="specialization.id" items="${specialization}" itemValue="id" itemLabel="specialType"/><br>--%>


    <%--<form:errors path="*"/>--%>
    <%--<form:hidden path="id"/>--%>
    <%--<input type="submit" value="Add Doctor"/>--%>

<%--</form:form>--%>

</body>
</html>
