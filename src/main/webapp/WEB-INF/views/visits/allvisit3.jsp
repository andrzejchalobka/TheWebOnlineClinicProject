<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<style>
    body {
        background-color: #4CAF50;
        /*background-image: url("img_tree.png");*/
        /*background-repeat: no-repeat;*/
        /*background-position: right top;*/
        /*background-attachment: fixed;*/
    }

</style>
<head>

    <jsp:include page="/user/main" />
</head>
<body>
<style>
    body {
        /*background-color: #4CAF50;*/
        background-image: url("/resources/img/about.jpg");
        /*background-repeat: no-repeat;*/
        /*background-position: right top;*/
        /*background-attachment: fixed;*/
    }
    /* Fixed/sticky icon bar (vertically aligned 50% from the top of the screen) */
    .icon-bar {
        position: fixed;
        top: 50%;
        -webkit-transform: translateY(-50%);
        -ms-transform: translateY(-50%);
        transform: translateY(-50%);
    }

    /* Style the icon bar links */
    .icon-bar a {
        display: block;
        text-align: center;
        padding: 16px;
        transition: all 0.3s ease;
        color: white;
        font-size: 20px;
    }

    /* Style the social media icons with color, if you want */
    .icon-bar a:hover {
        background-color: #000;
    }

    .facebook {
        background: #3B5998;
        color: white;
    }

    .twitter {
        background: #55ACEE;
        color: white;
    }

    .google {
        background: #dd4b39;
        color: white;
    }

    .linkedin {
        background: #007bb5;
        color: white;
    }

    .youtube {
        background: #bb0000;
        color: white;
    }
    .content{
        color:darkblue;
        text-align:center;
    }

</style>

<!-- Load font awesome icons -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- The social media icon bar -->
<div class="icon-bar">
    <a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
    <a href="#" class="twitter"><i class="fa fa-twitter"></i></a>
    <a href="#" class="google"><i class="fa fa-google"></i></a>
    <a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a>
    <a href="#" class="youtube"><i class="fa fa-youtube"></i></a>
</div>

<div class="content">
    <h3>Sticky Social Bar</h3>
    <p>TEST</p>

</div>



</body>
</html>
