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
    <h3>USER PANEL</h3><br>
    <h6><a href="/user/home">BACK TO ADMIN PANEL</a></h6>

</div>

<table class="table-fill">
    <thead>
    <tr>
        <th class="text-left">ID</th>
        <th class="text-left">NAME</th>
        <th class="text-left">SURNANE</th>
        <th class="text-left">E-mail</th>
        <th class="text-left">PASSWORD</th>
        <th class="text-left">ERASE</th>
        <th class="text-left">DELETE</th>



        <c:forEach items="${users}" var="user">
    </tr>
    </thead>
    <tbody class="table-hover">
    <tr>
        <td class="text-left">${user.id}</td>
        <td class="text-left">${user.name}</td>
        <td class="text-left">${user.lastName}</td>
        <td class="text-left">${user.email}</td>
        <td class="text-left">${user.password}</td>





        <td class="text-left"><a href="/user/edit/${user.id}"><img src="/resources/img/edit.png"
                                                                                              alt="Edit"
                                                                                              style="width:22px;height:22px;border:0"></a>
        </td>
        <td class="text-left"><a href="/user/delete/${user.id}"><img src="/resources/img/126831.svg"
                                                                                                alt="Erase"
                                                                                                style="width:22px;height:22px;border:0"></a>
        </td>


    </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
