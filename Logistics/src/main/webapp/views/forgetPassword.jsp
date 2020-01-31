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

.error{
		color:red;
	  }
	  
	  .footer {
    position: absolute;
  font-size: 12px;
    bottom: 0;
    width: 90%;
    height: 60px; /* Set the fixed height of the footer here */ 
   
    text-align: center;
    a {
        text-decoration: none;
        color: inherit;
       border-bottom: 1px solid;
        &:hover {
        border-bottom: 1px transparent;
        }
    }
  }
	



</style>



<script type="text/javascript">
	function Validate() {
		var password = document.getElementById("txtPassword").value;
		var confirmPassword = document.getElementById("txtConfirmPassword").value;
		if (password != confirmPassword) {
			alert("Passwords do not match.");
			document.getElementById("txtPassword").value = "";
			document.getElementById("txtConfirmPassword").value = "";
			return false;

		}
		return true;
	}
</script>

</head>

<body>

<form:form style="align-content: center;" modelAttribute="vehicle" class="registration" method="post" action="forgetPassword">
  <h1> Password Reset!</h1>

			<label class="pure-material-textfield-outlined">
    		 <span>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;</span>
   <input type="text" name="userId" placeholder="User id" required="required" id="exampleInputPassword1">
   	 &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;
     
  </label>
  
  <label class="pure-material-textfield-outlined">
    	 <span>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;</span>
  
 <input type="text" name="userName" placeholder="User Name"	required="required"	id="exampleInputPassword1">
    
  </label>
  
   
		
  <label class="pure-material-textfield-outlined">   
      <span>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</span>
      
   <input type="password" name="userPassword" placeholder="new password" required="required" id="txtPassword">
   
     
  </label>
  
  <label class="pure-material-textfield-outlined">   
      <span>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</span>
      
    <input type="password" placeholder="Confirm password" id="txtConfirmPassword">
     
  </label>
  
  
 
						
					<div class="btn-group">
					<button type="submit" onclick="return Validate()" id="btnSubmit" class="btn btn-primary" style="margin-right: 1cm">Submit</button>
						<a href="index"><button type="button" class="btn btn-primary">Back</button></a>
				</div>
				
			
				</form:form>
				

</body>
</html>





<!-- 
	<div class="container-fluid">
		<div class="row">
			<div class="col-3"></div>
			<div class="col-6">

				<form method="post" action="forgetPassword">

					<div class="form-group">
						<label for="exampleInputPassword1">UserId</label> <input
							type="text" name="userId" class="form-control"
							id="exampleInputPassword1">
					</div>

					<div class="form-group">
						<label for="exampleInputPassword1">UserName</label> <input
							type="text" name="userName" class="form-control"
							id="exampleInputPassword1">
					</div>

					<div class="form-group">
						<label for="exampleInputPassword1">New Password</label> <input
							type="password" name="userPassword" class="form-control"
							id="txtPassword">
					</div>

					<div class="form-group">
						<label for="exampleInputPassword1">Confirm Password</label> <input
							type="password" class="form-control" id="txtConfirmPassword">
					</div>

					<button type="submit" id="btnSubmit" class="button"
						onclick="return Validate()">Submit</button>

				</form>
				<a href="index"><button class="button">Back</button></a>
			</div>
		</div>
	</div> -->