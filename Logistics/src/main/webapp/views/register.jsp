<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="button.css">


<style>

body {
  animation: colorchange 50s;
  -webkit-animation: colorchange 50s;
  animation-iteration-count: infinite;
  
  
/* /*  /*  background-color: lightgrey; */
 /*  width: 100%;
  height: 200%;
  border: 10px solid green;
  padding: 50px;
  margin: 10px; */ 
  
  
  
  
}

body.solid {border-style: solid;
				border-collapse:collapse;
				
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



/* button  */
@charset "ISO-8859-1";


@import url(https://fonts.googleapis.com/css?family=Roboto:400,100,900);

//colors
$red: #E1332D;
$white: #fff;

//base styles

* {
  box-sizing: inherit;
  transition-property: all;
  transition-duration: .6s;
  transition-timing-function: ease;
}

html,
body {
  box-sizing: border-box;
  height: 100%;
  width: 100%;
}

body {
  background: $red;
  font-family: 'Roboto', sans-serif;
  font-weight: 400;
}

// Main wrap
.buttons {
    display: flex;
    flex-direction: column;
    height: 100%;
    justify-content: center;
    text-align: center;
    width: 100%;
}

// Button wrap
.container { 
    align-items: center;
    display: flex;
    flex-direction: column;
    justify-content: center;
    padding: 1em;
    text-align: center; 
    
    @media (min-width: 600px) {
        flex-direction: row;
        justify-content: space-between;
    }
}

h1 {
  color: $white;
  font-size: 1.25em;
  font-weight: 900;
  margin: 0 0 2em;
  
  @media (min-width: 450px) {
    font-size: 1.75em;
  }
  
  @media (min-width: 760px) {
    font-size: 3.25em;
  }
  
  @media (min-width: 900px) {
    font-size: 5.25em;
    margin: 0 0 1em;
  }
}

p {
  color: $white;
  font-size: 12px;
  
  @media(min-width: 600px) {
    left: 50%;
    position: absolute; 
    transform: translate(-50%, 0);
    top: 90%;
  }
  
  @media(max-height: 500px) {
    left: 0;
    position: relative;
    top: 0;
    transform: translate(0, 0);
  }
  
  a {
    background: rgba($white, 0);
    border-bottom: 1px solid;
    color: $white;
    line-height: 1.4;
    padding: .25em;
    text-decoration: none;
    
    &:hover {
      background: rgba($white, 1);
      color: $red;
    }
  }
}
//button styles


//default button
.btn {
  color: #fff;
  cursor: pointer;
  // display: block;
  font-size:16px;
  font-weight: 400;
  line-height: 45px;
  margin: 0 0 2em;
  max-width: 160px; 
  position: relative;
  text-decoration: none;
  text-transform: uppercase;
  width: 100%; 
  
//   @media(min-width: 400px) {
//     display: inline-block;
//     margin-right: 2.5em;
  
//     &:nth-of-type(even) {
//       margin-right: 0;
//     }
//   }
  
  @media(min-width: 600px) {
      
    margin: 0 1em 2em;
  
//     &:nth-of-type(even) {
//       margin-right: 2.5em;
//     }
    
//     &:nth-of-type(5) {
//       margin-right: 0;
//     }
    
  }
  
  &:hover { text-decoration: none; }
  
}


.btn-5 {
  border: 0 solid;
  box-shadow: inset 0 0 20px rgba(255, 255, 255, 0);
  outline: 1px solid;
  outline-color: rgba(255, 255, 255, .5);
  outline-offset: 0px;
  text-shadow: none;
  transition: all 1250ms cubic-bezier(0.19, 1, 0.22, 1);
} 

.btn-5:hover {
  border: 1px solid;
  box-shadow: inset 0 0 20px rgba(255, 255, 255, .5), 0 0 20px rgba(255, 255, 255, .2);
  outline-color: rgba(255, 255, 255, 0);
  outline-offset: 15px;
  text-shadow: 1px 1px 2px #427388; 
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


    

<body class="solid" >

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
					
					<div>
					<button type="submit" style="margin-left: 5cm;background-color: white" class="btn btn-5" onclick="phonenumber(document.myform.phone)" onclick="validateemail()">Submit</button>
					 <a href="/"><button style="margin-left: 1cm;background-color: white" class="btn btn-5">Back</button></a> 
					</div>
				</form>
				
				  
			</div>
		</div>
	</div>


</body>
</html> -->





























<html>
<head>

<style>

/* Material Customization */
:root { -
	-pure-material-primary-rgb: 255, 191, 0; -
	-pure-material-onsurface-rgb: 0, 0, 0;
}

body {
	display: flex;
	align-items: center;
	justify-content: center;
	min-height: 100vh;
	background:
		url("https://media.gettyimages.com/photos/paintings-on-the-trucks-on-the-road-in-rajasthan-on-march-02-2017-in-picture-id946520298?s=2048x2048");
	background-size: 1200px 550px;
	/*  background-position: center; */
	background-repeat: no-repeat;
	height: 100%;
	weidth: 100%;
}

img {
	
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

<script>
					
					// JavaScript is used for toggling loading state
					var form = document.querySelector('form');
					form.onsubmit = function (event) {
					    event.preventDefault();
					    form.classList.add('signed');
					};
					
					</script>

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

<body class="img">

	<form style="align-content: center;" class="registration"
		action="register" method="post">
		<h1>Register Yourself!</h1>

		<label class="pure-material-textfield-outlined"> <span></span>
			<input placeholder="User Name " type="text" name="userName" required>

		</label> <label class="pure-material-textfield-outlined"> <span></span>
			<input placeholder="Password " type="password" name="userPassword"
			required>

		</label> <label class="pure-material-textfield-outlined"> <span></span>
			<input placeholder=" Confirm Password" type="password"
			id="txtConfirmPassword" required>

		</label> <label class="pure-material-textfield-outlined"> <span></span>
			<input placeholder=" Email" type="email" name="emailId" required>

		</label> <label class="pure-material-textfield-outlined"> <span></span>
			<input placeholder="Phone " type="text" name="phone" required>

		</label>

		<button class="pure-material-button-contained" type="submit">Sign
			Up</button>

		<div class="done">
			<h1>👌 You're all set!</h1>
			<a class="pure-material-button-text"
				href="javascript:window.location.reload(true)">Again</a>
		</div>
		<div class="progress">
			<progress class="pure-material-progress-circular" />
		</div>
	</form>

</body>

</html>





