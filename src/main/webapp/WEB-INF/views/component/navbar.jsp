<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<style>
/* .cc{ */
/*  background-color:#006600; */
/*  } */
.navbar-nav > li{
  padding-left:30px;
  padding-right:30px;
}
.navbar{
	background-color:white;
	color: #48b4e0;
	border-bottom: 3px solid #48b4e0;
	height: 40px;
}
.nav.navbar-nav.navbar-dark li a {
    color: blue;
}
li{
	border-left: 3px solid #48b4e0;
	border-radius: 15px;
	color: #48b4e0;
}
/* li:hover{ */
/* 	background-color: #1a8cff; */
/* 	font-size: 21px; */
/* 	font-style: oblique; */
/* 	font-family: sans-sarif; */
/* 	border: none; */
	
/* } */
.navbar-brand{
	color: #48b4e0;
	border-right: #48b4e0;
	font-weight: bold;
}
.navbar-brand:hover{
	color: white;
	background: #48b4e0;
	border-radius: 5px;
	padding: 2px;
}
.navbar-nav .nav-item.active .nav-link,
.navbar-nav .nav-item .nav-link{
    color: #48b4e0;
    border-radius: 12px;
    font-weight: bold;
}
.navbar-nav .nav-item.active .nav-link,
.navbar-nav .nav-item:hover .nav-link {
    color: #f5f7f7;
    background-color: #48b4e0;
    border-radius: 12px;
}
.bt{
	background-color: white;
	color: #48b4e0;
}
.bt:hover{
	color:white;
	background-color: #48b4e0;
	
}
</style>
<nav class="navbar navbar-expand-lg navbar-dark fixed-top">
	<div class="container-fluid">
		<a class="navbar-brand" href="/"><i
			class="fas fa-clinic-medical"></i> HOME</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
			
			<c:if test="${empty sessionScope.user}">		
			
				<li class="nav-item"><a class="nav-link active"	
				aria-current="page" href="/admin/adminLogin"><i class="fas fa-sign-in-alt"></i> ADMIN</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="/doctorLogin">DOCTOR</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="/appointments/userAppointment">APPOINTMENT</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="/users/userLogin">USER</a></li>
			
			</c:if>
					
			 <c:if test="${not empty sessionScope.user}">
					<li class="nav-item"><a class="nav-link active" 
						aria-current="page" href="/appointments/userAppointment">APPOINTMENT</a></li>
						

					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="/appointment/viewAppointment">VIEW APPOINTMENT</a></li>
						

					<div class="dropdown">
						<button class="btn bt dropdown-toggle" type="button"
							id="dropdownMenuButton1" data-bs-toggle="dropdown"
							aria-expanded="false">
							<i class="fa-solid fa-circle-user "></i> ${user.getFullName()}
						</button>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
							<li><a class="dropdown-item" href="change_password.jsp">Change Password</a></li>
							<li><a class="dropdown-item" href="/users/logout">Logout</a></li>
							
						</ul>
					</div>

		</c:if>
					
			</ul>
		</div>
	</div>
</nav>