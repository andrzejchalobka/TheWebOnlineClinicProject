<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<html>
<head>
    <title>User Info</title>
</head>
<body>
<br><br>
<div class="container-fluid well span6">
    <div class="row-fluid">
        <div class="span2" >
            <%--<img src="https://secure.gravatar.com/avatar/de9b11d0f9c0569ba917393ed5e5b3ab?s=140&r=g&d=mm" class="img-circle">--%>
        </div>

        <div class="span8">
            <h3>User Name ${user.name}</h3>
            <h6>Email: ${user.email}</h6>
            <h6>...</h6>
            <h6>...</h6>

        </div>


    </div>
</div>
</body>
</html>
