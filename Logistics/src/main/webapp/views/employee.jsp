<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<style>
h1 {
	font-size: 30px;
	color: #fff;
	text-transform: uppercase;
	font-weight: 300;
	text-align: center;
	margin-bottom: 15px;
}

table {
	width: 100%;
	table-layout: fixed;
}

.tbl-header {
	background-color: rgba(255, 255, 255, 0.3);
}

.tbl-content {
	height: 200px;
	overflow-x: auto;
	margin-top: 0px;
	border: 1px solid rgba(255, 255, 255, 0.3);
}

th {
	padding: 20px 15px;
	text-align: left;
	font-weight: 500;
	font-size: 12px;
	color: #fff;
	text-transform: uppercase;
}

td {
	padding: 15px;
	text-align: left;
	vertical-align: middle;
	font-weight: 300;
	font-size: 12px;
	color: #fff;
	border-bottom: solid 1px rgba(255, 255, 255, 0.1);
}

/* demo styles */
@import
	url(https://fonts.googleapis.com/css?family=Roboto:400,500,300,700);

body {
	background: -webkit-linear-gradient(left, #25c481, #25b7c4);
	background: linear-gradient(to right, #25c481, #25b7c4);
	font-family: 'Roboto', sans-serif;
}

section {
	margin: 50px;
}

/* follow me template */
.made-with-love {
	margin-top: 40px;
	padding: 10px;
	clear: left;
	text-align: center;
	font-size: 10px;
	font-family: arial;
	color: #fff;
}

.made-with-love i {
	font-style: normal;
	color: #F50057;
	font-size: 14px;
	position: relative;
	top: 2px;
}

.made-with-love a {
	color: #fff;
	text-decoration: none;
}

.made-with-love a:hover {
	text-decoration: underline;
}

/* for custom scrollbar for webkit browser*/
::-webkit-scrollbar {
	width: 6px;
}

::-webkit-scrollbar-track {
	-webkit-box-shadow: inset 0 0 6px rgba(0, 0, 0, 0.3);
}

::-webkit-scrollbar-thumb {
	-webkit-box-shadow: inset 0 0 6px rgba(0, 0, 0, 0.3);
}
</style>



<script>

$(window).on("load resize ", function() {
	  var scrollWidth = $('.tbl-content').width() - $('.tbl-content table').width();
	  $('.tbl-header').css({'padding-right':scrollWidth});
	}).resize();



</script>

<style>
@import url(https://fonts.googleapis.com/css?family=Open+Sans);

html, body {
	height: 100%;
	width: 100%;
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
	<h2></h2>
	<c:if test="${sessionScope.uname == null}">
		<c:redirect url="/"></c:redirect>
	</c:if>
	<section> <nav>
		<ul>
			<li><a href="home">Home</a></li>
			<li><a href="about">About</a></li>
			<li><a href="contact">Contact Us</a></li>
			<li><a href="logout">logout</a></li>
		</ul>
	</nav>
<!--for demo wrap-->
	<h1>Employee</h1>
	<div class="tbl-header">
		<table cellpadding="0" cellspacing="0" border="0">
			<thead>
				<tr>
					<th>EmployeeID</th>
					<th>EmployeeName</th>
					<th>PhoneNo</th>
					<th>DOJ</th>
					<th>Salary</th>
					<th>License</th>
					<th>Department</th>
					<th>Status</th>
					<th>Update</th>
					<th>Delete</th>
				</tr>
			</thead>
		</table>
	</div>
	<div class="tbl-content">
		<table cellpadding="0" cellspacing="0" border="0">
			<tbody>

				<c:forEach var="employee" items="${listEmployee}" varStatus="status">
					<tr>

						<td>${employee.employeeId}</td>
						<td>${employee.employeeName}</td>
						<td>${employee.employeePhone}</td>
						<td>${employee.employeeDoj}</td>
						<td>${employee.employeeSalary}</td>
						<td>${employee.employeeLicense}</td>
						<td>${employee.deptName}</td>
						<td>${employee.status}</td>
						<td>
							<form method="post" action="employeeUpdate">
								<input type="hidden" name="employeeId"
									value="${employee.employeeId}"> <input class="button"
									type="submit" value="Update">
							</form>
						</td>
						<td>
							<form method="post" action="employee">
								<input type="hidden" name="employeeId"
									value="${employee.employeeId}"> <input type="hidden"
									name="deleteButton" value="true"> <input class="button"
									type="submit" value="Delete">
							</form>
						</td>

						<!-- <a href="package"><input type="button" value="use"></a></td> -->


					</tr>
				</c:forEach>


			</tbody>
		</table>
	</div>
	</section>


	<div style="justify-content: center;">
		<a href="employeeRegister"><button class="button"
				style="border: 1cm; margin-left: 30%;">
				<span>Employee Registration</span>
			</button></a> <a href="home"><button class="button">Back</button></a>
	</div>





</body>
</html>