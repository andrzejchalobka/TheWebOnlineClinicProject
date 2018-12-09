
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <%--<link rel="stylesheet" href="/resources/css/logreg.css">--%>
    <link rel="stylesheet" href="/resources/css/openingpage.css">


    <jsp:include page="/user/main"/>
</head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<body>


<div class="w3-container" style="text-align: center" >

    <h2><strong>Welcome on the official site of OnLineClinicProject</strong></h2><br>


        <div style="border: 5px ridge #1C6EA4;">
    <p>Do You have an account please sign in </p>


    <a href="/login" class="button1"/>Login</a><br>

    <br><p>You don`t have an account, please free registry </p><br>

    <a href="/registration" class="button1"/>Registration</a><br>
</div>
<%--</div>--%>
</div>




</body>
</html>
