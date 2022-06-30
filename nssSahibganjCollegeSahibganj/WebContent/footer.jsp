<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
@charset "ISO-8859-1";

body {
	
}

.containerd {
	display: flex;
	justify-content: center;
	align-items: center;
	min-height: 35vh;
	background: #1e1e1e;
}

.containerd .container {
	width: 1000px;
	position: relative;
	display: flex;
	justify-content: space-between;
}

.containerd .container .card {
	position: relative;
	width: 400px;
	height: 420px;
	margin: 15px;
}

.containerd .container .card .face {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	transition: 0.7s;
}

.containerd .container .card .face.face1 {
	background: #333;
	display: flex;
	justify-content: center;
	align-items: center;
	z-index: 1;
	transform-origin: bottom;
}

.containerd .container .card .face.face1 img {
	max-width: 200px;
	margin-left: 30px;
}

.containerd .container .card .face.face1 h3 {
	margin: 10px 0 0;
	color: #fff;
	text-align: center;
	font-size: 1.5em;
	font-weight: bold;
	font-family: 'Lobster', cursive;
	font-family: 'Rowdies', cursive;
	color: silver;
}

.containerd .container .card .face.face1 p {
	margin: 10px 0 0;
	color: #fff;
	text-align: center;
	font-size: 1em;
	letter-spacing: 1px;
	font-weight: bold;
	font-family: 'Rowdies', cursive;
	font-family: 'Shadows Into Light', cursive;
	color: silver;
}

.containerd .container .card:hover .face.face1 {
	transform: translateY(-100%) rotateX(90deg);
	background: #ff0057;
}

.containerd .container .card .face.face2 {
	background: #ff0080;
	display: flex;
	justify-content: center;
	align-items: center;
	padding: 20px;
	transform-origin: top;
	transform: translateY(100%) rotateX(90deg);
}

.containerd .container .card:hover .face.face2 {
	transform: translateY(0) rotateX(0deg);
}
.imlinks a{
text-decoration: none;
}
</style>

<!--fonts -->
<link
	href="https://fonts.googleapis.com/css2?family=Rowdies:wght@700&family=Shadows+Into+Light&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Lobster&family=Rowdies:wght@700&family=Shadows+Into+Light&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap"
	rel="stylesheet">
</head>
<body style="position: relative;">
	<div style="background: #000;">
		<br>
		<h1
			style="display: flex; justify-content: center; color: #fffe; center; text-decoration: underline; justify-content: center; position: relative;">Developer's</h1>
		<br>
	</div>
	<div class="containerd">

		<div class="container">

			<div class="card">
				<div class="face face1">
					<div class="content">
						<img alt="Ravi Kumar Verma" src="img/rv.png"><br>
						<h3>
							Hello! I'm Ravi
							<p>i work in UI, backend and DataBase.</p>
						</h3>
						<p>I want to make things that make difference.</p>
					</div>
				</div>
				<div class="face face2">
					<div class="content">
						<h3
							style="text-align: center; font-family: 'Pacifico', cursive; font-size: 1.2em;">Ravi
							Kumar Verma</h3>
						<p
							style="text-align: justify; font-size: 0.7em; color: #1a0000; font-family: 'Pacifico', cursive;">
							pursuing BCA SEM-V from Sahibganj College Sahibganj (S.K.M
							University, DUMKA), Jharkhand.<br> <br> Currently i'm
							seeking job/internship as fresher level.<br> <br>Skills:
							HTML, CSS and Core JAVA<br> <br> To know more about me<br>
							Contact: +919507233159<br> Email: r.j.ravi@outlook.com
						</p>

					</div>
				</div>
			</div>
			<div class="card">
				<div class="face face1">
					<div class="content">
						<img alt="" src="img/prakashsir.png">
						<p>Website Developed under Guidence of</p>
						<h3>Mr. Prakash Ranjan</h3>
						<p>Craft your ideas and bring them to life.</p>
						<p style="text-align: center;">Keeping it Smile.</p>
					</div>
				</div>
				<div class="face face2">
					<div class="content">
						<h3
							style="text-align: center; font-family: 'Pacifico', cursive; font-size: 1.2em;">MR.
							Prakash Ranjan</h3>
						<p
							style="text-align: justify; color: #1a0000; font-family: 'Pacifico', cursive; font-size: 0.7em;">
							HOD and Lecturer in BCA Sahibganj College Sahibganj (S.K.M
							University, DUMKA), Jharkhand.<br> <br> Experience: 1.8
							yr experience in PCS Technology Pvt. Ltd. as Facility Manager cum
							customer support engineer<br> <br>Project Experience:
							VAHAN & SARATHI<br> <br>Role: System Maintenance,
							Configuring Network and Oracle Server Maintenance.<br> <br>Languages:
							C++, JAVA, Visual Basic and .net.<br> (DBMS) Oracle 9i and
							MS-Access <br>(Network) Switches and Novel<br> <br>
							Contact: +919905110753, +919955501231<br> Email:
							ranjanprakash143@gmail.com
						</p>
					</div>
				</div>
			</div>
			<div class="card">
				<div class="face face1">
					<div class="content">
						<img alt="" src="img/prakashsir.png">
						<h3>
							hi! I'm Bibhanshu
							<p>i design and build user interfaces.</p>
						</h3>
						<p>Less is more Simplicity key Minimalism.
						<p>Think positive
					</div>
				</div>
				<div class="face face2">
					<div class="content">
						<h3
							style="font-size: 1.2em; text-align: center; font-family: 'Pacifico', cursive;">Vibhanshu
							Gupta</h3>
						<p
							style="text-align: justify; color: #1a0000; font-size: 0.7em; font-style: italic; font-family: 'Pacifico', cursive;">
							pursuing BCA SEM-V from Sahibganj College Sahibganj (S.K.M
							University, DUMKA), Jharkhand.<br> <br> Currently i'm
							seeking job/internship as fresher level.<br> <br>Skills:
							HTML, CSS and Core JAVA<br> <br> To know more about me<br>
							Contact: +9197233159<br> Email: r.j.ravi@outlook.com
						</p>

					</div>
				</div>
			</div>
		</div>

	</div>

	<div style="display: flex; text-align: center; height: 100%; background: #000;">
		<div style="width: 33.33%; color: red;">
			<h5 style="color: red;">ADDRESS</h5>
		
			<p>
				Sahibganj College, Sahibganj <br>City : Sahibganj <br>Pin
				Code : 816109 <br>PHONE : 06436-222056<br>MOBILE : +91-9470572489 <br><h5 style=" text-decoration: underline;">EMAIL:-</h5>info@sahibganjcollegein <br> principal@sahibganjcollege.in
			</p>
		</div>
		<div style="width: 33.33%; color: red;">
			<h5 style="color: red;">MAP</h5>
			<br>
			<div style="overflow: hidden; position: relative;">
				<iframe width="300" height="250"
					src="https://maps.google.com/maps?hl=en&amp;q=sahibganj college sahibganj jharkhand+(Sahibganj College Sahibganj)&amp;ie=UTF8&amp;t=&amp;z=10&amp;iwloc=B&amp;output=embed"
					frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>
				<div
					style="position: absolute; width: 80%; bottom: 10px; left: 0; right: 0; margin-left: auto; margin-right: auto; color: #000; text-align: center;">
					<small style="line-height: 1.8; font-size: 0px; background: #fff;">
						<a href="https://googlemapsembed.net/">Google Maps Embed</a>
					</small>
				</div>


			</div>
		</div>
		<div class="imlinks"
			style="width: 33.33%; color: red; justify-content: center;">
			<h5 style="color: red">IMPORTANT LINK'S</h5>
			<a href="https://sahibganjcollege.in/">Sahibganj College</a><br> <a href="http://www.skmu.ac.in/">SKMU Dumka</a><br> <a
				href="https://jharkhanduniversities.nic.in/home">Chancellor Portal Jharkhand</a><br> <a href="https://ekalyan.cgg.gov.in/">E-Kalyan</a><br> <a href="https://scholarships.gov.in/">National Scholarship</a>
			<br><a href="https://www.sarkariresult.com/">Sarkari Result</a><br> <a href="https://www.indiabix.com/">IndiaBix</a><br> <a
				href="https://www.youtube.com/channel/UC8lJh15e2OyxkGvPw0w4rOg">Hotspot Chemistry</a><br> <a href="https://www.w3schools.com/">W3School</a><br><a href="https://www.javatpoint.com/">Javatpoint</a><br> <a href="https://www.pdfdrive.com/">E-Books/Library(in pdf)</a>
		</div>
	</div>


</body>
</html>