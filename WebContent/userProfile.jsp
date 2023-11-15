<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page
	import="com.shashi.service.impl.*, com.shashi.service.*,com.shashi.beans.*,java.util.*,javax.servlet.ServletOutputStream,java.io.*"%>
<!DOCTYPE html>
<html>
<head>
<title>Profile Details</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link rel="stylesheet" href="css/changes.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body style="background-color: #E6F9E6;">

	<%
	/* Checking the user credentials */
	String userName = (String) session.getAttribute("username");
	String password = (String) session.getAttribute("password");

	if (userName == null || password == null) {

		response.sendRedirect("login.jsp?message=Session Expired, Login Again!!");
	}

	UserService dao = new UserServiceImpl();
	UserBean user = dao.getUserDetails(userName, password);
	if (user == null)
		user = new UserBean("Test User", 98765498765L, "test@gmail.com", "ABC colony, Patna, bihar", 87659, "lksdjf");
	%>



	<jsp:include page="header.jsp" />

	<div class="container bg-secondary">
		<div class="row">
			<div class="col">
				<nav  aria-label="breadcrumb" class="bg-light rounded-3 p-3 mb-4">
					<ol style="border:solid 1px black" class="breadcrumb mb-0">
						<li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
						<li class="breadcrumb-item"><a href="profile.jsp">User
								Profile</a></li>
					</ol>
				</nav>
			</div>
		</div>

		<div class="row">
			<div class="col-lg-4">
				<div class="card mb-4">
					<div class="card-body text-center">
						<img src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxIHBhESEw8PEBMQFQ8VEhAVFRUPFhUQFREWFhUSExUYHSggGBomGxUTITEhJSkrLi4uFx8zODMtNygtLisBCgoKBQUFDgUFDisZExkrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrK//AABEIAM4A9QMBIgACEQEDEQH/xAAbAAEAAgMBAQAAAAAAAAAAAAAAAwUBBAYCB//EADIQAQACAQIDBgUDAwUAAAAAAAABAgMEESExQQUSUWFxsRORocHRIkJSYoHhFBUy8PH/xAAUAQEAAAAAAAAAAAAAAAAAAAAA/8QAFBEBAAAAAAAAAAAAAAAAAAAAAP/aAAwDAQACEQMRAD8A+mAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAn0uktqZ4cI62n7eINdNi0t8vKs+s8I+q40+jpgjlvPjPFsAqK9l3nrWPnLM9lW2/wCVflK2AU1+zb15bT6Tt7tXJjtinjWY9XRsWrFo2mNwc2LXU9mxeN6fpnw6T+FXek47bTG0x0BgAAAAAAAAAAAAAAAAAAAAEmnwznyxXx5+gJtDo/8AUW3nhWPr5LqtYrG0RtEdGMdIx0iI4RD0AAAAAAAg1WmjU02nhPS3WE4DnMuOcWSYnnH/AHd5XPaOm+Ni3iP1V5eceClBkAAAAAAAAAAAAAAAAABbdk4e7hm3W3tCpdFhp8PFEeERAPYAAAAAAAAACi1+H4OpmOk8Y/vz+q9V3bFN8dZ8J2+cf4BVgAAAAAAAAAAAAAAAAA94I3zVjxtX3dE5zDPdz1n+qvu6MAAAAAAAAAABqdqRvop8pr7w22p2pO2inzmvuClGGQAAAAAAAAAAAAAAAAYdHhv8TFE+MRLnVr2Tm72Ka/x4x6SCwAAAAAAAAAAV3bF/0Vr4zv8AL/1YqHXZvjamZ6Rwj0gGuyAAAAAAAAAAAAAAAAAD3gyzgyxaOnt1h4AdHiyRlpExO8S9KPRaudPfaeNZ5x4ecLql4yV3id4nqD0AAAAAADX1eqjT18ZnlX8+QIu0tT8LF3Ynjb6R1lTPeS85LzMzvMvIAAAAAAAAAAAAAAAAAAAACXT6m2ntwnh1ieSIBdYNfTLw37s+E/aW25lLjz2xcrTHl0+QOhFNXtLJH8Z/t+Gf90v4V+v5BcPN7xjrvMxEealvr8l/3RHpGzXvabzvMzM+M8QWWp7T6U4/1T9oVtrTe28zMzPV5ZAAAAAAAAAAAAAAAAAAAAAAAGa1m1toiZmekN7B2ZNo3tPd8o4z8wV73THa/Ktp9ImV5i0lMXKses8U4KGNHkn9k/SGf9Dk/hPzj8r0BQW0t6/st7+yG0TWeMTHrwdKxasWjjET68Qc0yuc3Z1MnLes+X4V2o0VsHHbvR4x94BrgAAAAAAAAAAAAAAAAAAAJtNpbam3DhHW34Z0emnU5PKOc/aF5jpGOkREbRAI9Ppq6evCPWespgAAAAAAAABo6zs+MvGvC3h0n8Km9ZpbaY2mOcOkaut0kainhaOU/aQUgWrNbTExtMc4AAAAAAAAAAAAAAAHrHjnLkisc5eVp2Tg2rN568I9Osg3dPhjBiisdPrPikAAAAAAAAAAAAAFf2ppe/Tvxzjn5x4ql00xvCg1mH4GomOnOPSQQgAAAAAAAAAAAAARHettHOeTosNPhYoiOkRCl7Pr39ZXy3n5QvQAAAAAAAAAAAAAAFf2vi72OLfxnafSf8rBDq6d/S2jyn6cQUAwyAAAAAAD/9k=" class="rounded-circle img-fluid"
							style="width: 150px;">
						<h5 class="my-3">
							Hello
							<%=user.getName()%>
							here!!
						</h5>
						<!-- <p class="text-muted mb-1">Full Stack Developer</p>
						<p class="text-muted mb-4">Bay Area, San Francisco, CA</p> -->
					</div>
				</div>
				<div class="card mb-4 mb-lg-0">
					<div class="card-body p-0">
						<ul class="list-group list-group-flush rounded-3">

							<li
								class="text-center list-group-item d-flex justify-content-between align-items-center p-3">
								<h1>My Profile</h1>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-lg-8">
				<div class="card mb-4">
					<div class="card-body">
						<div class="row">
							<div class="col-sm-3">
								<p class="mb-0">Full Name</p>
							</div>
							<div class="col-sm-9">
								<p class="text-muted mb-0"><%=user.getName()%></p>
							</div>
						</div>
						<hr>
						<div class="row">
							<div class="col-sm-3">
								<p class="mb-0">Email</p>
							</div>
							<div class="col-sm-9">
								<p class="text-muted mb-0"><%=user.getEmail()%>
								</p>
							</div>
						</div>
						<hr>
						<div class="row">
							<div class="col-sm-3">
								<p class="mb-0">Phone</p>
							</div>
							<div class="col-sm-9">
								<p class="text-muted mb-0"><%=user.getMobile()%>
								</p>
							</div>
						</div>
						<hr>
						<div class="row">
							<div class="col-sm-3">
								<p class="mb-0">Address</p>
							</div>
							<div class="col-sm-9">
								<p class="text-muted mb-0"><%=user.getAddress()%>
								</p>
							</div>
						</div>
						<hr>
						<div class="row">
							<div class="col-sm-3">
								<p class="mb-0">PinCode</p>
							</div>
							<div class="col-sm-9">
								<p class="text-muted mb-0"><%=user.getPinCode()%>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<br>
	<br>
	<br>

	<%@ include file="footer.html"%>

</body>
</html>