
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <link rel="stylesheet" href="/resources/css/openingpage.css">
    <jsp:include page="/user/main" />
</head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<body>
<%--<div class="mainheader" > <h1>OnLineClinicProject</h1></div>--%>


<%--<div class="w3-container" style="text-align-all: center"/>--%>
<%--&lt;%&ndash;<h2>Please log in to have a more details </h2><br>&ndash;%&gt;--%>
<%--<div class="w3-panel w3-leftbar w3-border-blue w3-pale-blue" style="all-space-treatment: center">--%>
<%--<a href="/login"> Login </a><br>--%>
<%--&lt;%&ndash;<a>You don`t have an account ? Why not to registry !</a><br>&ndash;%&gt;--%>
<%--<a href="/registration">Register</a><br>--%>
<%--</div>--%>
<%--</div>--%>

<div class="mainheader"/>
    <a href="/login"> Login </a><br>
    <a href="/registration">Register</a><br>
</div>

<div class="w3-container">
    <h2>Displaying Sections</h2>
    <p>The w3-section class adds a 16px top and bottom margin to any HTML element, and can be used to separate sections of HTML content:</p>
</div>


<div class="w3-container w3-section w3-blue" style="text-align: center">
    <h1>LINK1</h1>
</div>
<div class="w3-container w3-section w3-blue" style="text-align: center">
    <h1>LINK2</h1>
</div>


</body>
</html>
