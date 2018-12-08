<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<link rel="stylesheet" href="/resources/css/openingpage.css">


<jsp:include page="/user/main" />
<head>
    <title>You are logged as : ${loggedInUser.name}</title>
</head>
<body>
<%--${user}--%>
<div style="text-align: center">
    Welcome <strong>${loggedInUser.name}</strong>
    Yours current e-mail adress <strong>${user}</strong>
</div>
</body>
</html>
