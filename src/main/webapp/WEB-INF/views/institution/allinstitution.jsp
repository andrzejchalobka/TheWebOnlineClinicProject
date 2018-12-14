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
    <h3>INSTITUTION PANEL</h3>
    <h6><a href="/user/home">BACK TO ADMIN PANEL</a></h6>
</div>

<table class="table-fill">
    <thead>
    <tr>
        <th class="text-left">ID</th>
        <th class="text-left">TOWN</th>
        <th class="text-left">ADRESS      </th>
        <th class="text-left">NUMBER</th>
        <%--<th class="text-left">ADD</th>--%>


        <th class="text-left">EDIT</th>
        <th class="text-left">ERASE</th>


        <c:forEach items="${institution}" var="institution">
    </tr>
    </thead>
    <tbody class="table-hover">
    <tr>
        <td class="text-left">${institution.id}</td>
        <td class="text-left">${institution.town}</td>
        <td class="text-left">${institution.adress}</td>
        <td class="text-left">${institution.number}</td>


        <%--<td class="text-left"><a href="/admin/institution/add"><img src="/resources/img/add.png"--%>
                                                                                       <%--alt="Add"--%>
                                                                                       <%--style="width:22px;height:22px;border:0"></a>--%>
        <%--</td>--%>

        <td class="text-left"><a href="/admin/institution/edit/${institution.id}"><img src="/resources/img/edit.png"
                                                                                       alt="Edit"
                                                                                       style="width:22px;height:22px;border:0"></a>
        </td>
        <td class="text-left"><a href="/admin/institution/delete/${institution.id}"><img src="/resources/img/126831.svg"
                                                                                         alt="Erase"
                                                                                         style="width:22px;height:22px;border:0"></a>
        </td>


    </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
