<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<style>
.navbar-nav > li{
  padding-left:30px;
  padding-right:30px;
}
.navbar{
	background-color: rgba(77,80,224,0.2);
	color: white;
	text-allign: center;
	height: 40px;
}
	.navbar-brand{
	color: white;
	border: white;
	font-weight: bold;
}
.navbar-brand:hover{
	color: #48b4e0;
	background: white;
	border-radius: 5px;
	padding: 2px;
}
.navbar-nav .nav-item.active .nav-link,
.navbar-nav .nav-item .nav-link{
    color: white;
    border-radius: 12px;
    font-weight: bold;
}
.navbar-nav .nav-item.active .nav-link,
.navbar-nav .nav-item:hover .nav-link {
    color: #48b4e0;
    background-color: #f5f7f7;
    border-radius: 12px;
}
li{
	border-left: 3px solid white;
	color: #48b4e0;
	border-radius: 15px;
}
</style>
<nav class="navbar navbar-expand-lg navbar-dark fixed-top">
	<%-- <div class="container-fluid">
		<a class="navbar-brand" href="../index.jsp"><i
			class="fas fa-clinic-medical"></i> Medi Home</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>--%>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">

				<%-- <li class="nav-item"><a class="nav-link active" href="admin_index.jsp">HOME</a></li> --%>
				<li class="nav-item"><a class="nav-link active" href="/admin/addDoctorPage">DOCTOR</a></li>
				<li class="nav-item"><a class="nav-link active" href="/admin/viewDoctor">VIEW DOCTOR</a></li>
				<li class="nav-item"><a class="nav-link active" href="/admin/viewPatient">PATIENT</a></li>


			</ul>

			<form class="d-flex">
				<div class="dropdown">
					<button class="btn btn-light dropdown-toggle" type="button"
						id="dropdownMenuButton1" data-bs-toggle="dropdown"
						aria-expanded="false">Admin</button>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
						<li><a class="dropdown-item" href="admin/adminLogout">Logout</a></li>
					</ul>
				</div>
			</form>
		</div>
	</div>
</nav>