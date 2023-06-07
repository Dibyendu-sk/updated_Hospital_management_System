<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Index Page</title>
<%@include file="../component/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}

.dashboard{
		background-attachment: scroll;
		background-clip: border-box;
		background-color: #48b4e0;
		box-shadow: 0 0 10px 0 rgba(72, 180, 224, 0.6);
		border-radius: 10px;
		margin-top: 20px;
		color: white;
}
.card-body{
	color: #0066cc;
}
body{
	background-image: url("../img/v7.jpg");
	background-size: 100%;
}

</style>
</head>
<body class="body1">
	<%@include file="navbar.jsp"%>
	
	<%-- <c:if test="${ empty adminObj }">
		<c:redirect url="../admin_login.jsp"></c:redirect>
	</c:if> --%>

		<div class="container p-5">
			<p class="text-center fs-1 dashboard fw-bold"><i class="fa-solid fa-gauge"></i> Admin Dashboard</p>
		<%-- 	<c:if test="${not empty errorMsg}">
				<p class="fs-3 text-center text-danger">${errorMsg}</p>
				<c:remove var="errorMsg" scope="session" />
			</c:if>
			<c:if test="${not empty successMsg}">
				<div class="fs-3 text-center text-success" role="alert">${successMsg}</div>
				<c:remove var="successMsg" scope="session" />
			</c:if>
			
			<%
				DoctorDao dao = new DoctorDao(DBConnect.getConn());
			%> --%>
			<br>
			<div class="row">
				<div class="col-md-4">
					<div class="card paint-card " data-bs-toggle="doctor.jsp">
						<div class="card-body text-center">
							<i class="fas fa-user-md fa-3x"></i><br>
							<p class="fs-4 text-center">
								Doctor <br><%--<%=dao.countDoctor()--%>
<!-- 								Doctor <br>20 -->
							</p>
						</div>
					</div>
				</div>
	
	
	
				<div class="col-md-4">
					<div class="card paint-card">
						<div class="card-body text-center">
							<i class="fas fa-user-circle fa-3x"></i><br>
							<p class="fs-4 text-center">
								User <br><%--<%=dao.countUSer()--%>
<!-- 								User <br>50 -->
							</p>
						</div>
					</div>
				</div>
	
				<div class="col-md-4">
					<div class="card paint-card">
						<div class="card-body text-center">
							<i class="far fa-calendar-check fa-3x"></i><br>
							<p class="fs-4 text-center">
								Total Appointment <br><%--<%=dao.countAppointment()--%>
<!-- 						Total Appointment <br>5 -->
							</p>
						</div>
					</div>
				</div>
	
				<div class="col-md-4 mt-2">
	
					<div class="card paint-card " data-bs-toggle="modal"
						data-bs-target="#exampleModal">
						<div class="card-body text-center">
							<i class="far fa-calendar-check fa-3x"></i><br>
							<p class="fs-4 text-center">
								Specialist <br><%--<%=dao.countSpecialist()--%>
<!-- 										Specialist <br>8 -->
							</p>
						</div>
					</div>
	
				</div>
	
			</div>
		</div>




	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form action="../addSpecialist" method="post">

						<div class="form-group">
							<label>Enter Specialist Name</label> <input type="text"
								name="specName" class="form-control">
						</div>
						<div class="text-center mt-3">
							<button type="submit" class="btn btn-primary">Add</button>
						</div>

					</form>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>

				</div>
			</div>
		</div>
	</div>
<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
<%@include file="../component/footer.jsp" %>

</body>
</html>
