<%-- <%@page import="com.db.DBConnect"%>
<%@page import="com.dao.DoctorDao"%>
		<%
		response.setHeader("Cache-Control", "no-cache");
		response.setHeader("Cache-Control", "no-store");
		response.setHeader("Pragma", "no-cache");
		response.setDateHeader("Expires", 0);
		%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<%@page import="com.entity.Doctor"%>
<%@page import="java.util.List"%>
--%>
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
						<c:if test="${not empty successMsg}">
							<p class=" fs-4 text-center text-success">${successMsg}</p>
							<c:remove var="successMsg" scope="session" />
						</c:if>
					--%>
						
						<form class="row g-3" action="addAppointment" method="post">

						<%--	<input type="hidden" name="userid" value="${userObj.id }">  --%>

							<div class="col-md-6 fw-bold">
								<label for="inputEmail4" class="form-label">Full Name</label> <input
									required type="text" class="form-control" name="fullname">
							</div>

							<div class="col-md-6 fw-bold">
								<label class="form-label">Gender</label> <select class="form-control" name="gender"
									required>
									<option value="male">Male</option>
									<option value="female">Female</option>
								</select>
							</div>

							<div class="col-md-6 fw-bold">
								<label for="inputEmail4" class="form-label">Age</label> <input
									required type="number" class="form-control" name="age">
							</div>

							<div class="col-md-6 fw-bold">
								<label for="inputEmail4" class="form-label">Appointment Date</label> <input type="date" class="form-control" required
									name="appointmentdate">
							</div>

							<div class="col-md-6 fw-bold">
								<label for="inputEmail4" class="form-label">Email</label> <input
									required type="email" class="form-control" name="email">
							</div>

							<div class="col-md-6 fw-bold">
								<label for="inputEmail4" class="form-label">Phone No</label> <input
									maxlength="10" required type="number" class="form-control"
									name="phno">
							</div>


							<div class="col-md-6 fw-bold">
								<label for="inputEmail4" class="form-label">Diseases</label> <input
									required type="text" class="form-control" name="diseases">
							</div>

							<div class="col-md-6 fw-bold">
								<label for="inputPassword4" class="form-label">Doctor</label> <select
									required class="form-control" name="doct">
									<option value="">--select--</option>

							<%-- 	<%
									DoctorDao dao = new DoctorDao(DBConnect.getConn());
									List<Doctor> list = dao.getAllDoctor();
									for (Doctor d : list) {
									%>
									<option value="<%=d.getId()%>"><%=d.getFullName()%> (<%=d.getSpecialist()%>)</option>
									<%
									}
									%>
									
								--%>	

								</select>
							</div>

							<div class="col-md-12">
								<label>Full Address</label>
								<textarea required name="address" class="form-control" rows="3"
									cols=""></textarea>
							</div>

						<%-- 	<c:if test="${empty userObj }"> --%>
								<a href="user_login.jsp" class="fw-bold col-md-6 offset-md-3 btn btn-outline-success">Submit</a>
						<%-- </c:if> --%>	

						<%-- <c:if test="${not empty userObj }">
								<button class="fw-bold col-md-6 offset-md-3 btn btn-outline-success">Submit</button>
							</c:if>
						--%>	
							
						</form>
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