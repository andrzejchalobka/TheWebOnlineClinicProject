<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>ALL </title>
</head>
<body>

<c:forEach items="${visits}" var="visit">

    ${visit.id}
    ${visit.user}
    ${visit.doctor.id}
    ${visit.institution.id}

</c:forEach>



<%--<c:forEach items="${users}" var="user">--%>
    <%--<tr>--%>
        <%--<td>${user.id}</td>--%>
        <%--<td>${user.firstName}</td>--%>
        <%--<td>${user.lastName}</td>--%>
        <%--<td>${user.email}</td>--%>
        <%--<td><a href="/user/edit/${user.id}">Edytuj</a>, <a href="/user/delete/${user.id}">Usuń</a></td>--%>
    <%--</tr>--%>
<%--</c:forEach>--%>


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
