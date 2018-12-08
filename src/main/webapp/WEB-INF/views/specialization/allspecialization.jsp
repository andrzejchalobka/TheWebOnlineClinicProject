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
    <h3>SPECIALIZATION PANEL</h3><br>
    <h6><a href="/user/home">BACK TO ADMIN PANEL</a></h6>

</div>

<table class="table-fill">
    <thead>
    <tr>
        <th class="text-left">ID</th>
        <th class="text-left">TYPE</th>
        <th class="text-left">EDIT</th>
        <th class="text-left">ERASE</th>



        <c:forEach items="${specializations}" var="specializations">
    </tr>
    </thead>
    <tbody class="table-hover">
    <tr>
        <td class="text-left">${specializations.id}</td>
        <td class="text-left">${specializations.specialType}</td>



        <td class="text-left"><a href="/admin/specialization/edit/${specializations.id}"><img src="/resources/img/edit.png"
                                                                                       alt="Edit"
                                                                                       style="width:22px;height:22px;border:0"></a>
        </td>
        <td class="text-left"><a href="/admin/specialization/delete/${specializations.id}"><img src="/resources/img/126831.svg"
                                                                                         alt="Erase"
                                                                                         style="width:22px;height:22px;border:0"></a>
        </td>


    </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
