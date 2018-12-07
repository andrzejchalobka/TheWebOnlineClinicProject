<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<link rel="stylesheet" href="/resources/css/registersucces.css">
<html>
<head>
    <title>GRATULACJE SIE ZAREJESTROWALES</title>

</head>
<body>
<jsp:include page="admin/main.jsp"/>
<div class="main">

    ${successMessage}<br>

    User Name : <strong>${user.name}<br></strong>
    User Last Name : <strong>${user.lastName}<br></strong>
    <br>Have been added to our database. <br>

    Please check Your E-mail adress for more details : <strong>${user.email}</strong>


</div>
<a href="/login" class="button1"/>Login</a><br>

</body>
</html>
