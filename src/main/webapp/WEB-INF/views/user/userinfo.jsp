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
        body {
            background-image: url("/resources/img/about.jpg");

        }
        .button1 {
            display: initial;
            padding: 15px 25px;
            font-size: 14px;
            cursor: pointer;
            text-align: center;
            text-decoration: none;
            outline: none;
            color: #fff;
            background-color: #3399FF;
            border: none;
            border-radius: 15px;
            /*box-shadow: 0 9px #999;*/
            /*align-self: center;*/
            list-style-type: none;
        }

        .button1:hover {
            background-color: #b7efef;

        }

        .button1:active {
            background-color: #b7efef;
            box-shadow: 0 5px #666;
            transform: translateY(4px);

        }
        ul{
            list-style-type:none;
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
            <h5><ul>
                <li style="text-align: left"><a class="button1" href="/user/home">Home</a></li>

            </ul></h5>


        </div>
        </div>

    </div>
</div><br>


</body>
</html>
