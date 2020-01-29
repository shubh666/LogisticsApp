<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">

<style>

body {
    display: flex;
    align-items: center;
    justify-content: center;
    min-height: 100vh;
    background: url("https://images.pexels.com/photos/2832/vehicle-vintage-old-truck.jpg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260");
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
    box-shadow: 0 3px 1px -2px rgba(0, 0, 0, 0.2), 0 2px 2px 0 rgba(0, 0, 0, 0.14), 0 1px 5px 0 rgba(0, 0, 0, 0.12);
    overflow: hidden;
    background-color: white;
}

h1 {
    margin: 32px 0;
    font-family: "Roboto", "Segoe UI", BlinkMacSystemFont, system-ui, -apple-system;
    font-weight: normal;
    text-align: center;
}

.registration > label {
    display: block;
    margin: 24px 0;
    width: 320px;
}

a {
    color: rgb(var(--pure-material-primary-rgb));
    text-decoration: none;
}

a:hover {
    text-decoration: underline;
}

button {
    display: block !important;
    margin: 32px auto;
}

.done,
.progress {
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

.signed > .done {
    visibility: visible;
}

.done > a {
    display: inline-block;
    text-decoration: none;
}

.progress {
    opacity: 0;
}

.signed > .progress {
    animation: loading 4s;
}

@keyframes loading {
    0% {
        visibility: visible;
    }
    12.5% {
        opacity: 0;
    }
    25% {
        opacity: 1;
    }
    87.5% {
        opacity: 1;
    }
    100% {
        opacity: 0;
    }
}

.left-footer,
.right-footer {
    position: fixed;
    padding: 14px;
    bottom: 14px;
    color: #555;
    background-color: #eee;
    font-family: "Roboto", "Segoe UI", BlinkMacSystemFont, system-ui, -apple-system;
    font-size: 14px;
    line-height: 1.5;
    box-shadow: 0 3px 1px -2px rgba(0, 0, 0, 0.2), 0 2px 2px 0 rgba(0, 0, 0, 0.14), 0 1px 5px 0 rgba(0, 0, 0, 0.12);
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

.left-footer > a,
.right-footer > a {
    color: black;
}

.left-footer > a:hover,
.right-footer > a:hover {
    text-decoration: underline;
}
	
</style>

	<script>
					
					// JavaScript is used for toggling loading state
					var form = document.querySelector('form');
					form.onsubmit = function (event) {
					    event.preventDefault();
					    form.classList.add('signed');
					};
					
					</script>
	
</head>



<body>
	<c:if test="${sessionScope.uname == null}">
					<c:redirect url="/"></c:redirect>
			</c:if>
			
			
	<%-- <div class="container-fluid">
		<div class="row">
			<div class="col-3"></div>
			<div class="col-6 col-md-4 col-md-offset-6">

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
					 --%>
					
					
						
		<form style="align-content: center;" class="registration" action="employee" method="post">
  <h1> Employee Registration!</h1>

			<label class="pure-material-textfield-outlined">
    		 <span>&nbsp; &nbsp;&nbsp; &nbsp;</span>
     <input placeholder=" Employee Id" name="employeeId" type="text" required>
     
  </label>
  
  <label class="pure-material-textfield-outlined">
    	 <span>&nbsp; &nbsp;&nbsp; &nbsp;</span>
   <input
							type="text" placeholder="Employee Name" name="employeeName"  type="text" required>
     
  </label>
  
  <label class="pure-material-textfield-outlined">
   	
   	 <span>&nbsp; &nbsp;&nbsp; &nbsp;</span>
   <input type="text" placeholder="Phone no" name="employeePhone" maxlength="10" pattern="[0-9]{10}" required>
   
  </label>
  
  <label class="pure-material-textfield-outlined">
    
     <span>&nbsp; &nbsp;&nbsp; &nbsp;</span>
 <input type="date" placeholder="Date Of joining" name="employeeDoj" required>
   
  </label>
		
  <label class="pure-material-textfield-outlined">
     
      <span>&nbsp; &nbsp;&nbsp; &nbsp;</span>
   <input type="text" placeholder="Employee Salary" name="employeeSalary" required>
     
  </label>
  
			<label class="pure-material-textfield-outlined">
     	<span>&nbsp; &nbsp;&nbsp; &nbsp;</span>
   <input type="text" placeholder="licence No" name="employeeLicense" required>
      
  </label>
  
  <label class="pure-material-textfield-outlined">
     	<span>&nbsp; &nbsp;&nbsp; &nbsp;</span>
   <input type="text" placeholder="Department Id" name="departmentId" required>
      
  </label>
						
					<div class="btn-group">
					<button type="submit" class="btn btn-primary" style="margin-right: 1cm">Submit</button>
						<a href="employee"><button type="button" class="btn btn-primary">back</button></a>
				</div>
				
			
				</form>
				
		
	
</body>
</html>