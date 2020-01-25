<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">

</head>



<body>

	<div class="container-fluid">
		<div class="row">
			<div class="col-3"></div>
			<div class="col-6">

				<form action="status" method="post">
				
					<div class="form-group">
						<label for="exampleInputPassword1">PackageID</label> 
						 
						<input
							type="text" name="packageId" value="<%= request.getParameter("packageId") %>" class="form-control" id="exampleInputPassword1" readonly="readonly">
					</div>
					
					
					
					
					<div class="form-group">
						<label for="exampleInputPassword1">EmployeeID</label> 						 
							<select name="employeeId" class="form-control">
							<c:forEach var="employee" items="${listEmployee}" varStatus="status">
								<option value="${employee.employeeId}">${employee.employeeId}</option>
							</c:forEach>
							</select>
							
					</div>
					
					<div class="form-group">
						<label for="exampleInputPassword1">VehicleNo</label> 
							<select name="vehicleId" class="form-control">
							<c:forEach var="vehicle" items="${listVehicle}" varStatus="status">						
								<option value="${vehicle.vNo}">${vehicle.vNo}</option>	
							</c:forEach>						
							</select>
							
					</div>
					
					
					
																
				<button type="submit" class="btn btn-primary">Submit</button>
				</form>
				<div><a href="package"><button class="btn btn-primary">back</button></a></div>
			</div>
		</div>
	</div>


</body>
</html>