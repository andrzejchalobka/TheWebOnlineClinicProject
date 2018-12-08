<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<html>
<head>
    <title>User Info</title>

    <style>
        body{
            background-image: url("/resources/img/about.jpg");
        }
        li {
            float: left;
        }

        li a {
            display: block;
            color: white;
            text-align: -moz-left;
            padding: 14px 16px;
            text-decoration: none;
        }

        li a:hover {
            background-color: #111;
        }

        .active {
            background-color: #3399FF;
        }

    </style>
</head>
<body>
<br><br>
<div class="container-fluid well span6">
    <div class="row-fluid">
        <div class="span2" >

            <img src="/resources/img/user1.png">
        </div>
        <div class="info">
        <div class="span8">


            <h3>FULL: ${loggedInUser.fullName}</h3>
            <h3>NAME: ${loggedInUser.name}</h3>
            <h3>LAST NAME: ${loggedInUser.lastName}</h3>
            <h3>E-MAIL: ${loggedInUser.email}</h3>


        </div>
        </div>

    </div>
</div><br>

<ul>
    <li style="text-align: left"><a class="active" href="/user/home">Home</a></li>

</ul>

</body>
</html>
