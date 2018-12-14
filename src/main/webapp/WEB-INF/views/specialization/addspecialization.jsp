
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link rel="stylesheet" href="/resources/css/form.css">
<head>
    <title>Add institution</title>
</head>
<body>

<div class="container">
    <div class="row">
<form:form method="post" modelAttribute="specialization" role="form" class="col-md-9 go-right">

            <h2>Add Specialization</h2>

            <div class="form-group">
                <input id="specialType" name="specialType" type="specialType" class="form-control" required>

                <label for="specialType">Add a specialization</label>
            </div>


            <form:errors path="*"/>
            <form:hidden path="id"/>
            <input type="submit" value="Add Specialization"/>

        </form:form>
    </div>
</div>




</body>
</html>
