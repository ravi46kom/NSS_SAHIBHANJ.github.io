<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Ballet&display=swap"
	rel="stylesheet">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
@charset "ISO-8859-1";

body {
	
}

.header {
	margin-top: 50px;
}

.header .container {
	display: flex;
	justify-content: space-between;
	align-items: initial;
	position: relative;
	text-align: center;
	align-items: center;
	text-shadow: 1px 1px 1px #919191, 1px 2px 1px #919191, 1px 3px 1px
		#919191, 1px 4px 1px #919191, 1px 5px 1px #919191, 1px 6px 1px #919191,
		1px 7px 1px #919191, 1px 8px 1px #919191, 1px 9px 1px #919191, 1px
		10px 1px #919191, 1px 18px 6px rgba(16, 16, 16, 0.4), 1px 22px 10px
		rgba(16, 16, 16, 0.2), 1px 25px 35px rgba(16, 16, 16, 0.2), 1px 30px
		60px rgba(16, 16, 16, 0.4);
}

.header .container h1 {
	color: #0D47A1; font-weight : bold;
	display: flex;
	justify-content: center;
	text-align: center;
	letter-spacing: 2px;
	font-weight: bold;
}

.header .container p {
	color: #0D47A1;
	display: flex;
	justify-content: center;
	text-align: center;
	letter-spacing: 4px;
	font-weight: bold;
}
.header .container:hover p{
transition: 0.5s;
} 

.header .container h3 {
	color: #0D47A1;
	display: flex;
	justify-content: center;
	text-align: center;
	margin-top: 0px;
	letter-spacing: 2px;
	font-weight: bold;
}
</style>
</head>
<body onload="startTime()">
	<div class="header">
		<p id="demo"
			style="text-align: right; margin-right: 14px; font-weight: 500;"></p>

		<div class="container">
			<div class="header-img-1">
				<img alt="" src="img/nssLogo.png">
			</div>
			<div>
			
				<h1>National Service Scheme</h1>
				<p>Ministry of Youth Affairs And Sports
				<h3>Sahibganj College Sahibganj</h3>
				<p>Goverment of india
			</div>
			<div class="header-img-2">
				<img alt="" src="img/goggles.png">
				
			</div>

		</div>
	</div>





	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>


	<script>
		function startTime() {

			var d = new Date();
			document.getElementById("demo").innerHTML = d;
			var t = setTimeout(startTime, 500);
		}
	</script>

</body>
</html>