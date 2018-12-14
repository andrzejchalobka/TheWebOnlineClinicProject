<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>


<c:forEach items="${visits}" var="visit">

    User: <br>${visit.user.fullName}<br>

    No of Visit: <br>${visit.id}<br>

    Doctor name: <br>${visit.doctor.fullName}<br>

    Date of Visit: <br>${visit.dateOfVisit}<br>
    Specialization : <br>${visit.doctor.specialization.specialType}<br>
    Institution:<br>${visit.institution.adress}<br>


</c:forEach>



</body>
</html>
