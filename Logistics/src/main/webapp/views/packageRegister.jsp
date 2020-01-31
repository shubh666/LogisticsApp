<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.4.1.min.js"></script>   
<script
  src="https://code.jquery.com/jquery-3.4.1.min.js"
  integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
  crossorigin="anonymous"></script>     

<style>
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
.error{
						color:red;
					}
					
					
					
					
					
</style>

 <script type="text/javascript">
$(document).ready(function(){
	$("#pid").change(function(){
		$.ajax({
			url : 'check_packageId',
			data : {packageId : $("#pid").val()},
			success : function(data){
				$("#ures").html(data);
			}
		});
		
	});
});
									
									function InvalidPid(textbox) {
									
										if (textbox.value === '') {
											textbox.setCustomValidity('Your package should have a unique id!');
										} else if (textbox.validity.typeMismatch) {
											textbox.setCustomValidity('Your package id should have a unique id!');
										} else {
											textbox.setCustomValidity('');
										}
									
										return true;
									}
									
									
									function InvalidWeight(textbox) {
									
										if (textbox.value === '') {
											textbox.setCustomValidity('Weigh your package!');
										} else if (textbox.validity.typeMismatch) {
											textbox.setCustomValidity('Weigh your package!');
										} else {
											textbox.setCustomValidity('');
										}
									
										return true;
									}
									
									
									function InvalidSource(textbox) {
									
										if (textbox.value === '') {
											textbox.setCustomValidity('Enter the source of the package!');
										} else if (textbox.validity.typeMismatch) {
											textbox.setCustomValidity('Enter the source of the package!');
										} else {
											textbox.setCustomValidity('');
										}
									
										return true;
									}
									
									
									function InvalidDesti(textbox) {
									
										if (textbox.value === '') {
											textbox.setCustomValidity('Package have to deliver some-where!');
										} else if (textbox.validity.typeMismatch) {
											textbox.setCustomValidity('Package have to deliver some-where!');
										} else {
											textbox.setCustomValidity('');
										}
									
										return true;
									}
									
									function InvalidAmt(textbox) {
										
										if (textbox.value === '') {
											textbox.setCustomValidity('Are you sure, it is free?');
										} else if (textbox.validity.typeMismatch) {
											textbox.setCustomValidity('Are you sure, it is free?');
										} else {
											textbox.setCustomValidity('');
										}
									
										return true;
									}
																

									 function preventBack(){window.history.forward();}
									    setTimeout("preventBack()", 0);
									    window.onunload=function(){null};


</script>
 

</head>



<body>

	<c:if test="${sessionScope.uname == null}">
		<c:redirect url="/"></c:redirect>
	</c:if>




	<form:form style="align-content: center;" class="registration" modelAttribute="pkg" method="post" action="packageRegister">
		
		<h1>Package Registration!</h1>

		<%String str=(String)request.getAttribute("msg");
		if(str!=null)
		{
		%>
		<h6 style="color:red;"><%= str%></h6>
		<%
		}
		%>

		<label class="pure-material-textfield-outlined"> 
		
			<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</span> 
			<input type="text" path="packageId" placeholder="Package Id" name="packageId" id="pid" type="text"  
			oninvalid="InvalidPid(this);" oninput="InvalidPid(this);" required="required" >	
			
		</label> <span id="ures" style="color: blue"></span> 
		
		
		<label
			class="pure-material-textfield-outlined"> 
			<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</span> 
			<input type="text" path="packageWeight" placeholder="Package Weight" name="packageWeight" type="text" 
			oninvalid="InvalidWeight(this);" oninput="InvalidWeight(this);" required="required">			
			<form:errors path="packageWeight" cssClass="error"></form:errors>

		</label> 
		
		<label class="pure-material-textfield-outlined"> 
			<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</span>
			<input type="text" path="sorce" placeholder="Source" name="sorce" oninvalid="InvalidSource(this);" oninput="InvalidSource(this);" required="required">
			<form:errors path="sorce" cssClass="error"></form:errors>	
		</label> 
		
		<label class="pure-material-textfield-outlined"> 
			<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</span> 
			<input type="text" path="destination" placeholder="Destination" name="destination" oninvalid="InvalidDesti(this);" oninput="InvalidDesti(this);" required="required">
			<form:errors path="destination" cssClass="error"></form:errors>
		</label>
		
		 <label class="pure-material-textfield-outlined"> 
		 	<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</span> 
		 	<input type="text" path="amount" placeholder="Amount" name="amount" oninvalid="InvalidAmt(this);" oninput="InvalidAmt(this);" required="required">
			<form:errors path="amount" cssClass="error"></form:errors>

		</label>

		<div class="btn-group">
			<button type="submit" class="btn btn-primary"
				style="margin-right: 1cm">Submit</button>
			<a href="package"><button type="button" class="btn btn-primary">Back</button></a>
		</div>


	</form:form>

</body>
</html>





<!-- <div class="container-fluid">
		<div class="row">
			<div class="col-3"></div>
			<div class="col-6">

				<form method="post" action="packageRegister">
				
					<div class="form-group">
						<label for="exampleInputPassword1">PackageID</label> 
						<input
							type="text" name="packageId" class="form-control" id="exampleInputPassword1">
					</div>
					
					<div class="form-group">
						<label for="exampleInputPassword1">PackageWeight</label> 
						<input
							type="text" name="packageWeight" class="form-control" id="exampleInputPassword1">
					</div>
				
					<div class="form-group">
						<label for="exampleInputPassword1">Source</label> 
						<input
							type="text" name="sorce" class="form-control" id="exampleInputPassword1">
					</div>
					
					<div class="form-group">
						<label for="exampleInputPassword1">Destination</label> 
						<input
							type="text" name="destination" class="form-control" id="exampleInputPassword1">
					</div>
					
					<div class="form-group">
						<label for="exampleInputPassword1">Amount</label> 
						<input
							type="text" name="amount" class="form-control" id="exampleInputPassword1">
					</div>
			
			
				<button type="submit" class="button">Submit</button>
				</form>
				<div><a href="package"><button class="button">back</button></a></div>
			</div>
		</div>
	</div>
 -->