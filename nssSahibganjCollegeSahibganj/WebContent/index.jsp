
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<body>
	<!-- NavBAr -->
	<%@include file="nvbar.jsp"%>

	<!-- header -->
	<%@include file="header.jsp"%>
	<!-- Slide Image -->

	<%@include file="slideimg.jsp"%>
	<!-- Button trigger modal -->
	
	<!-- Banner -->
	<div class="jumbptroncontainer-fluid p-0 m-0"
		style="height: 1000; background: #00009e;">
		<div class="jumbptron primary-background text-white">

			<div class="container">
				<h3 class="display-3" style="text-align: center;">WellCome to</h3>
				<h3 class="display-3" style="text-align: center;">National
					Service Scheme</h3>
				<p style="text-align: justify;">
					The National Service Scheme (NSS) is a Central Sector Scheme of
					Government of India, Ministry of Youth Affairs & Sports. It
					provides opportunity to the student youth of 11th & 12th Class of
					schools at +2 Board level and student youth of Technical
					Institution, Graduate & Post Graduate at colleges and University
					level of India to take part in various government led community
					service activities & programmes.The sole aim of the NSS is to
					provide hands on experience to young students in delivering
					community service <a href="#">read More</a>
				</p>


				<div style="display: block; margin: 0 auto; text-align: center;">
					<a class="btn btn-outline-light btn-lg"
						style="margin-bottom: 50px;" href="ragistration.jsp">Signup</a> <a
						class="btn btn-outline-light btn-lg" style="margin-bottom: 50px;"
						href="Login.jsp">Login</a>
				</div>
			</div>
		</div>
	</div>
	<!-- principal -->
	<%@ include file="clgprincpal.jsp"%>
	<!-- program Officer -->
	<!-- footer -->
	<%@include file="footer.jsp"%>




</body>
</html>