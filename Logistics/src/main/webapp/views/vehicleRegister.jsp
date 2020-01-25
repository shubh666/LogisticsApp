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

</head>



<body>

	<div class="container-fluid">
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
					
				<button type="submit" class="btn btn-primary">Submit</button>
				</form>
				<div><a href="vehicle"><button>back</button></a></div>
			</div>
		</div>
	</div>


</body>
</html>