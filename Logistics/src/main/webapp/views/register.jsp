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
<script>  

  
  
function validateemail()  
{  
var x=document.myform.emailId.value;  
var atposition=x.indexOf("@");  
var dotposition=x.lastIndexOf(".");  
if (atposition<1 || dotposition<atposition+2 || dotposition+2>=x.length){  
  alert("Please enter a valid e-mail address \n atpostion:"+atposition+"\n dotposition:"+dotposition);  
  return false;  
  } 	
var userName=document.myform.userName.value;  
var userPassword=document.myform.userPassword.value;  
  
if (userName==null || userName == ""){  
  alert("userName can't be blank");  
  return false;  
}else if(userPassword.length<4){  
  alert("Password must be at least 4 characters long.");  
  return false;  
  }  
}  

function phonenumber(inputtxt)
{
  var phoneno = /^\d{10}$/;
  if(inputtxt.value.match(phoneno))
  {
      return true;
  }
  else
  {
     alert("Not a valid Phone Number");
     return false;
  }
  }
</script>  
</head>


    

<body>

	<div class="container-fluid">
		<div class="row">
			<div class="col-3"></div>
			<div class="col-6">

				<form method="post" action="register" name="myform" >
				
					<div class="form-group">
						<label for="exampleInputPassword1">UserID</label> 
						<input
							type="number" name="userId" class="form-control" id="exampleInputPassword1"  required="required">
					</div>
					
					<div class="form-group">
						<label for="exampleInputPassword1">Username</label> 
						<input
							type="text" name="userName" class="form-control" id="exampleInputPassword1" required="required" >
					</div>
				
					<div class="form-group">
						<label for="exampleInputPassword1">Password</label> 
						<input
							type="password" name="userPassword" class="form-control" id="exampleInputPassword1" required="required">
					</div>
					
					<div class="form-group">
						<label for="exampleInputEmail1">Email address</label> <input
							type="email" name="emailId" class="form-control" id="exampleInputEmail1"
							aria-describedby="emailHelp"  required="required"> <small id="emailHelp"
							class="form-text text-muted">We'll never share your email
							with anyone else.</small>
					</div>
					
					
					<div class="form-group">
						<label for="exampleInputPassword1">Mobile</label> 
						<input
							type="text" name="phone" class="form-control" id="exampleInputPassword1" required="required">
					</div>
					
					
					<button type="submit" class="btn btn-primary" onclick="phonenumber(document.myform.phone)" onclick="validateemail()">Submit</button>
					
				</form>
				<a href ="index"><button class="btn btn-primary">Back</button></a>
			</div>
		</div>
	</div>


</body>
</html>