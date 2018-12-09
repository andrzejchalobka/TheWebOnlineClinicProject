<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<link rel="stylesheet" href="/resources/css/tableOfContent.css">
<link rel="stylesheet" href="/resources/css/openingpage.css">

<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="http://getbootstrap.com/dist/js/bootstrap.min.js"></script>

<jsp:include page="/user/main" />
<head>

    <meta name="viewport" content="initial-scale=1.0; maximum-scale=1.0; width=device-width;">
        <meta name='viewport' content='width=device-width, initial-scale=1'>
        <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.5.0/css/all.css' integrity='sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU' crossorigin='anonymous'>
</head>
<body>

<div style="text-align: center">
    Welcome <strong>${loggedInUser.name}</strong><br>
    Yours current e-mail adress <strong>${user}</strong><br>
</div>
<div class="table-title">
<h3>ADMIN PANEL</h3>




</div>
<table class="table-fill">
    <thead>
    <tr>
        <th class="text-left">TYPE</th>
        <th class="text-left">SHOW</th>
    </tr>
    </thead>
    <tbody class="table-hover">
    <tr>
        <td class="text-left">INSTITUTION</td>
        <td class="text-left"><a href="/admin/institution/show">
            <img src="/resources/img/eye_black-512.png" alt="LINK" style="width:22px;height:22px;border:0">
        </a></td>
    </tr>
    <tr>
        <td class="text-left">SPECIALIZATION</td>
        <td class="text-left"><a href="/admin/specialization/show">
            <img src="/resources/img/eye_black-512.png" alt="LINK" style="width:22px;height:22px;border:0">
        </a></td>
    </tr>
    <tr>
        <td class="text-left">DOCTOR</td>
        <td class="text-left"><a href="/admin/doctor/show">
            <img src="/resources/img/eye_black-512.png" alt="LINK" style="width:22px;height:22px;border:0">
        </a></td>
    </tr>
    <tr>
        <td class="text-left">USER</td>
        <td class="text-left"><a href="/admin/user/show">
            <img src="/resources/img/eye_black-512.png" alt="LINK" style="width:22px;height:22px;border:0">
        </a></td>
    </tr>
    <tr>
        <td class="text-left">VISITS</td>
        <td class="text-left"><a href="/admin/visit/show">
            <img src="/resources/img/eye_black-512.png" alt="LINK" style="width:22px;height:22px;border:0">
        </a></td>
    </tr>
    </tbody>
</table>


</body>
</html>
