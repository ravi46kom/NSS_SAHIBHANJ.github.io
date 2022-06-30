<%@page import="java.util.List"%>
<%@page import="com.nss.sahibganj.entities.EventBean"%>
<%@page import="com.nss.sahibganj.dao.NoticeEventImageDao"%>
<%@page import="com.nss.sahibganj.entities.Noticebean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>

<!-- css -->

<style type="text/css">
.slidess {
	display: flex;
	justify-content: center;
	align-items: center;
	margin: 5px;
	padding: 5px;
}

.slidess .box {
	width: 20rem;
	height: 30rem;
	border: none;
	margin: 5px;
	border: solid;
	color: #1565C0;
	background: #F5F5F5;
}

.slidess .box p {
	margin: 5%;
	color: #FFEB3B;
	background: #0D47A1;
}

.slidess .box-middle {
	width: 45rem;
	height: 30rem;
	background: black;
	overflow: hidden;
	position: relative;
}

.slidess .box-middle .imgslide {
	width: 100%;
	height: 100%;
	position: absolute;
}

.slidess .box-middle .imgslide img {
	border-color: red;
	width: 100%;
	height: 100%;
}

.prev, .next {
	cursor: pointer;
	position: absolute;
	top: 50%;
	width: auto;
	margin-top: -22px;
	padding: 16px;
	color: white;
	font-weight: bold;
	font-size: 18px;
	transition: 0.6s ease;
	border-radius: 0 3px 3px 0;
	user-select: none;
}
/* Position the "next button" to the right */
.next {
	right: 0;
	border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
	background-color: rgba(0, 0, 0, 0.8);
}

/* Caption text */
.text {
	color: #f2f2f2;
	font-size: 15px;
	padding: 8px 12px;
	position: absolute;
	bottom: 8px;
	width: 100%;
	text-align: center;
}
/* The dots/bullets/indicators */
.dot {
	cursor: pointer;
	height: 15px;
	width: 15px;
	background-color: #bbb;
	border-radius: 50%;
	transition: background-color 0.6s ease;
}

.active, .dot:hover {
	background-color: #717171;
}

h5 {
	text-align: center;
	color: #0D47A1
}

@media only screen and (max-width: 1200px) {
	.slidess {
		display: grid;
		justify-content: center;
		align-items: center;
	}
	.box {
		width: 400px;
		justify-content: center;
		align-items: ce
	}
}
</style>
</head>
<body style="margin: 0; padding: 0;">
	<div class="slidess">
		<div class="box" style="text-align: justify; text-indent: 10%;">

			<h5>Notice</h5>
			<%
				//UserBean user = new UserBean();
				NoticeEventImageDao dao = new NoticeEventImageDao();
				List<Noticebean> userList = dao.getAllNotices();
				List<EventBean> userlists = dao.getAllEvents();
				//Iterator<UserBean> itr = userList.iterator();
			%>
			<marquee direction="up" scrolldelay="80s" style="height: 26rem;">
				<%
					/*while(itr.hasNext())
							{
							System.out.println(user.getId());*/
					for (Noticebean user : userList) {
				%>
				<p><%=user.getNotices()%>

					<%
						}
						//}
					%>
				
			</marquee>
		</div>
		<div class="box-middle">
			<div class="imgslide">
				<img alt="" src="img/Sahibganj-College.jpg">
				<div class="text">CaptionOne</div>
			</div>
			<div class="imgslide">
				<img alt="" src="img/corona.png">
				<div class="text">Caption Two</div>
			</div>
			<div class="imgslide">
				<img alt="" src="img/enviroment.png">
				<div class="text">Caption Two</div>
			</div>
			<!-- Next and previous buttons -->
			<a class="prev" onclick="plusSlides(-1)"> &#10094;</a> <a
				class="next" onclick="plusSlides(1)">&#10095;</a>
		</div>
		<br>

		<!-- The dots/circles -->
		<div style="text-align: center">
			<span class="dot" onclick="currentSlide(1)"></span> <span class="dot"
				onclick="currentSlide(2)"></span> <span class="dot"
				onclick="currentSlide(3)"></span>
		</div>

		<div class="box" style="text-align: justify; text-indent: 10%;">
			<h5 class="card-title">Lattest Events</h5>

			<marquee direction="up" scrolldelay="80s" style="height: 26rem;">
				<%
					/*while(itr.hasNext())
							{
							System.out.println(user.getId());*/
					for (EventBean user : userlists) {
				%>
				<p><%=user.getEvents()%>

					<%
						}
						//}
					%>
				
			</marquee>



		</div>
	</div>
	<script type="text/javascript">
		var slideIndex = 0;
		showSlides();

		function showSlides() {
			var i;
			var slides = document.getElementsByClassName("imgslide");
			for (i = 0; i < slides.length; i++) {
				slides[i].style.display = "none";
			}
			slideIndex++;
			if (slideIndex > slides.length) {
				slideIndex = 1
			}
			slides[slideIndex - 1].style.display = "block";
			setTimeout(showSlides, 2000); // Change image every 2 seconds
		}
	</script>
</body>
</html>
