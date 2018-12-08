<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<link rel="stylesheet" href="/resources/css/logreg.css">

<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css">

    <!-- Website CSS style -->
    <link rel="stylesheet" type="text/css" href="assets/css/main.css">

    <!-- Website Font style -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">

    <!-- Google Fonts -->
    <link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>
    <jsp:include page="admin/mainforlog.jsp"/>
    <title>LOGIN</title>

</head>
<body>


<%--<form action="/login" method="post">--%>
    <%--<input type="text" id="username" name="email" placeholder="email"/>--%>
    <%--<br>--%>
    <%--<input type="password" id="password" name="password" placeholder="password" />--%>
    <%--</br>--%>

    <%--<input type="submit" value="Log In">--%>

<%--</form>--%>

<div class="container">
    <div class="row main">
        <div class="panel-heading">
            <div class="panel-title text-center">
                <h1 class="title">Please Log in ! </h1>
                <hr />
            </div>
        </div>
        <div class="main-login main-center">
            <form class="form-horizontal" method="post" action="/login">


                <div class="form-group">
                    <label for="email" class="cols-sm-2 control-label">Email</label>
                    <div class="cols-sm-10">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
                            <%--<input type="text" class="form-control" name="email" id="email"  placeholder="Enter your Email"/>--%>
                            <input type="text" id="username" name="email" placeholder="email"/>
                        </div>
                    </div>
                </div>


                <div class="form-group">
                    <label for="password" class="cols-sm-2 control-label">Password</label>
                    <div class="cols-sm-10">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                            <input type="password" id="password" name="password" placeholder="password" />
                            <%--<input type="password" class="form-control" name="password" id="password"  placeholder="Enter your Password"/>--%>
                        </div>
                    </div>
                </div>



                        <input class ="button1" type="submit" value="Log In" >

            </form>
        </div>
    </div>
</div>

<%--<script type="text/javascript" src="assets/js/bootstrap.js"></script>--%>
</body>




</html>
