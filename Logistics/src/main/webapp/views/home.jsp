<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
	
	<style>
	.tblbg2a {
    background-image: url("https://tipac.net/wp-content/uploads/2017/05/freight-logisitics-three-trucks-on-road-1115x950_tiny.jpg");
}
	</style>
	

</head>



<body class="tblbg2a">

	<div class="container-fluid">
		<div class="row">
			<div class="col-3"></div>
			<div class="col-6">
			
					<a href="vehicle"><button class="btn btn-primary">Vehicle</button></a>
					<a href="employee"><button class="btn btn-primary">Employee</button></a>
					<a href="package"><button class="btn btn-primary">Package</button></a>
					<a href="status"><button class="btn btn-primary">Status</button></a>
					<a href="delivered"><button class="btn btn-primary">Delivered</button></a>
					
			</div>
			<div class="col-3">
			abc
					<a href="index">logout</a>
			</div>
		</div>
	</div>


</body>
</html> -->


<!DOCTYPE html>
<html>
<head>
<style>

/* body {
 background-image: url("abc.jpg");
 background-color: #cccccc;
} */
.button {
	display: inline-block;
	border-radius: 4px;
	background-color: black;
	border: none;
	color: #FFFFFF;
	text-align: center;
	font-size: 28px;
	padding: 20px;
	width: 200px;
	transition: all 0.5s;
	cursor: pointer;
	margin: 5px;
}

.button span {
	cursor: pointer;
	display: inline-block;
	position: relative;
	transition: 0.5s;
}

.button span:after {
	content: '\00bb';
	position: absolute;
	opacity: 0;
	top: 0;
	right: -20px;
	transition: 0.5s;
}

.button:hover span {
	padding-right: 25px;
}

.button:hover span:after {
	opacity: 1;
	right: 0;
}

@import url(https://fonts.googleapis.com/css?family=Open+Sans);

html {
	height: 100%;
	background-image: linear-gradient(to right top, #8e44ad 0%, #3498db 100%);
}

nav {
	max-width: 960px;
	mask-image: linear-gradient(90deg, rgba(255, 255, 255, 0) 0%, #ffffff
		25%, #ffffff 75%, rgba(255, 255, 255, 0) 100%);
	margin: 0 auto;
	padding: 10px 0;
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





	<!-- <div style="display: grid; justify-content: center; margin-top: 1cm"> -->

	<div>
		<a href="vehicle"><button style="margin-left: 10cm" class="button">
				<span>Vehicle </span>
			</button></a> <a href="employee"><button class="button">
				<span>Employee </span>
			</button></a>
	</div>
	<br>
	<div>
		<a href="package"><button style="margin-left: 10cm" class="button">
				<span>Package </span>
			</button></a> <a href="status"><button class="button">
				<span>Status </span>
			</button></a>
	</div>
	<br>
	<div>
		<a href="delivered"><button style="margin-left: 10cm"
				class="button">
				<span>Delivered</span>
			</button></a> <a href="history"><button class="button">
				<span>History</span>
			</button></a>
	</div>




</body>
</html>
