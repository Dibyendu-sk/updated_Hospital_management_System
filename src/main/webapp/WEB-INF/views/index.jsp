<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main Page </title>
<%@include file="component/allcss.jsp"%>

<style type="text/css">
section.speciality .specialServices .cardBox a:hover{
	color: #48b4e0;
}
section.speciality .specialServices .cardBox .title{
	color: #48b4e0;
}
section.speciality .specialServices .cardBox {
		border-radius: 25px;
	
}

section.speciality .specialServices .cardBox{
	border-top: 5px solid #48b4e0;
	
}
section.speciality .specialServices .cardBox:hover {
	        box-shadow: inset 0px 0px 10px rgba(72,180,224,0.3),
	1px 1px 30px rgba(72,180,224,0.3);
	border: 5px solid #48b4e0;
	        
}
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
	
}
.f1{
	background-color: #48b4e0;
	color: white;
}
.t1{
	background-color: #48b4e0;
	color: white;
	font-weight: bold;
	margin-bottom: 50px;
	border-radius: 9px;
}
.ff{
	margin-bottom: 100px;
}
.f2{
	background-color: #48b4e0;
	color: white;
}
/* .cc{ */
/* 	background-color: #006600; */
/* } */
</style>
</head>
<body>
	<%@include file="component/navbar.jsp"%> 
	
<%--  	<% Connection conn=DBConnect.getConn();
 		out.print(conn); %>  --%>

	<div id="carouselExampleIndicators" class="carousel slide"
		data-bs-ride="carousel" data-interval="1000">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="0" class="active" aria-current="true"
				aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="2" aria-label="Slide 3"></button>
		</div>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="img/hoii.jpg" class="d-block w-100" alt="..."
					height=600px, width=100%>
			</div>
			<div class="carousel-item">
				<img src="img/hosi2.jpg" class="d-block w-100" alt="..."
					height=600px>
			</div>
			<div class="carousel-item">
				<img src="img/hosi3.jpg" class="d-block w-100" alt="..."
					height=600px, width=100%>
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>

	<div class="container p-3">
		<p class="text-center fs-1 text-light bg text-dark">Key Features of our Hospital</p>

		<div class="row">
		<div class="col-md-4">
				<img alt="" src="img/doct2.png" width="500px" height="500px">
			</div>
			
			<div class="col-md-5 offset-md-1">
			<br><br>
				<div class="row">
					<div class="col-md-6">
						<div class="card paint-card f1">
							<div class="card-body">
								<p class="fs-5">100% Safety</p>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									Voluptatem, inventore</p>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="card paint-card f1">
							<div class="card-body">
								<p class="fs-5">Clean Environment</p>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									Voluptatem, inventore</p>
							</div>
						</div>
					</div>
					<div class="col-md-6 mt-2">
						<div class="card paint-card f1">
							<div class="card-body">
								<p class="fs-5">Friendly Doctors</p>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									Voluptatem, inventore</p>
							</div>
						</div>
					</div>
					<div class="col-md-6 mt-2">
						<div class="card paint-card f1">
							<div class="card-body">
								<p class="fs-5">Medical Research</p>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									Voluptatem, inventore</p>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>

	<div class="container p-2"
	style="
    font-family: ui-monospace;">
    <section class="speciality" style="margin-top: -10px;">
    <div class="container">
        <div class="row">
<!--             <div class="col-lg-12 col-12"> -->
<!--                 <div class="title" style="text-transform: uppercase;">All Speciality</div> -->
<!--             </div> -->
            <div class="col-12 col-lg-12 ">
                <div class="specialServices">
						 <div class="cardBox">
                        <div class="icons"><img src="img/image.png" class="img-fluid"/></div>
                        <div class="title">Cardiology</div>
                  
                        <a href='#'>read more</a>
		                        
                    	</div>
                    	
                            <div class="cardBox">
                        <div class="icons"><img src="img/image(7).png" class="img-fluid"/></div>
                        <div class="title">Orthopaedics</div>
                     
                        <a href='#'>read more</a>
                    </div>
                                        <div class="cardBox">
                        <div class="icons"><img src="img/image(5).png" class="img-fluid"/></div>
                        <div class="title">Neurology</div>
                   
                        <a href='#'>read more</a>
                    </div>
                                        <div class="cardBox">
                        <div class="icons"><img src="img/image(2).png" class="img-fluid"/></div>
                        <div class="title">Gastrology</div>
                     
                        <a href='#'>read more</a>
                    </div>
                                        <div class="cardBox">
                        <div class="icons"><img src="img/image(6).png" class="img-fluid"/></div>
                        <div class="title">Oncology</div>
                                      
                        <a href='#'>read more</a>
                    </div>
                                        <div class="cardBox">
                        <div class="icons"><img src="img/image(8).png" class="img-fluid"/></div>
                        <div class="title">Pulmonology</div>
                    
                        <a href='#'>read more</a>
                    </div>
                                        <div class="cardBox">
                        <div class="icons"><img src="img/image(4).png" class="img-fluid"/></div>
                        <div class="title">Mental Health</div>
                  
                        
                    
                        <a href='#'>read more</a>
                    </div>
                                        <div class="cardBox">
                        <div class="icons"><img src="img/image(9).png" class="img-fluid"/></div>
                        <div class="title">Radiology</div>
                      
                       
                        <a href='#'>read more</a>
                    </div>
                                        <div class="cardBox">
                        <div class="icons"><img src="img/image(3).png" class="img-fluid"/></div>
                        <div class="title">Laboratory S...</div>
                        <p></p>
                        <a href='#' Class="pal">read more</a>
                    </div>
                                        <div class="cardBox">
                        <div class="icons"><img src="img/image(1).png" class="img-fluid"/></div>
                        <div class="title">Emergency an...</div>
                        <p></p>
                        <a href='#'>read more</a>
                    </div>
                                        <div class="cardBox">
                        <div class="icons"><img src="img/image(10).png" class="img-fluid"/></div>
                        <div class="title">Urology</div>
                  		<p></p>
                        <a href='#'>read more</a>
                    </div>
                                        <div class="cardBox">
                        <div class="icons"><img src="img/image(10).png" class="img-fluid"/></div>
                        <div class="title">Nephrology</div>
                        <p></p>
                        <a href='#'>read more</a>
                       </div>
                                        
                </div>
                <div class="viewBtn text-center">
                </div>
            </div>
        </div>
    </div>
 </section>

</div>
	<div class="container p-2 ff">
		<p class="text-center fs-1 t1">Our Team</p>
		
		<div class="row">
			<div class="col-md-3">
				<div class="card paint-card f2">
					<div class="card-body text-center">
						<img src="img/doc5.jpg" width="250px" height="300px">
						<p class="fw-bold fs-5">SANJAY GHOSH</p>
						<p class="fs-7">(CEO & Chairman)</p>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card paint-card f2">
					<div class="card-body text-center">
						<img src="img/doc2.jpg" width="250px" height="300px">
						<p class="fw-bold fs-5">Dr. ARNUABHA SENGUPTA</p>
						<p class="fs-7">(Chief Doctor)</p>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card paint-card f2">
					<div class="card-body text-center">
						<img src="img/doc4.jpg" width="250px" height="300px">
						<p class="fw-bold fs-5">Dr. SAIBAL GHOSH</p>
						<p class="fs-7">(Chief Doctor)</p>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card paint-card f2">
					<div class="card-body text-center">
						<img src="img/doc3.jpg" width="250px" height="300px">
						<p class="fw-bold fs-5">Dr. SWATI KUMARI</p>
						<p class="fs-7">(Chief Doctor)</p>
					</div>
				</div>
			</div>
			
			

		</div>

	</div>


<%@include file="component/footer.jsp" %>
	
</body>
</html>