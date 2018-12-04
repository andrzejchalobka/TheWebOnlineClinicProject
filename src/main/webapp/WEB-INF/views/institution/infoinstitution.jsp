<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.10/css/all.css" integrity="sha384-+d0P83n9kaQMCwj8F4RJB66tzIwOKmrdb46+porD/OvrJ+37WqIM7UoBtwHO6Nlg" crossorigin="anonymous">
    <%--hr {border-top: 1px solid #000; width:50%;}--%>

    <%--a {color: #000;}--%>

    <%--a:link{text-decoration:none;}--%>

    <%--#contact2{--%>
    <%--letter-spacing:3px;--%>
    <%--}--%>



    <%--#author a{--%>
    <%--color: #fff;--%>
    <%--text-decoration: none;--%>

    <%--}--%>
</head>
<body>


<div class="container">
    <h1 class="text-center">Contact Address</h1>
    <hr>
    <div class="row">
        <div class="col-sm-8">
            <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d11880.492291371422!2d12.4922309!3d41.8902102!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x28f1c82e908503c4!2sColosseo!5e0!3m2!1sit!2sit!4v1524815927977" width="100%" height="320" frameborder="0" style="border:0" allowfullscreen></iframe>
        </div>

        <div class="col-sm-4" id="contact2">
            <h3>Sedi e Contatti</h3>
            <hr align="left" width="50%">
            <h4 class="pt-2">Sede operativa</h4>
            <i class="fas fa-globe" style="color:#000"></i> address<br>
            <h4 class="pt-2">Contatti</h4>
            <i class="fas fa-phone" style="color:#000"></i> <a href="tel:+"> 123456 </a><br>
            <i class="fab fa-whatsapp" style="color:#000"></i><a href="tel:+"> 123456 </a><br>
            <h4 class="pt-2">Email</h4>
            <i class="fa fa-envelope" style="color:#000"></i> <a href="">test@test.com</a><br>
        </div>
    </div>
</div>

</body>
</html>
