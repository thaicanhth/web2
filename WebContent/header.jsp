<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.shashi.service.impl.*, com.shashi.service.*"%>

<!DOCTYPE html>
<html>
<head>
<title>Logout Header</title>
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
	<!--Company Header Starting  -->
	<div class="container-fluid text-center"
		style="margin-top: 45px; background-image:url(data:image/jpeg;base64,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);background-size:100%;background-repeat:no-repeat; color: white; padding: 5px;">
		<h2 style="color:black">Shop Long Canh</h2>
		<h6 style="color:black">We specialize in Electronics</h6>
		<form class="form-inline" action="index.jsp" method="get">
			<div class="input-group">
				<input type="text" class="form-control" size="50" name="search"
					placeholder="Search Items" required>
				<div class="input-group-btn">
					<input type="submit" class="btn btn-danger" value="Search" />
				</div>
			</div>
		</form>
		<p align="center"
			style="color: blue; font-weight: bold; margin-top: 5px; margin-bottom: 5px;"
			id="message"></p>
	</div>
	<!-- Company Header Ending -->

	<%
	/* Checking the user credentials */
	String userType = (String) session.getAttribute("usertype");
	if (userType == null) { //LOGGED OUT
	%>

	<!-- Starting Navigation Bar -->
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.jsp"><span
					class="glyphicon glyphicon-home">&nbsp;</span>Shop Long Canh</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="login.jsp">Login</a></li>
					<li><a href="register.jsp">Register</a></li>
					<li><a href="index.jsp">Products</a></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Category <span class="caret"></span>
					</a>
						<ul class="dropdown-menu">
							<li><a href="index.jsp?type=mobile">Mobiles</a></li>
							<li><a href="index.jsp?type=tv">TVs</a></li>
							<li><a href="index.jsp?type=laptop">Laptops</a></li>
							<li><a href="index.jsp?type=camera">Camera</a></li>
							<li><a href="index.jsp?type=speaker">Speakers</a></li>
							<li><a href="index.jsp?type=tablet">Tablets</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
	</nav>
	<%
	} else if ("customer".equalsIgnoreCase(userType)) { //CUSTOMER HEADER

	int notf = new CartServiceImpl().getCartCount((String) session.getAttribute("username"));
	%>
	<nav class="navbar navbar-default navbar-fixed-top">

		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="userHome.jsp"><span
					class="glyphicon glyphicon-home">&nbsp;</span>Shop Long Canh</a>
			</div>

			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="userHome.jsp"><span
							class="glyphicon glyphicon-home">Products</span></a></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Category <span class="caret"></span>
					</a>
						<ul class="dropdown-menu">
							<li><a href="userHome.jsp?type=mobile">Mobiles</a></li>
							<li><a href="userHome.jsp?type=tv">TV</a></li>
							<li><a href="userHome.jsp?type=laptop">Laptops</a></li>
							<li><a href="userHome.jsp?type=camera">Camera</a></li>
							<li><a href="userHome.jsp?type=speaker">Speakers</a></li>
							<li><a href="userHome.jsp?type=tablet">Tablets</a></li>
						</ul></li>
					<%
					if (notf == 0) {
					%>
					<li><a href="cartDetails.jsp"> <span
							class="glyphicon glyphicon-shopping-cart"></span>Cart
					</a></li>

					<%
					} else {
					%>
					<li><a href="cartDetails.jsp"
						style="margin: 0px; padding: 0px;" id="mycart"><i
							data-count="<%=notf%>"
							class="fa fa-shopping-cart fa-3x icon-white badge"
							style="background-color: #333; margin: 0px; padding: 0px; padding-bottom: 0px; padding-top: 5px;">
						</i></a></li>
					<%
					}
					%>
					<li><a href="orderDetails.jsp">Orders</a></li>
					<li><a href="userProfile.jsp">Profile</a></li>
					<li><a href="./LogoutSrv">Logout</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<%
	} else { //ADMIN HEADER
	%>
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="adminViewProduct.jsp"><span
					class="glyphicon glyphicon-home">&nbsp;</span>Shop Long Canh</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="adminViewProduct.jsp">Products</a></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Category <span class="caret"></span>
					</a>
						<ul class="dropdown-menu">
							<li><a href="adminViewProduct.jsp?type=mobile">Mobiles</a></li>
							<li><a href="adminViewProduct.jsp?type=tv">Tvs</a></li>
							<li><a href="adminViewProduct.jsp?type=laptop">Laptops</a></li>
							<li><a href="adminViewProduct.jsp?type=camera">Camera</a></li>
							<li><a href="adminViewProduct.jsp?type=speaker">Speakers</a></li>
							<li><a href="adminViewProduct.jsp?type=tablet">Tablets</a></li>
						</ul></li>
					<li><a href="adminStock.jsp">Stock</a></li>
					<li><a href="shippedItems.jsp">Shipped</a></li>
					<li><a href="unshippedItems.jsp">Orders</a></li>
					<!-- <li><a href=""> <span class="glyphicon glyphicon-shopping-cart"></span>&nbsp;Cart</a></li> -->
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Update Items <span
							class="caret"></span>
					</a>
						<ul class="dropdown-menu">
							<li><a href="addProduct.jsp">Add Product</a></li>
							<li><a href="removeProduct.jsp">Remove Product</a></li>
							<li><a href="updateProductById.jsp">Update Product</a></li>
						</ul></li>
					<li><a href="./LogoutSrv">Logout</a></li>

				</ul>
			</div>
		</div>
	</nav>
	<%
	}
	%>
	<!-- End of Navigation Bar -->
</body>
</html>