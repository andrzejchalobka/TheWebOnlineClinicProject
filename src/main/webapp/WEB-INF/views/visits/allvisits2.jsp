<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<html>
<head>
    <title>Title</title>
</head>
<body>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="http://getbootstrap.com/dist/js/bootstrap.min.js"></script>

<div class="container">
    <div class="row">


        <div class="col-md-12">

            <div class="table-responsive">


                <table id="mytable" class="table table-bordred table-striped">

                    <thead>


                    <th>Client</th>
                    <th>No of visit</th>
                    <th>Doctor name</th>
                    <th>Date of Visit</th>
                    <th>Time</th>
                    <th>Specialization</th>
                    <th>Adress</th>
                    <th>Edit</th>
                    <th>Delete</th>
                    </thead>
                    <tbody>
    <c:forEach items="${visits}" var="visit">
                    <tr>

                        <td>${visit.user.fullName}</td>
                        <td>${visit.id}</td>
                        <td>${visit.doctor.fullName}</td>
                        <td>${visit.dateOfVisit}</td>
                        <td>${visit.timeOfVisit}</td>
                        <td>${visit.doctor.specialization.specialType}</td>
                        <td>${visit.institution.adress}</td>





                        <td><p data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p></td>
                        <td><p data-placement="top" data-toggle="tooltip" title="Delete"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></p></td>
                    </tr>
                    </c:forEach>

                    </tbody>

                </table>

                <%--<div class="clearfix"></div>--%>
                <%--<ul class="pagination pull-right">--%>
                    <%--<li class="disabled"><a href="#"><span class="glyphicon glyphicon-chevron-left"></span></a></li>--%>
                    <%--<li class="active"><a href="#">1</a></li>--%>
                    <%--<li><a href="#">2</a></li>--%>
                    <%--<li><a href="#">3</a></li>--%>
                    <%--<li><a href="#">4</a></li>--%>
                    <%--<li><a href="#">5</a></li>--%>
                    <%--<li><a href="#"><span class="glyphicon glyphicon-chevron-right"></span></a></li>--%>
                <%--</ul>--%>

            </div>

        </div>
    </div>
</div>


<div class="modal fade" id="edit" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
                <h4 class="modal-title custom_align" id="Heading">Edit Your Detail</h4>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <input class="form-control " type="text" placeholder="Mohsin">
                </div>
                <div class="form-group">

                    <input class="form-control " type="text" placeholder="Irshad">
                </div>
                <div class="form-group">
                    <textarea rows="2" class="form-control" placeholder="CB 106/107 Street # 11 Wah Cantt Islamabad Pakistan"></textarea>


                </div>
            </div>
            <div class="modal-footer ">
                <button type="button" class="btn btn-warning btn-lg" style="width: 100%;"><span class="glyphicon glyphicon-ok-sign"></span> Update</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>




</div>
</body>
</html>

</body>
</html>
