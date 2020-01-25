<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
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

				<form action="employeeRegister" method="post">
				
					<div class="form-group">
						<label for="exampleInputPassword1">EmployeeID</label> 
						<input
							type="text" name="employeeId" class="form-control" id="exampleInputPassword1">
					</div>
					
					<div class="form-group">
						<label for="exampleInputPassword1">EmployeeName</label> 
						<input
							type="text" name="employeeName" class="form-control" id="exampleInputPassword1">
					</div>
				
					<div class="form-group">
						<label for="exampleInputPassword1">PhoneNo</label> 
						<input
							type="text" name="employeePhone" maxlength="10" pattern="[0-9]{10}" class="form-control" id="exampleInputPassword1">
					</div>
					
					<div class="form-group">
						<label for="exampleInputPassword1">Date-Of-Joining</label> 
						<input
							type="date" name="employeeDoj" class="form-control" id="exampleInputPassword1">
					</div>
					
					<div class="form-group">
						<label for="exampleInputPassword1">Salary</label> 
						<input
							type="text" name="employeeSalary" class="form-control" id="exampleInputPassword1">
					</div>
					
					<div class="form-group">
						<label for="exampleInputPassword1">License No.</label> 
						<input
							type="text" name="employeeLicense" class="form-control" id="exampleInputPassword1">
					</div>
					
					<div class="form-group">
						<label for="exampleInputPassword1">Department Id</label> 
						<input
							type="text" name="departmentId" class="form-control" id="exampleInputPassword1">
					</div>			
					
				<button type="submit" class="btn btn-primary">Submit</button>
				</form>
				<div><a href="employee"><button>back</button></a></div>
			</div>
		</div>
	</div>


</body>
</html>