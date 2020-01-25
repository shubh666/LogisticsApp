<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<style>



h1{
  font-size: 30px;
  color: #fff;
  text-transform: uppercase;
  font-weight: 300;
  text-align: center;
  margin-bottom: 15px;
}
table{
  width:100%;
  table-layout: fixed;
}
.tbl-header{
  background-color: rgba(255,255,255,0.3);
 }
.tbl-content{
  height:300px;
  overflow-x:auto;
  margin-top: 0px;
  border: 1px solid rgba(255,255,255,0.3);
}
th{
  padding: 20px 15px;
  text-align: left;
  font-weight: 500;
  font-size: 12px;
  color: #fff;
  text-transform: uppercase;
}
td{
  padding: 15px;
  text-align: left;
  vertical-align:middle;
  font-weight: 300;
  font-size: 12px;
  color: #fff;
  border-bottom: solid 1px rgba(255,255,255,0.1);
}


/* demo styles */

@import url(https://fonts.googleapis.com/css?family=Roboto:400,500,300,700);
body{
  background: -webkit-linear-gradient(left, #25c481, #25b7c4);
  background: linear-gradient(to right, #25c481, #25b7c4);
  font-family: 'Roboto', sans-serif;
}
section{
  margin: 50px;
}


/* follow me template */
.made-with-love {
  margin-top: 40px;
  padding: 10px;
  clear: left;
  text-align: center;
  font-size: 10px;
  font-family: arial;
  color: #fff;
}
.made-with-love i {
  font-style: normal;
  color: #F50057;
  font-size: 14px;
  position: relative;
  top: 2px;
}
.made-with-love a {
  color: #fff;
  text-decoration: none;
}
.made-with-love a:hover {
  text-decoration: underline;
}


/* for custom scrollbar for webkit browser*/

::-webkit-scrollbar {
    width: 6px;
} 
::-webkit-scrollbar-track {
    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3); 
} 
::-webkit-scrollbar-thumb {
    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3); 
}



</style>



<script>

$(window).on("load resize ", function() {
	  var scrollWidth = $('.tbl-content').width() - $('.tbl-content table').width();
	  $('.tbl-header').css({'padding-right':scrollWidth});
	}).resize();



</script>





</head>




<body>
	<h2></h2>


	<%-- <table border="1" align="center">

		<th>Vehicle NO</th>
		<th>Vehicle Type</th>
		<th>Load Capacity</th>
		

		<c:forEach var="vehicle" items="${listVehicle}" varStatus="status">
			<tr>
				
				<td>${vehicle.vNo}</td>
				<td>${vehicle.vType}</td>
				<td>${vehicle.loadCap}</td>
				

			</tr>
		</c:forEach>
	</table>
	<br>
	<br>
	<div style="display: grid; align-content: center;justify-content: center;">
			<a href="vehicleRegister"><button style="border: 1cm;" ><span>Vehicle Registration</span></button></a></div> --%>
			
			
			
			
			
			
			
			
			
			
			<section>
  <!--for demo wrap-->
  <h1>Vehicles</h1>
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
          <th>Vehicle No</th>
          <th>Vehicle Type</th>
          <th>Load Capacity</th>
          <th>Vehicle Status</th>
          
        </tr>
      </thead>
    </table>
  </div>
  <div class="tbl-content">
    <table cellpadding="0" cellspacing="0" border="0">
      <tbody>
      
      <c:forEach var="vehicle" items="${listVehicle}" varStatus="status">
			<tr>
				
				<td>${vehicle.vNo}</td>
				<td>${vehicle.vType}</td>
				<td>${vehicle.loadCap}</td>
				<td>${vehicle.vStatus}</td>
				 
				
		<%-- 			<c:if test="${ vehicle.vStatus== ""}">
    Not Null   
</c:if> --%>
					
			</tr>
		</c:forEach>
        
         
      </tbody>
    </table>
  </div>
</section>

	
	<div style="display: grid; align-content: center;justify-content: center;">
			<a href="vehicleRegister"><button style="border: 1cm;" ><span>Vehicle Registration</span></button></a></div>
 
    <div style="display: grid; align-content: center;justify-content: center;">
			<a href="home"><button style="border: 1cm;" ><span>Back</span></button></a></div>
    


			
			
			

</body>
</html>