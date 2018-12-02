<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>


<c:forEach items="${visits}" var="visit">

    No of Visit: <br>${visit.id}<br>

    Doctor name: <br>${visit.doctor.fullName}<br>

    Date of Visit: <br>${visit.dateOfVisit}<br>
    Specialization : <br>${visit.doctor.specialization.specialType}<br>
    Institution:<br>${visit.institution.adress}<br>


</c:forEach>

<%--<c:forEach items="${specializations}" var="specializations">--%>

    <%--${institution.id}--%>
    <%--${institution.town}--%>
    <%--${institution.adress}--%>
    <%--${institution.number}--%>
    <%--${specializations.id}--%>
    <%--${specializations.specialType}--%>

<%--</c:forEach>--%>

</body>
</html>
