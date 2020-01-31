<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
					// JavaScript is used for toggling loading state
					var form = document.querySelector('form');
					form.onsubmit = function (event) {
					    event.preventDefault();
					    form.classList.add('signed');
					};
					
					function InvalidNo(textbox) {

						if (textbox.value === '') {
							textbox.setCustomValidity('Your vehicle have different vehicle no!');
						} else if (textbox.validity.typeMismatch) {
							textbox.setCustomValidity('Enter vehicle no!');
						} else {
							textbox.setCustomValidity('');
						}

						return true;
					}
					
					
					function InvalidType(textbox) {

						if (textbox.value === '') {
							textbox.setCustomValidity('Mention vehicle type!');
						} else if (textbox.validity.typeMismatch) {
							textbox.setCustomValidity('Mention vehicle type!');
						} else {
							textbox.setCustomValidity('');
						}

						return true;
					}
					
					
					function InvalidCap(textbox) {

						if (textbox.value === '') {
							textbox.setCustomValidity('What is capacity of your vehicle!');
						} else if (textbox.validity.typeMismatch) {
							textbox.setCustomValidity('What is capacity of your vehicle!');
						} else {
							textbox.setCustomValidity('');
						}

						return true;
					}
					
					
					
					</script>				
				




</head>



<body>
		<c:if test="${sessionScope.uname == null}">
					<c:redirect url="/"></c:redirect>
		</c:if>
	
					
		<form:form style="align-content: center;" modelAttribute="vehicle" class="registration" method="post" action="vehicleRegister">
		  <h1> Vehicle Registration!</h1>
			
		<%String str=(String)request.getAttribute("msg");
		if(str!=null)
		{
		%>
		<h6 style="color:red;"><%= str%></h6>
		<%
		}
		%>
			
			<label class="pure-material-textfield-outlined">
    		 <span>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;</span>
     <input path="vNo" placeholder="Vehicle No" name="vNo" type="text" oninvalid="InvalidNo(this);" oninput="InvalidNo(this);" required="required">
   	 &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;<form:errors path="vNo" cssClass="error"></form:errors>
     
  </label>
  
  <label class="pure-material-textfield-outlined">
    	 <span>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;</span>
  
 		  <input path="vType"	type="text" placeholder="Vehicle Type" name="vType"  type="text"oninvalid="InvalidType(this);" oninput="InvalidType(this);" required="required" >			
		<form:errors path="vType" cssClass="error"></form:errors>
    
  </label>
  
   
		
  <label class="pure-material-textfield-outlined">   
      <span>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</span>
      
   <input type="text" path="loadCap" placeholder="Load Capacity" name="loadCap" oninvalid="InvalidCap(this);" oninput="InvalidCap(this);" required="required">
   <form:errors path="loadCap" cssClass="error"></form:errors>
   
     
  </label>
  
  
 
						
					<div class="btn-group">
					<button type="submit" class="btn btn-primary" style="margin-right: 1cm">Submit</button>
						<a href="vehicle"><button type="button" class="btn btn-primary">Back</button></a>
				</div>
				
			
				</form:form>
				

</body>
</html>