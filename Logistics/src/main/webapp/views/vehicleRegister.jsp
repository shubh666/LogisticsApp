<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

/* body {
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
} */
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

</head>



<body>
		<c:if test="${sessionScope.uname == null}">
					<c:redirect url="/"></c:redirect>
			</c:if>
	
					
		<form style="align-content: center;" class="registration" method="post" action="vehicleRegister">
  <h1> Vehicle Registration!</h1>

			<label class="pure-material-textfield-outlined">
    		 <span>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;</span>
     <input placeholder=" Vehicle No" name="vNo" type="text" required>
     
  </label>
  
  <label class="pure-material-textfield-outlined">
    	 <span>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;</span>
   <input
							type="text" placeholder="Vehicle Type" name="vType"  type="text" required>
     
  </label>
  
  
  
  
		
  <label class="pure-material-textfield-outlined">
     
      <span>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</span>
   <input type="text" placeholder="Load Capacity" name="loadCap"required>
     
  </label>
  
  
 
						
					<div class="btn-group">
					<button type="submit" class="btn btn-primary" style="margin-right: 1cm">Submit</button>
						<a href="vehicle"><button type="button" class="btn btn-primary">back</button></a>
				</div>
				
			
				</form>
				

</body>
</html>




<!-- <div class="container-fluid">
		<div class="row">
			<div class="col-3"></div>
			<div class="col-6">

				<form method="post" action="vehicleRegister">
				
					<div class="form-group">
						<label for="exampleInputPassword1">VehicleNO</label> 
						<input
							type="text" name="vNo" class="form-control" id="exampleInputPassword1">
					</div>
					
					<div class="form-group">
						<label for="exampleInputPassword1">Vehicle Type</label> 
						<input
							type="text" name="vType" class="form-control" id="exampleInputPassword1">
					</div>
				
					<div class="form-group">
						<label for="exampleInputPassword1">LoadCap</label> 
						<input
							type="text" name="loadCap" class="form-control" id="exampleInputPassword1">
					</div>			
					
				<button type="submit" class="button">Submit</button>
				</form>
				<div><a href="vehicle"><button class="button">back</button></a></div>
			</div>
		</div>
	</div> -->