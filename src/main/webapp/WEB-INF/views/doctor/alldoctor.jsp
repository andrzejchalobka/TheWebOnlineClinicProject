
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/user/main"/>
<html>
<link rel="stylesheet" href="/resources/css/tableOfContent.css">
<link rel="stylesheet" href="/resources/css/openingpage.css">
<head>
    <title>Title</title>
</head>
<body>
<div class="table-title">
    <h3>DOCTOR PANEL</h3><br>
    <h6><a href="/user/home">BACK TO ADMIN PANEL</a></h6>

</div>

<table class="table-fill">
    <thead>
    <tr>
        <th class="text-left">ID</th>
        <th class="text-left">NAME</th>
        <th class="text-left">SURNAME</th>
        <th class="text-left">TYPE</th>
        <th class="text-left">EDIT</th>
        <th class="text-left">ERASE</th>



        <c:forEach items="${doctors}" var="doctor">
    </tr>
    </thead>
    <tbody class="table-hover">
    <tr>
        <td class="text-left">${doctor.id}</td>
        <td class="text-left">${doctor.name}</td>
        <td class="text-left">${doctor.surname}</td>
        <%--<td class="text-left">${doctor.specialization}</td>--%>
        <%--<td class="text-left">${doctor.specialization.id}</td>--%>
        <td class="text-left">${doctor.specialization.specialType}</td>





        <td class="text-left"><a href="/admin/doctor/edit/${doctor.id}"><img src="/resources/img/edit.png"
                                                                                              alt="Edit"
                                                                                              style="width:22px;height:22px;border:0"></a>
        </td>
        <td class="text-left"><a href="/admin/doctor/delete/${doctor.id}"><img src="/resources/img/126831.svg"
                                                                                                alt="Erase"
                                                                                                style="width:22px;height:22px;border:0"></a>
        </td>


    </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<html>--%>
<%--<head>--%>
    <%--<title>Title</title>--%>
<%--</head>--%>
<%--<body>--%>

<%--<c:forEach items="${doctors}" var="doctor">--%>

    <%--${doctor.id}--%>
    <%--${doctor.name}--%>
    <%--${doctor.surname}--%>
    <%--${doctor.specialization.id}--%>


<%--</c:forEach>--%>

<%--</body>--%>
<%--</html>--%>