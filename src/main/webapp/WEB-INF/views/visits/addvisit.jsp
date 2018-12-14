
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link rel="stylesheet" href="/resources/css/formforvisit.css">
<head>
    <title>Add Visit</title>
</head>
<body>

<div class="container">
    <div class="row">
        <form:form method="post" modelAttribute="visit" role="form" class="col-md-9 go-right">

            <h2>Add Visit</h2>

            <div class="form-group">
                <%--<h3>Add a Date </h3>--%>
                <form:input path="dateOfVisit" type="date" class="form-control"/>
                <%--<input id="specialType" name="specialType" type="specialType" class="form-control" required>--%>
<%----%>
                <label for="dateOfVisit">Add a date</label>
            </div>


            <div class="form-group">
                <h3>Add a Time </h3>
                <form:select path="timeOfVisit" items="${hours}" itemValue="hourMinute" itemLabel="hourMinute"/></br>
                <%--<input id="specialType" name="specialType" type="specialType" class="form-control" required>--%>
<%----%>
               <%--<br> <label for="timeOfVisit">Add a time</label>--%>

            </div>
            <div class="form-group">
                <h3>Add a Doctor</h3>
                <form:select path="doctor.id" items="${doctors}" itemValue="id" itemLabel="fullName"/>
                    <%--<input id="specialType" name="specialType" type="specialType" class="form-control" required>--%>
                    <%----%>
                    <%--<label for="doctor.id">Add a specialization</label>--%>

            </div>

            <div class="form-group">
                <h3>Add a Institution</h3>
                <form:select path="institution.id" items="${institutions}" itemValue="id" itemLabel="AllAdress"/>
                    <%--<input id="specialType" name="specialType" type="specialType" class="form-control" required>--%>
                    <%----%>
                    <%--<label for="specialType">Add a specialization</label>--%>

            </div>










            <form:errors path="*"/>
            <form:hidden path="id"/>
            <input type="submit" value="Add Visit"/>

        </form:form>
    </div>
</div>




</body>
</html>
