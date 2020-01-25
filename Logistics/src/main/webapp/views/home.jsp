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
	
	<style>
	.tblbg2a {
    background-image: url("https://tipac.net/wp-content/uploads/2017/05/freight-logisitics-three-trucks-on-road-1115x950_tiny.jpg");
}
	</style>
	

</head>



<body class="tblbg2a">

	<div class="container-fluid">
		<div class="row">
			<div class="col-3"></div>
			<div class="col-6">
			
					<a href="vehicle"><button class="btn btn-primary">Vehicle</button></a>
					<a href="employee"><button class="btn btn-primary">Employee</button></a>
					<a href="package"><button class="btn btn-primary">Package</button></a>
					<a href="status"><button class="btn btn-primary">Status</button></a>
					<a href="delivered"><button class="btn btn-primary">Delivered</button></a>
					
			</div>
			<div class="col-3"></div>
		</div>
	</div>


</body>
</html> -->


<!DOCTYPE html>
<html>
<head>
<style>



body {
 background-image: url("abc.jpg");
 background-color: #cccccc;
}




.button {
  display: inline-block;
  border-radius: 4px;
  background-color: black;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 28px;
  padding: 20px;
  width: 200px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}
</style>
</head>
<body>
			<div style="background-image: url('abc.jpg');"></div>
			<div style="display: grid; justify-content: center; margin-top: 1cm">
			
			<a href="vehicle"><button class="button"><span>Vehicle </span></button></a>
			<br>
			<a href="employee"><button class="button"><span>Employee </span></button></a>
			<br>
			<a href="package"><button class="button"><span>Package </span></button></a>
			<br>
			<a href="status"><button class="button"><span>Status </span></button></a>
			<br>
			<a href="delivered"><button class="button"><span>Delivered</span></button></a>
			</div>


</body>
</html>
