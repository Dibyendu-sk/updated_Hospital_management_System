<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Password Change | User</title>
</head>
<body>
<%@include file="component/allcss.jsp"%>

<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
.ff{
	background-color: #48b4e0;
	color: white;
	border-radius: 10px;
}
.fg{
	color: #48b4e0;
	font-weight: bold;
}
.btn-primary{
	
	background-color: white;
	color: #48b4e0;
	border-color: #48b4e0;
}
.btn-primary:hover{
	background-color: #48b4e0;;
	color: white;
	border-color: #48b4e0;
	font-weight: bold;
}
body{
	background-image: url("img/v7.jpg");
	background-size: cover;
}
</style>
</head>
<body>
	<%@include file="component/navbar.jsp"%>
	<br>
	<br>
	<br>
	<br>
	<c:if test="${ empty userObj }">
		<c:redirect url="user_login.jsp"></c:redirect>
	</c:if>

	<div class="container p-4">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card paint-card">
					<div class="card-body">
					<p class="text-center fs-3 ff">Change Password</p>
					<c:if test="${not empty successMsg }">
						<p class="text-center text-success fs-3">${successMsg}</p>
						<c:remove var="successMsg" scope="session" />
					</c:if>

					<c:if test="${not empty errorMsg }">
						<p class="text-center text-danger fs-5">${errorMsg}</p>
						<c:remove var="errorMsg" scope="session" />
					</c:if>
					<div class="card-body">
						<form action="userChangePassword" method="post">
							
							<div class="mb-3 fg">
								<label>Enter Old Password</label> <input type="text"
									name="oldPassword" class="form-control" required>
							</div>
							
							<div class="mb-3 fg">
								<label>Enter New Password</label> <input type="text"
									name="newPassword" class="form-control" required>
							</div>
							<br>
							<input type="hidden" value="${userObj.id }" name="uid">
							<button class="btn btn-primary col-md-12">Change Password</button>
						</form>
					</div>
				</div>
				</div>
			</div>
		</div>
	</div>


</body>
</html>