<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<html>
<head>
    <title>STRONA GLOWNA</title>
    <style>
        body {
            font-size: 18px;
        }

        ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            background-color: #333;
            position: -webkit-sticky; /* Safari */
            position: sticky;
            top: 0;
        }

        li {
            float: left;
        }

        li a {
            display: block;
            color: white;
            text-align: center;
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

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="http://getbootstrap.com/dist/js/bootstrap.min.js"></script>


<ul>
    <li><a class="active" href="#home">Home</a></li>
    <li><a href="#Doctor">Twoj Profil</a></li>
    <li><a href="#Doctor">Twoi Lekarze</a></li>
    <li><a href="#Search">Sprawdz nasza placowke</a></li>
    <li><a href="#Institution">Skontaktuj sie z nami</a></li>
    <li style="float:right"><a class="active" href="#about">Logout</a></li>
</ul>

</body>
</html>

</body>
</html>
