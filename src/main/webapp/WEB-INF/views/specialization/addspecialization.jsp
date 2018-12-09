
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
        <%--<form:form method="post" modelAttribute="institution" >--%>
            <h2>Add Specialization</h2>

            <div class="form-group">
                <input id="specialType" name="specialType" type="specialType" class="form-control" required>

                <label for="specialType">Add a specialization</label>
            </div>


            <form:errors path="*"/>
            <form:hidden path="id"/>
            <input type="submit" value="Add Specialization"/>
            <%--<p class="bg-success" style="padding:10px;margin-top:20px;clear:both"><small><a href="http://css-tricks.com/float-labels-css/" target="_blank">Link</a> to original article</small></p>--%>
        </form:form>
    </div>
</div>


<%--<form:form method="post" modelAttribute="institution">--%>


<%--Town :<br><form:input path="town"/>--%>

<%--Adress: <br><form:input path="adress"/>--%>

<%--Number : <br><form:input path="number"/>--%>

<%--<form:errors path="*"/>--%>
<%--<form:hidden path="id"/>--%>
<%--<input type="submit" value="Add Institution"/>--%>

<%--</form:form>--%>

</body>
</html>
