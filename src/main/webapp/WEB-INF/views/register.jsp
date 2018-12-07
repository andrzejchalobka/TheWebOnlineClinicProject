<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<link rel="stylesheet" href="/resources/css/logreg.css">

<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>


<html>
<head>
    <title>Register</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css">

    <!-- Website CSS style -->
    <link rel="stylesheet" type="text/css" href="assets/css/main.css">

    <!-- Website Font style -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">

    <!-- Google Fonts -->
    <link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>


</head>
<body>
<%--<form:form method="post" modelAttribute="user">--%>

    <%--First Name : <br><form:input path="name"/><br>--%>

    <%--Last Name : <br><form:input path="lastName"/><br>--%>

    <%--Email : <br><form:input path="email"/><br>--%>

    <%--Pass : <br><form:password path="password"/><br>--%>

    <%--<form:errors path="*"/>--%>

    <%--&lt;%&ndash;<form:hidden path="id"/>&ndash;%&gt;--%>

    <%--<input type="submit" value="Register now!"/>--%>

<%--</form:form>--%>

<div class="container">
    <div class="row main">
        <div class="panel-heading">
            <div class="panel-title text-center">
                <h1 class="title">Registration</h1>
                <hr />
            </div>
        </div>


        <div class="main-login main-center">
            <%--<form class="form-horizontal" method="post" action="#">--%>
            <form:form method="post" modelAttribute="user">


                <div class="form-group">
                    <label for="name" class="cols-sm-2 control-label">First Name</label>
                    <div class="cols-sm-10">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                            <%--<input type="text" class="form-control" name="name" id="name"  placeholder="Enter your Name"/>--%>
                            <form:input class="form-control" path="name"/>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label for="lastName" class="cols-sm-2 control-label">Last Name</label>
                    <div class="cols-sm-10">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
                                <%--<input type="text" class="form-control" name="username" id="username"  placeholder="Enter your Username"/>--%>
                            <form:input path="lastName" class="form-control"/><br>
                        </div>
                    </div>
                </div>


                <div class="form-group">
                    <label for="email" class="cols-sm-2 control-label">Email</label>
                    <div class="cols-sm-10">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
                                <form:input path="email" class="form-control"/>
                            <%--<input type="text" class="form-control" name="email" id="email"  placeholder="Enter your Email"/>--%>
                        </div>
                    </div>
                </div>



                <div class="form-group">
                    <label for="password" class="cols-sm-2 control-label">Password</label>
                    <div class="cols-sm-10">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                               <form:password path="password" class="form-control"/><br>
                            <form:errors path="*"/>
                            <%--<input type="password" class="form-control" name="password" id="password"  placeholder="Enter your Password"/>--%>
                        </div>
                    </div>
                </div>




                </div>
            <form:hidden path="id"/>
            <%--<form:errors path="*"/>--%>
                <input class ="button1" type="submit" value="Log In" >
                </div>
            </form>
        </div>
    </div>
</div>

<script type="text/javascript" src="assets/js/bootstrap.js"></script>
</form:form>
</body>
</html>
