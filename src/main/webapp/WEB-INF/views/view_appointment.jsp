<%-- <%@page import="com.entity.User"%>
<%@page import="com.entity.Doctor"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.entity.Appointment"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.AppointmentDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
     pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@page isELIgnored="false"%> 
--%>
<!DOCTYPE html> 
<html>
<head>
<meta charset="UTF-8">
<title>View Appointment</title>
</head>
<body>
<%@include file="component/allcss.jsp"%>
<style type="text/css">
 .paint-card { 
 	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3); 
 }

.backImg {
 	background: linear-gradient(rgba(0, 0, 0, .4), rgba(0, 0, 0, .4)), 
		url("img/hospital.jpg"); 
 	height: 20vh; 
 	width: 100%; 
 	background-size: cover; 
  	background-repeat: no-repeat; 
 } 
 .ff {
 	margin-top: 80px;
 	margin-left: 220px;
 }
 .ff1{
 	color: #48b4e0;
 }
 body{
	background-image: url("img/v7.jpg");
	background-size: cover;
}
</style> 
</head>
<body>

	<c:if test="${empty userObj }">
		<c:redirect url="user_login.jsp"></c:redirect>
	</c:if>
	<%@include file="component/navbar.jsp"%>

<!-- 	<div class="container-fulid backImg p-5"> -->
<!-- 		<p class="text-center fs-2 text-white"></p> -->
<!-- 	</div> -->

	<div class="container p-3 ff">
		<div class="row">
			<div class="col-md-9">
				<div class="card paint-card">
					<div class="card-body ">
						<p class="fs-4 fw-bold text-center ff1">Appointment
							List</p>
						<table class="table">
							<thead>
								<tr>
									<th scope="col">Full Name</th>
									<th scope="col">Gender</th>
									<th scope="col">Age</th>
									<th scope="col">Appointment Date</th>
									<th scope="col">Diseases</th>
									<th scope="col">Doctor Name</th>
									<th scope="col">Status</th>

								</tr>
							</thead>
							<tbody>
								<%
	 								User u = (User) session.getAttribute("userObj"); 								
									AppointmentDao dao = new AppointmentDao(DBConnect.getConn()); 
	 								DoctorDao dao2 = new DoctorDao(DBConnect.getConn()); 
		 							List<Appointment> list = dao.getAllAppointmentByLoginUser(u.getId());
		 							for (Appointment ap : list) {
									Doctor d = dao2.getDoctorById(ap.getDoctorId());
								%> 
								<tr>
									<th><%=ap.getFullName()%></th>
									<td><%=ap.getGender()%></td>
									<td><%=ap.getAge()%></td>
									<td><%=ap.getAppointmentdate()%></td>
									<td><%=ap.getDiseases()%></td>
									<td><%=d.getFullName()%></td>
									<td>
										<%
 										if ("Pending".equals(ap.getStatus())) {
										%> <a href="#" class="btn btn-sm btn-warning">Pending</a> <%
										 } 
	 										else {
										 %> <%=ap.getStatus()%> <%
										 }
										 %>
									</td>
								</tr>
								<%
 								}
								%>

							</tbody>
						</table>

					</div>
				</div>
			</div>

			<div class="col-md-3 p-3">
				<img alt="" src="img/doct.jpg">
			</div>
		</div>
	</div>

</body>
</html>