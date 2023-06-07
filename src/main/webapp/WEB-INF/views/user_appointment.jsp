<%-- <%@page import="com.db.DBConnect"%>
<%@page import="com.dao.DoctorDao"%>
		<%
		response.setHeader("Cache-Control", "no-cache");
		response.setHeader("Cache-Control", "no-store");
		response.setHeader("Pragma", "no-cache");
		response.setDateHeader("Expires", 0);
		%>

<%@page isELIgnored="false"%>
<%@page import="com.entity.Doctor"%>
<%@page import="java.util.List"%>
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Appointment</title>
</head>
<body>
<%@include file="component/allcss.jsp"%>
<style>
.paint-card {
	box-shadow: 0 0 8px 0 rgba(0, 0, 0, 0.3);
}

/* .backImg { */
/*  	background: linear-gradient(rgba(0, 0, 0, .4), rgba(0, 0, 0, .4)),  */
/* 		url("img/hospital.jpg"); */
/* 	height: 20vh; */
/* 	width: 100%; */
/* 	background-size: cover; */
/* 	background-repeat: no-repeat; */
/* } */
.b1{
	border-style: ridge;
	border-radius: 10px;
	color: #48b4e0;
	border-color: #48b4e0;
	border-width: 4px;
}
.cc{
	color: #48b4e0;
}
.btn-outline-success{
	background-color: white;
	color: #48b4e0;
	border-color: #48b4e0;
	border-style: ridge;
	border-width: 3px;
}
.btn-outline-success:hover{
	background-color: #48b4e0;
	color: white;
	border-color: #48b4e0;
}
.col-md-6{
	color: #2195c4;
	
}
body{
	background-image: url("img/v7.jpg");
	background-size: 100%;
}
</style>
</head>
<body>
	<%@include file="component/navbar.jsp"%>

	<div class="container-fluid backImg p-4">
		<p class="text-center fs-2 text-white"></p>
	</div>
	<div class="container p-3 cc">
		<div class="row offset-md-4">

			<div class="col-md-6 fw-bold">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fw-bold text-center fs-3 container-fulid b1">User Appointment</p>
						
					<%-- 	<c:if test="${not empty errorMsg}">
							<p class="fs-4 text-center text-danger">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>
						--%>
						<c:if test="${not empty sessionScope.successMessage}">
							<p class=" fs-4 text-center text-success">${successMessage}</p>
							<c:remove var="successMessage" scope="session" />
						</c:if>
					
						
						<form:form class="row g-3" action="/appointments/addAppointment" method="POST" modelAttribute="appointment">

							<form:hidden name="userId" value="${user.getId()}" path="userId"/>

							<div class="col-md-6 fw-bold">
								<label for="inputEmail4" class="form-label">Full Name</label> 
								<form:input
									required="true" path="fullName" type="text" class="form-control" name="fullname"/>
							</div>

							<div class="col-md-6 fw-bold">
								<label class="form-label">Gender</label> 
								<form:select class="form-control" name="gender"
									required="true" path="gender">
									<form:option value="male" label="Male"/>
									<form:option value="female" label="Female"/>
								</form:select>
							</div>

							<div class="col-md-6 fw-bold">
								<label for="inputEmail4" class="form-label">Age</label> 
								<form:input
									required="true" type="number" class="form-control" name="age" path="age"/>
							</div>

							<div class="col-md-6 fw-bold">
								<label for="inputEmail4" class="form-label">Appointment Date</label> 
								<form:input type="date" class="form-control" required="true"
									name="appointmentdate" path="appointmentdate"/>
							</div>

							<div class="col-md-6 fw-bold">
								<label for="inputEmail4" class="form-label">Email</label> 
								<form:input
									required="true" type="email" class="form-control" name="email" path="email"/>
							</div>

							<div class="col-md-6 fw-bold">
								<label for="inputEmail4" class="form-label">Phone No</label> 
								<form:input
									maxlength="10" minlength="10" type="text" required="true" class="form-control"
									name="phno" path="phNo"/>
							</div>


							<div class="col-md-6 fw-bold">
								<label for="inputEmail4" class="form-label">Diseases</label>
								<form:input
									required="true" type="text" class="form-control" name="diseases" path="diseases"/>
							</div>

							<div class="col-md-6 fw-bold">
								<label for="inputPassword4" class="form-label">Doctor</label> 
								<form:select
									required="true" class="form-control" name="doctorId" path="doctorId">
									<form:option value="" label="--select--"/>

									<c:forEach items="${doctorList}" var="doctor">
        									<form:option value="${doctor.getId()}" label="${doctor.getFullName()} (${doctor.getSpecialist()})"/>
    								</c:forEach>
								</form:select>
							</div>

							<div class="col-md-12">
								<label>Full Address</label>
								<form:textarea required="true" name="address" class="form-control" rows="3"
									cols="" path="address"/>
							</div>

							<c:if test="${empty sessionScope.user}">
								<a href="/users/userLogin" class="fw-bold col-md-6 offset-md-3 btn btn-outline-success">Submit</a>
						 </c:if>	

						<c:if test="${not empty sessionScope.user }">
								<button class="fw-bold col-md-6 offset-md-3 btn btn-outline-success">Submit</button>
						</c:if>
					
						</form:form>
					</div>
				</div>
			</div>
		</div>

	</div>
	
	<br>
	<br>
	<%@include file="component/footer.jsp"%>

</body>
</html>