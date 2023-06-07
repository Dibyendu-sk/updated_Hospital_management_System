<%-- <%@page import="com.entity.Doctor"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.example.project.demo.ENTITY.Specialist"%>
<%@page import="java.util.List"%>
<%@page import="com.example.project.demo.REPOSITORY.SpecialistRepo"%>--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
     pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Doctor Add Page</title>
<%@include file="../component/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
.b2{
	border-style: ridge;
	border-radius: 10px;
	color: #48b4e0;
	border-color: #48b4e0;
	border-width: 4px;
}
body{
	background-image: url("../img/v7.jpg");
	background-size: 100%;
}
.btn-outline-primary{
	background-color: white;
	color: #48b4e0;
	border-color: #48b4e0;
}
.btn-outline-primary:hover{
	background-color: #48b4e0;
	color: white;
	border-color: #48b4e0;
}
.mb-3{
	color: #48b4e0;
	font-weight: bold;
}
</style> 
</head>
<body>
	<%@include file="navbar.jsp"%>
	<br>
	<br>
	<br>
	<div class="container-fluid p-3">
		<div class="row">

			<div class="col-md-4 offset-md-4">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-3 text-center container-fluid b2 fw-bold">Add Doctor</p>
						
						<c:if test="${not empty sessionScope.errorMsg}">
							<p class="fs-3 text-center text-danger">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>
						<c:if test="${not empty sessionScope.successMsg}">
							<div class="fs-3 text-center text-success" role="alert">${successMsg}</div>
							<c:remove var="successMsg" scope="session" />
						</c:if>
						
						<form:form method="POST" action="/admin/addDoctor" modelAttribute="doctor">
							<div class="mb-3">
									<label for="fullName" class="form-label">Full Name:</label>
								    <form:input type="text" path="fullName" name="fullName" required="true" class="form-control"/>
							</div>

							<div class="mb-3">
									<label for="dob" class="form-label">DOB:</label>
								    <form:input type="date" path="dob" name="dob" required="true" class="form-control"/>
							</div>

							<div class="mb-3">
								<label for="qualification" class="form-label">Qualification</label>
								    <form:input type="text" path="qualification" name="qualification" required="true" class="form-control"/>
							</div>
							<div class="mb-3">
								<label for="specialist" class="form-label">Specialist</label>
								    <form:select path="specialist" name="specialist" required="true" class="form-control">
								    	 <form:option value="" label="--select--" />
								    	 <form:options items="${sessionScope.sList}" />
								    </form:select>
								
								<%--<label class="form-label">Specialist</label> <select name="spec"
									required class="form-control">
									<option>--select--</option>

								 	<% SpecialistRepo sr=new SpecialistRepo();
									List<Specialist> list = sr.findAll();
									for (String s : ${sessionScope.sList}) {%> 
											<option><%=s%></option>
									<%}
									
									%>  
									
									<c:forEach var="item" items="${sessionScope.sList}">
            							<option>${item}</option>
        							</c:forEach>

								</select> --%>
							</div>

							<div class="mb-3">
								<label for="email" class="form-label" >Email</label>
								<form:input type="email" path="email" required="true" name="email" class="form-control"/>
							</div>

							<div class="mb-3">
								
								<label for="MobileNumber" class="form-label">Mobile Number</label> 
								<form:input type="number" path="MobileNumber" name="mobilenumber" class="form-control" required="true"/>
							</div>

							<div class="mb-3">
								<label for="password" class="form-label">Password</label> 
								<form:input required="true"
									path="password" name="password" type="password" class="form-control"/>
							</div>
							
							<button type="submit" class="btn col-md-10 offset-md-1 btn-outline-primary fw-bold">Submit</button>
						</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>
	
</body>
</html>