<%@page import="com.entity.Doctor"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.entity.Specalist"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.SpecialistDao"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Doctor details</title>
<%@include file="../component/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
.b3{
	color: #002b80;
}
.table{
	color: #002b80;
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

			<div class="col-md-1"></div>
			
			<div class="col-md-10">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-3 fw-bold text-center container-fluid details b3">Doctor Details</p>
						
						<c:if test="${not empty errorMsg}">
							<p class="fs-3 text-center text-danger">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>
						<c:if test="${not empty successMsg}">
							<div class="fs-3 text-center text-success" role="alert">${successMsg}</div>
							<c:remove var="successMsg" scope="session" />
						</c:if>
						
						<table class="table">
							<thead>
								<tr>
									<th scope="col">Full Name</th>
									<th scope="col">DOB</th>
									<th scope="col">Qualification</th>
									<th scope="col">Specialist</th>
									<th scope="col">Email</th>
									<th scope="col">Mobile Number</th>
									<th scope="col">Action</th>
								</tr>
							</thead>
							<tbody>
								<%
								DoctorDao dao2 = new DoctorDao(DBConnect.getConn());
								List<Doctor> list2 = dao2.getAllDoctor();
 								for (Doctor d : list2) {
								%> 
								<tr>
									<td><%=d.getFullName()%></td>
									<td><%=d.getDob()%></td>
									<td><%=d.getQualification()%></td>
									<td><%=d.getSpecialist()%></td>
									<td><%=d.getEmail()%></td>
									<td><%=d.getMobileNumber()%></td>
									<td><a href="edit_doctor.jsp?id=<%=d.getId()%>"
										class="btn btn-sm btn-primary">Edit</a> 
										
										<a href="../deleteDoctor?id=<%=d.getId()%>"
										class="btn btn-sm btn-danger">Delete</a></td>
								</tr>
								<%
 								}
								%>


							</tbody>
						</table>

					</div>
				</div>
			</div>

		</div>
	</div>
</body>
</html>