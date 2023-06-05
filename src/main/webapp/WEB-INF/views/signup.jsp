<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<%@page isELIgnored="false" %>
--%>
<!DOCTYPE html>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
<meta charset="UTF-8">
<title>User Signup Page</title>
<%@include file="component/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
.cc{
	border-radius: 10px;
/* 	color: white; */
	color: white;
	background-color: #48b4e0;
}
.mb-3{
	color: #2195c4;
}
.btn-outline-success{
	background-color: white;
	color: #48b4e0;
	border-color: #48b4e0;
}
.btn-outline-success:hover{
	background-color: #48b4e0;
	color: white;
	border-color: #48b4e0;
	border-style: ridge;
	border-width: 3px;
}
body{
	background-image: url("img/v7.jpg");
	background-size: cover;
}
</style>
</head>
<body>
	<%@include file="component/navbar.jsp"%>

	<div class="container p-3" style="margin-top: 80px;">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fw-bold fs-4 text-center container-fluid cc">User Register</p>
						
						<c:if test="${not empty successMsg }">
							<p class="text-center text-success fs-1">${successMsg}</p>
						</c:if>
			<%-- 
						<c:if test="${not empty successMsg }">
							<p class="text-center text-success fs-1">${successMsg}</p>
							<c:remove var="successMsg" scope="session" />
						</c:if>
						
						<c:if test="${not empty errorMsg2 }">
							<p class="text-center text-danger fs-1">${errorMsg2}</p>
							<c:remove var="errorMsg2" scope="session" />
						</c:if>

						<c:if test="${not empty errorMsg }">
							<p class="text-center text-danger fs-1">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>
					--%>

 					<%-- 	<form action="user_register" method="post" class="fw-bold"> 
							<div class="mb-3">
								<label class="form-label">Full Name</label> <input required
									name="fullname" type="text" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">Email address</label> <input required
									name="email" type="email" class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Password</label> <input required
									name="password" type="password" class="form-control">
							</div>
							
							<div class="mb-3">
								<label class="form-label">Confirm Password</label> <input required
									name="rpassword" type="password" class="form-control">
							</div>
							
							<div class="mb-3">
								<label class="form-label">Phone Number</label> <input required
									name="number" type="number" class="form-control">
							</div>
							
							<button type="submit" class="btn btn-outline-success fw-bold col-md-12">Register</button>
							</form>
					--%>
					
							<form:form method="POST" action="/users/saveUser" class="fw-bold" modelAttribute="user">
							<div class="mb-3">
							<br>
								    <label for="fullName" class="form-label">First Name:</label>
								    <form:input type="text" path="fullName" name="fullName" required="true" class="form-control"/>
								    
								    
								    </div>
								    
								    <div class="mb-3">
								    <label for="email" class="form-label">Email Address</label>
								    <form:input type="email" path="email" name="email" required="true" class="form-control"/>
								    
								    
								    </div>
								    
								    <div class="mb-3">
								    <label for="password" class="form-label">Password</label>
								    <form:input type="password" path="password" name="password" required="true" class="form-control"/>
								    </div>

								    
								    <div class="mb-3">
								    <label for="phnumber" class="form-label">Phone Number</label>
								    <form:input type="number" path="phnumber" name="phnumber" required="true" class="form-control"/>
								    </div>
								    
								    <button type="submit" class="btn btn-outline-success fw-bold col-md-12">Register</button>
								</form:form>
								
						
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="component/footer.jsp"%>
</body>
</html>