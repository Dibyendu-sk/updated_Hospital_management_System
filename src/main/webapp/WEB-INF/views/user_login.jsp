<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
--%>
<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
<meta charset="UTF-8">
<title>User Login Page</title>
<%@include file="component/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
.cc1{
	border-radius: 10px;
	background-color: #48b4e0;
	border-style: ridge;
	border-width: 4px;
	border-color: #48b4e0;
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
.mb-3{
	color: #2195c4;
}
body{
	background-image: url("img/v7.jpg");
	background-size: cover;
}
</style>
</head>
<body>
	<%@include file="component/navbar.jsp"%>

	<div class="container p-5" style="margin-top: 80px;">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fw-bold fs-4 text-center text-light cc1">User Login</p>

					<%-- 	<c:if test="${not empty successMsg }">
							<p class="text-center text-success fs-3">${successMsg}</p>
							<c:remove var="successMsg" scope="session" />
						</c:if>

						<c:if test="${not empty errorMsg }">
							<p class="text-center text-danger fs-5">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>
					--%>
						<%-- userLogin --%>
						<form action="/users/loginProcess" method="post">
							<div class="mb-3 fw-bold">
								<label class="form-label">Email address</label> <input required
									name="email" type="email" class="form-control">
							</div>

							<div class="mb-3 fw-bold">
								<label class="form-label">Password</label> <input required
									name="password" type="password" class="form-control">
							</div>
							

							<button type="submit" class="fw-bold btn btn-outline-success col-md-12">Login</button>
						</form>
						
						<%-- 
						<form:form method="POST" action="" class="fw-bold" modelAttribute="user">
								    
								    <div class="mb-3 fw-bold">
									    <label for="email" class="form-label">Email Address</label>
									    <form:input type="email" path="" name="email" required="true" class="form-control"/>
								    </div>
								    
								    <div class="mb-3 fw-bold">
									    <label for="password" class="form-label">Password</label>
									    <form:input type="password" path="" name="password" required="true" class="form-control"/>
								    </div>
								    
								    <button type="submit" class="fw-bold btn btn-outline-success col-md-12">Login</button>
								</form:form> --%>
						<br> Don't have an account? <a href="/users/signUp"
							class="text-decoration-none"> create one</a>

					</div>
				</div>
			</div>
		</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br><br>
	<%@include file="component/footer.jsp"%>
	
	
</body>
</html>