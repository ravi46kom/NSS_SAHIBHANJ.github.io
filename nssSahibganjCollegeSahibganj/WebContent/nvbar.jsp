<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="NewFile.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous">
</head>
<body>

	<nav class="navbar fixed-top navbar-expand-lg navbar-dark"
		style="background: #000098;">

		<a class="navbar-brand" href="index.jsp" style="font-family: cursive;">NSS</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">

				<li class="nav-item"><a class="nav-link" href="#"><span
						class="fa fa-bell-o"></span> Notice</a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="!#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> Organization </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown"
						style="background: #00009e;">
						<a class="dropdown-item" href="!#" data-toggle="modal"
							data-target="#aboutus">About NSS</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#">Objectives</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="!#" data-toggle="modal"
							data-target="#regularActivities">Regular Activities</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#">Special Camping Programme</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#">Awards & Awardees</a>
					</div></li>

				<li class="nav-item"><a class="nav-link"
					href="programofficer.jsp"><span class="fa fa-image 3x"></span>Program
						Officer's</a></li>
				<li class="nav-item"><a class="nav-link" href="#"><span
						class="fa fa-image 3x"></span> Gallery</a></li>
				<li class="nav-item"><a class="nav-link" href="contactUs.jsp"><span
						class="fa fa-image 3x"></span> Contact Us</a></li>


			</ul>
			<form class="form-inline my-2 my-lg-0" action="AlumniLogin"
				method="post">
				<input class="form-control mr-sm-2" type="text"
					placeholder="Alumni ID" aria-label="Search" name="alumniid">
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Submit</button>
				<a class="btn btn-outline-success my-2 my-sm-0" type="button"
					style="margin: 10px;" href="ragistration.jsp">Signup</a> <a
					class="btn btn-outline-success my-2 my-sm-0" type="button"
					href="Login.jsp">Login</a>
			</form>


		</div>
		<div></div>
	</nav>




	<!-- Modal -->
	<div class="modal fade" id="aboutus" data-backdrop="static"
		data-keyboard="false" tabindex="-1"
		aria-labelledby="staticBackdropLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-scrollable">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="staticBackdropLabel">About NSS</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<h5>Sahibganj College Sahibganj.</h5>

					<p style="text-align: justify;">National Service Scheme (NSS)
						was launched during the Mahatma Gandhi’s Centenary Year (1969)
						involving 40,000 student volunteers in 37 universities. Today, it
						has more than 2.6 million student volunteers spread over 198
						universities and 41 (+2) Councils and implemented in 16,659
						academic institutions.
					<h4>AIM</h4>
					<p style="text-align: justify;">The aim of National Service
						Scheme is “Development of the Personality of Students through
						Community Service”. In order to fulfill the objective, student
						volunteers and programme functionaries are engaged in constructive
						and productive programmes involving students in various awareness
						drives,
					<p style="font-weight: 500; font: bold; text-align: justify;">shramdaan,
						social reforms, communal harmony, creation of community assets,
						relief work, blood donation, environmental protection, literacy
						programme, health education campaign, etc.</p>
					<p style="text-align: justify;">
						Under the scheme, each volunteer contributes 240 hours of
						community work during a period of two years.<br> <br>
					<h4>NSS at Sahibganj College, Sahibganj</h4>
					<p style="text-align: justify;">This College has been pioneer
						in implementing the scheme since its inception in Jharkhand Social
						service is an integral component (under Rural Development) of
						Sahibganj College programme of innovative and comprehensive
						undergraduate education, which combines academic excellence with
						social relevance. Ambience of an active, disciplined, socially
						sensitive and co-operative community life and work ethic at
						Sahibganj with its multi-faceted infrastructure of agriculture,
						education and industry, provide the basic thrust for social work
						in surrounding villages. Starting with only two units of 100
						students each and two project officers in 1970 the Institute has
						1500 students on roll in NSS with 14 Programme Officers and a
						Programme Co-ordinator. With the co-ordinated effort of all the
						faculties, multi-pronged efforts have been made to make a more
						effective contribution towards rural reconstruction. Participation
						in N.S.S. Camp is compulsory for all students in the first
						semester of their course of study.
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary">Understood</button>
				</div>
			</div>
		</div>
	</div>
	<!-- regular activities -->
	<div class="modal fade" id="regularActivities" data-backdrop="static"
		data-keyboard="false" tabindex="-1"
		aria-labelledby="staticBackdropLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-scrollable">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="staticBackdropLabel">Modal title</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<p style="text-align: justify;">According to program fixed by
						Ministry of Youth Affairs and Sports, Government of India, and NSS
						Regional Directorate, Lucknow, the NSS Wing of the Institute
						celebrated International Yoga Day in the morning of 21st June
						2015. The program was organized at Sports Ground, Faculty of
						Science of the Institute. Apart from the Director and other
						officials of the Institute, the program was graces by Yoga Expert
						Prof. P. Srirama Murti, Swami Pariharanand, Renowned Medical
						Practitioner Dr. Siddharth Agrawal, Mrs. Sneh Bijlani, Prof Ajay
						Saxena, Trained Yoga Demonstrators Dr. S.D. Sinha and Mrs.
						Sangeeta Sinha and others. A large number of NSS Volunteers (800
						approx), NSS Officials, Teachers and Staff of the Institute
						enthusiastically participated in the program. The program included
						Awareness Program, Exhibition of Various Postures of Yogasanas,
						Quiz Competition on “Significance and Benefits of Yoga”, Invited
						talk by Prof. P. Srirama Murti, Dr. Siddharth Agrawal and Swami
						Pariharanand.
					<p
						style="font-weight: 500; font: bold; display: inline; text-align: justify;">World
						Population Day</p>
					<p style="text-align: justify; display: inline-block;">
						was observed on 11th July 2015. On this occasion NSS volunteers of
						all the faculties participated in Discussion Program and an Inter
						Faculty Speech Competition on the “Population is a Boon or Bane
						for India”. The winners of Speech Competition wereAkshat Tomar
						(First), Jan Vijay (Second) and Shivangi Sarabhai (Third). <br>During






					
					<p
						style="font: bold; font-weight: 500; display: inline; text-align: justify;">Environment
						Protection Month</p>
					(19 July - 31 August 2015), the Volunteers and Program Officers of
					faculty of Commerce organized Inter-Faculty Skit Competition on
					28th August 2015. The theme of the competition was “Environment
					Degradation and its Solutions”. In this competition volunteers of
					Commerce Facultygot first position. Volunteers of Engineering
					andArts faculty got second and third position. <br>The NSS
					Cell of the Institute observed
					<p
						style="font: bold; font-weight: 500; display: inline; text-align: justify;">“National
						Nutrition Week”</p>
					from 1-7 September 2015”. To mark this event, the Volunteersand
					Program officers of Faculty of Arts organized a Invited Talk of on
					the topic “Nutrition, Health and Social Development” on 7th
					September 2015. A large number of NSS volunteers from all the
					faculties attended this program. <br>During
					<p
						style="font: bold; font-weight: 500; display: inline; text-align: justify;">International
						Literacy Week</p>
					(8-14 September 2015), International Literacy Day was observed on
					8th September, 2014. On this day, Volunteersand Program officers of
					Faculty of Arts organized Inter-faculty Essay Writing Competition
					on the topics “Education, Culture and Employment” and
					“Globalization and Education”. The volunteers of the all the
					faculties took active part in this Competition. Volunteersand
					Program officers of Faculty of Arts also organized Inter-Faculty ?
					Skit Competition on 12th September 2015. The theme of the
					competition was “Women Education and Social Development”. In this
					competition volunteers of Engineering Facultygot first position.
					Volunteers of Commerce andScience faculty got second and third
					position.<br>
					<p
						style="font: bold; font-weight: 500; display: inline; text-align: justify;">NSS
						Day</p>
					was observed on 24 September 2015 to mark the foundation of
					National Service Scheme to sensitize youth of the nation about
					nation building exercises. On this occasion, Oath Ceremony was
					organized by all faculties of the Institute during the morning
					assembly. Apart from this NSS Unit of the Institute also organized
					a Speech Competition on the Topic “Role of NSS Volunteers and Youth
					in Development of a Nation”.<br>
					<p
						style="font: bold; font-weight: 500; display: inline; text-align: justify;">
						Communal Harmony Day (2 OCTOBER 2015)</p>
					which is celebrated as Birth Anniversary of Rashtarpita Mahatma
					Gandhi was observed in the institute. On this accession NSS
					volunteers of the Institute took Oath of Peace and harmony and
					participated in Cleanliness Awareness Program and also in Cleaning
					Activities in the campus, adopted Villages and Slums. <br>
					<p
						style="font: bold; font-weight: 500; display: inline; text-align: justify;">National
						Unity Day</p>
					was observed on31st October 2015 on the Birth Anniversary of Sardar
					Vallabh Bhai Patel. The NSS volunteers on this occasion took active
					part in various activities. These include “National Unity Oath
					Ceremony” in all the faculties of the institute after morning
					assembly, and Speech and Poster Making Competition on “Role of
					Youth in national Unity”.<br>
					<p
						style="font: bold; font-weight: 500; display: inline; text-align: justify;">National
						Integration Week</p>
					was celebrated from 19 to 25 November 2015. On this occasion the
					NSS volunteers took active part in Inter-faculty Essay/ Slogan and
					Poster Making Competition on “Intolerance and Freedom of
					Expression” and also in Inter-faculty Speech Competition on
					National Integration and Democracy”.<br>
					<p
						style="font: bold; font-weight: 500; display: inline; text-align: justify;">
						World AIDS Day</p>
					was observed on 1st December, 2015. On this occasion NSS volunteers
					participated in Discussion Program and Inter-faculty Essay Writing
					Competition on “Causes, Effects and Precautions to Control AIDS”. <br>The
					NSS Unit of the Institute observed 26November 2015 as
					<p
						style="font: bold; font-weight: 500; display: inline; text-align: justify;">Constitution
						Day,</p>
					the Birth Anniversary of the Architect of Indian Constitution
					Bharat Ratna Dr. Bhim Rao Ambedkar. The NSS volunteers on this
					occasion took active part in various activities. These include
					Inter-faculty Essay Writing Competition on the topic “Contribution
					of Dr. Bhim Rao Ambedkar in Indian Constituion”, Speech Competition
					on the topic “Life and Work ofDr. Bhim Rao Ambedkar”and an Skit
					Competition on the major theme “Life and Work ofGreat Saint Dr.
					Bhim Rao Ambedkar”. <br>The Volunteers and staff of NSS Cell
					of the Institute organized
					<p
						style="font: bold; font-weight: 500; display: inline; text-align: justify;">Shramdaan
						Activities</p>
					on 13th January 2016involving NSS Volunteers of different
					Faculties. In the evening session of the program a
					<p
						style="font: bold; font-weight: 500; display: inline; text-align: justify;">Socio-Cultural</p>
					Program was organized in different locations within an outside the
					Institute. The activities conducted on this occasion included
					Cleaning of Campus and Surroundings, a Socio-Cultural Program and
					Camp Fire. <br>
					<p
						style="font: bold; font-weight: 500; display: inline; text-align: justify;">National
						Youth Week</p>
					was observed in the Institute during 12-19 January 2016. The NSS
					volunteers on this occasion took active part in various activities.
					On 12th January, the Birth Day of Swami Vivekanand, the NSS
					Volunteers of the Institute took active part in Inter-faculty Essay
					Writing Competition on “Teachings and Contribution of Swami
					Vivekanand”. To make NSS Volunteers more accountable towards
					society, the NSS Cell of the Institute organized an
					interaction-cum-discussion program on “Role of Youth in Nation
					Building” and also inter-faculty Poster Making Competition on 19
					January 2016. <br>The NSS Volunteers of the Institute are
					regularly taking active part in
					<p
						style="font: bold; font-weight: 500; display: inline; text-align: justify;">Voters
						Awareness and Registration Program</p>
					launched by Government of India. A Voters
					Awareness-cum-Registration program was organized in the Institute
					for students, staff and common people from nearby localities,
					adopted villages and slums during NSS Seven Day Special Camp.
					(23-29 December 2015). A large number of students of the Institute
					and people from nearby localities, adopted villages and slums
					registered themselves in the Voters List. <br>On 25th January
					2016,
					<p style="font: bold; font-weight: 500; display: inline;">National
						Voters Day,</p>
					the NSS Cell of the Institute Organized Voters Oath Ceremony for
					all NSS Volunteers and Staff of the Institute and also a Inter-
					faculty Skit Competition. <br>Voters Registration Program was
					also organized in the Institute on the occasion of Founders Day (31
					January 2016), On 30 January 2016, the Volunteers and Staff of NSS
					Cell of the Institute organized a gathering of all the students and
					staff of the Institute and administered
					<p style="font: bold; font-weight: 500; display: inline;">
						“Swacchta Shapath”</p>
					as contained in the official website of the Ministry of Human
					Resource Development, Government of India. The NSS Cell of the
					Institute organized a gathering of students and staff of the
					Institute to observe Two Minutes Silence from 11.00 am to 11.02 am
					on 30th January 2016 to commemorate the
					<p style="font: bold; font-weight: 500; display: inline;">Martyrs
						Day.</p>
					<br>During this period, all work was suspended in every
					faculty and office of the institute. <br> <br>
					<p style="font: bold; font-weight: 500; display: inline;">Founder’s
						Day</p>
					was celebrated on 31st January 2016 on the Birth Anniversary of
					Gracious Huzur Dr. M.B. Lal Sahab, Founder Director of the
					Institute. A Photo-cum-Poster Exhibition was organized to depict
					the contribution of the Institute to the society during current
					academic session. On this occasion, the Volunteers and Staff of NSS
					Cell of the Institute also made live presentation on its unique
					activities such as Children Recreation facilities,
					Hole-in-the-Wall, Chaupal, Spoken English and Rural Assistance
					conducted in nearby rural areas.<br> <br> The NSS
					Volunteers of the Institute took active part in
					<p style="font: bold; font-weight: 500; display: inline;">One
						Day NSS Camp</p>
					organized on 22th November 2015. The activities conducted in this
					Camp included Cleanliness on Roadsides towards adopted villages and
					Slums, Free Medical Camp for people of adopted villages and Slums,
					Recreation and Literary Activities for Children of adopted villages
					and Slums, Rural Assistance and Chaupal, and Vocational Training
					for Youth of adopted villages and Slums.
					</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary">Understood</button>
				</div>
			</div>
		</div>

	</div>

	<!-- JavaScript -->
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"
		integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>




</body>
</html>