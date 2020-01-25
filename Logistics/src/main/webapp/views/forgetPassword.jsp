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
  animation: colorchange 50s;
  -webkit-animation: colorchange 50s;
  animation-iteration-count: infinite;
}

@keyframes colorchange{
  0%{background-color:#45a3e5}
  17%{background-color:#3cc}
  34%{background-color:#66bf39}
  51%{background-color:#ffa602}
  61%{background-color:#eb670f}
  84%{background-color:#f35}
  90%{background-color:#864cbf}
  100%{background-color:#45a3e5}
}

@-webkit-keyframes colorchange{
  0%{background-color:#45a3e5}
  17%{background-color:#3cc}
  34%{background-color:#66bf39}
  51%{background-color:#ffa602}
  61%{background-color:#eb670f}
  84%{background-color:#f35}
  90%{background-color:#864cbf}
  100%{background-color:#45a3e5}
}

</style>



<script type="text/javascript">
function Validate() {
    var password = document.getElementById("txtPassword").value;
    var confirmPassword = document.getElementById("txtConfirmPassword").value;
    if (password != confirmPassword) {
        alert("Passwords do not match.");
        document.getElementById("txtPassword").value="";
        document.getElementById("txtConfirmPassword").value="";
        return false;
        
    }
    return true;
}
</script>





</head>


    

<body>

	<div class="container-fluid">
		<div class="row">
			<div class="col-3"></div>
			<div class="col-6">

				<form method="post" action="forgetPassword">
					
					<div class="form-group">
						<label for="exampleInputPassword1">UserId</label> 
						<input
							type="text" name="userId" class="form-control" id="exampleInputPassword1">
					</div>
				
					<div class="form-group">
						<label for="exampleInputPassword1">UserName</label> 
						<input
							type="text" name="userName" class="form-control" id="exampleInputPassword1">
					</div>
					
					<div class="form-group">
						<label for="exampleInputPassword1">New Password</label> 
						<input
							type="password" name="userPassword" class="form-control" id="txtPassword">
					</div>
					
					<div class="form-group">
						<label for="exampleInputPassword1">Confirm Password</label> 
						<input
							type="password" class="form-control" id="txtConfirmPassword">
					</div>
					
					<button type="submit" id="btnSubmit" class="btn btn-primary" onclick="return Validate()">Submit</button>
					
				</form>
				<a href ="index"><button class="btn btn-primary">Back</button></a>
			</div>
		</div>
	</div>


</body>
</html>