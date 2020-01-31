<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%-- <%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%> --%>

<html>
<head>
<meta charset="UTF-8">
<title>Employee Update</title>

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


					
							
									body {
	display: flex;
	align-items: center;
	justify-content: center;
	min-height: 100vh;
	background:
		url("https://images.pexels.com/photos/2832/vehicle-vintage-old-truck.jpg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260");
	background-size: 1200px 750px;
	/*  background-position: center; */
	background-repeat: no-repeat;
	height: 100%;
	weidth: 100%;
}

.registration {
	position: relative;
	border-radius: 8px;
	padding: 16px 48px;
	box-shadow: 0 3px 1px -2px rgba(0, 0, 0, 0.2), 0 2px 2px 0
		rgba(0, 0, 0, 0.14), 0 1px 5px 0 rgba(0, 0, 0, 0.12);
	overflow: hidden;
	background-color: white;
}

h1 {
	margin: 32px 0;
	font-family: "Roboto", "Segoe UI", BlinkMacSystemFont, system-ui,
		-apple-system;
	font-weight: normal;
	text-align: center;
}

.registration>label {
	display: block;
	margin: 24px 0;
	width: 320px;
}

a {
	color: rgb(var(- -pure-material-primary-rgb));
	text-decoration: none;
}

a:hover {
	text-decoration: underline;
}

button {
	display: block !important;
	margin: 32px auto;
}

.done, .progress {
	position: absolute;
	top: 0;
	bottom: 0;
	left: 0;
	right: 0;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	background-color: white;
	visibility: hidden;
}

.done {
	transition: visibility 0s 1s;
}

.signed>.done {
	visibility: visible;
}

.done>a {
	display: inline-block;
	text-decoration: none;
}

.progress {
	opacity: 0;
}

.signed>.progress {
	animation: loading 4s;
}

@
keyframes loading { 0% {
	visibility: visible;
}

12
.5 % {
	opacity: 0;
}

25%
{
opacity
:
 
1;
}
87
.5 % {
	opacity: 1;
}

100%
{
opacity
:
 
0;
}
}
.left-footer, .right-footer {
	position: fixed;
	padding: 14px;
	bottom: 14px;
	color: #555;
	background-color: #eee;
	font-family: "Roboto", "Segoe UI", BlinkMacSystemFont, system-ui,
		-apple-system;
	font-size: 14px;
	line-height: 1.5;
	box-shadow: 0 3px 1px -2px rgba(0, 0, 0, 0.2), 0 2px 2px 0
		rgba(0, 0, 0, 0.14), 0 1px 5px 0 rgba(0, 0, 0, 0.12);
}

.left-footer {
	left: 0;
	border-radius: 0 4px 4px 0;
	text-align: left;
}

.right-footer {
	right: 0;
	border-radius: 4px 0 0 4px;
	text-align: right;
}

.left-footer>a, .right-footer>a {
	color: black;
}

.left-footer>a:hover, .right-footer>a:hover {
	text-decoration: underline;
}




</style>

</head>



<body>

	<c:if test="${sessionScope.uname == null}">
		<c:redirect url="/"></c:redirect>
	</c:if>


					
	<form style="align-content: center;" class="registration"
		action="employee" method="post">
		<h1>Employee Update!</h1>

	
					<c:forEach var="employee" items="${listEmployee}"
						varStatus="status">
	
			<label class="pure-material-textfield-outlined"> <span>&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp; &nbsp;</span> <input  name="employeeId" value="${employee.employeeId}" 
			 type="text" readonly>
	
				<br>
				<br>

		<label class="pure-material-textfield-outlined"> <span>&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp; &nbsp;</span> <input type="text" name="employeeName" value="${employee.employeeName}" 
			 type="text" required>

		</label> <label class="pure-material-textfield-outlined"> <span>&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp; &nbsp;</span> <input oninvalid="InvalidPhone(this);" oninput="InvalidPhone(this);" type="text" placeholder="Phone no"
			 name="employeePhone" value="${employee.employeePhone}" maxlength="10" pattern="[0-9]{10}" required>
<!-- 
		</label> <label class="pure-material-textfield-outlined"> <span>&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp; &nbsp;</span> <input type="date" placeholder="Date Of joining"
			name="employeeDoj" required> -->

		</label> <label class="pure-material-textfield-outlined"> <span>&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</span> <input type="text"
			name="employeeSalary" value="${employee.employeeSalary}" required>

		</label> <label class="pure-material-textfield-outlined"> <span>&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</span> <input type="text"
			 name="employeeLicense" value="${employee.employeeLicense}" required>

		</label> <label class="pure-material-textfield-outlined"> <span>&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp; &nbsp;</span> 
				<select placeholder="Department Name" name="deptName" required>
						<option>Driver</option>
						<option>Helper</option>
						<option>Cleaner</option>
				</select>
				
				<br>
				<br>
			

		<div class="btn-group">
			<input type="hidden" name="deleteButton" value="false">
			<button type="submit" class="btn btn-primary"
				style="margin-right: 1cm" value="false">Submit</button>
			<a href="employee"><button type="button" class="btn btn-primary">back</button></a>
		</div>

</c:forEach>
	</form>
		
		

</body>
</html>












<%-- 
	<div class="container-fluid">
		<div class="row">
			<div class="col-3"></div>
			<div class="col-6">


				<form action="employee" method="post">

					<c:forEach var="employee" items="${listEmployee}"
						varStatus="status">

						<div class="form-group">
							<label for="exampleInputPassword1">EmployeeID</label> <input
								type="text" name="employeeId" value="${employee.employeeId}"
								class="form-control" id="exampleInputPassword1" readonly>
						</div>

						<div class="form-group">
							<label for="exampleInputPassword1">EmployeeName</label> <input
								type="text" name="employeeName" value="${employee.employeeName}"
								class="form-control" id="exampleInputPassword1">
						</div>

						<div class="form-group">
							<label for="exampleInputPassword1">EmployeePhone</label> <input
								type="text" name="employeePhone"
								value="${employee.employeePhone}" class="form-control"
								id="exampleInputPassword1">
						</div>


						<div class="form-group">
							<label for="exampleInputPassword1">EmployeeSalary</label> <input
								type="text" name="employeeSalary"
								value="${employee.employeeSalary}" class="form-control"
								id="exampleInputPassword1">
						</div>


						<div class="form-group">
							<label for="exampleInputPassword1">EmployeeLicense</label> <input
								type="text" name="employeeLicense"
								value="${employee.employeeLicense}" class="form-control"
								id="exampleInputPassword1">
						</div>

						<div class="form-group">
							<label for="exampleInputPassword1">DepartmentName</label> <input
								type="text" name="deptName" value="${employee.deptName}"
								class="form-control" id="exampleInputPassword1">
						</div>



					</c:forEach>
					<input type="hidden" name="deleteButton" value="false">
					<button type="submit" class="btn btn-primary">Submit</button>
				</form>

				<div>
					<a href="employee"><button class="btn btn-primary">back</button></a>
				</div>
			</div>
		</div>
	</div>

 --%>
