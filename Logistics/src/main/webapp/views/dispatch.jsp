<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
<head>
<meta charset="UTF-8">
<title>dispatch</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">


<style>
@import url(https://fonts.googleapis.com/css?family=Open+Sans);

html {
	height: 100%;
	/*  background-image: linear-gradient(to right top, #8e44ad 0%, #3498db 100%); */
}

nav {
	max-width: 960px;
	mask-image: linear-gradient(90deg, rgba(255, 255, 255, 0) 0%, #ffffff
		25%, #ffffff 75%, rgba(255, 255, 255, 0) 100%);
	margin: 0 auto;
	padding: 0px 0;
}

nav ul {
	text-align: center;
	background: linear-gradient(90deg, rgba(255, 255, 255, 0) 0%,
		rgba(255, 255, 255, 0.2) 25%, rgba(255, 255, 255, 0.2) 75%,
		rgba(255, 255, 255, 0) 100%);
	box-shadow: 0 0 25px rgba(0, 0, 0, 0.1), inset 0 0 1px
		rgba(255, 255, 255, 0.6);
}

nav ul li {
	display: inline-block;
}

nav ul li a {
	padding: 18px;
	font-family: "Open Sans";
	text-transform: uppercase;
	color: rgba(0, 35, 122, 0.5);
	font-size: 18px;
	text-decoration: none;
	display: block;
}

nav ul li a:hover {
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1), inset 0 0 1px
		rgba(255, 255, 255, 0.6);
	background: rgba(255, 255, 255, 0.1);
	color: rgba(0, 35, 122, 0.7);
}

.button {
	background-color: red;
	border: none;
	color: white;
	padding: 8px 14px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	cursor: pointer;
}
</style>

</head>



<body>

	<c:if test="${sessionScope.uname == null}">
		<c:redirect url="/"></c:redirect>
	</c:if>


	<nav>
	<ul>
		<li><a href="#">Home</a></li>
		<li><a href="#">About</a></li>
		<li><a href="#">Services</a></li>
		<li><a href="#">Contact</a></li>
		<li><a href="logout">logout</a></li>
	</ul>
	</nav>



	<div class="container-fluid">
		<div class="row">
			<div class="col-3"></div>
			<div class="col-6">

				<form action="status" method="post">

					<div class="form-group">
						<label for="exampleInputPassword1">PackageID</label> <input
							type="text" name="packageId" value="${packageId}"
							class="form-control" id="exampleInputPassword1" readonly>
					</div>




					<div class="form-group">
						<label for="exampleInputPassword1">EmployeeID</label> <select
							name="employeeId" class="form-control">
							<c:forEach var="employee" items="${listEmployee}"
								varStatus="status">
								<option value="${employee.employeeId}">${employee.employeeId}</option>
							</c:forEach>
						</select>

					</div>

					<div class="form-group">
						<label for="exampleInputPassword1">VehicleNo</label> <select
							name="vehicleId" class="form-control">
							<c:forEach var="vehicle" items="${listVehicle}"
								varStatus="status">
								<option value="${vehicle.vNo}">${vehicle.vNo}</option>
							</c:forEach>
						</select>

					</div>




					<button type="submit" class="button">Submit</button>
				</form>
				<div>
					<a href="package"><button class=" button">back</button></a>
				</div>
			</div>
		</div>
	</div>


</body>
</html>