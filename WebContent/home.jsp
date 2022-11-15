<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="author" content="Vidyasager">
	<!-- Google Fonts -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&display=swap" rel="stylesheet"> 
	<link href="https://fonts.googleapis.com/css2?family=Teko:wght@400;700&display=swap" rel="stylesheet"> 
	<link href="https://fonts.googleapis.com/css2?family=Dancing+Script&family=Square+Peg&family=Sacramento&family=Source+Sans+Pro:ital,wght@1,300&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Barlow+Condensed&family=Teko:wght@400;700&display=swap" rel="stylesheet"> 
	<title>SSSIHL MDH Campus</title>
	<!-- Favicon -->
	<link rel="icon" type="image/x-icon" href="public/Images/favicon.ico">
	<link rel="stylesheet" type="text/css" href="public/styles.css">
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>
<body>
	<header id="home">
		<span style="font-size: 30px;cursor: pointer;" onclick="openNav()">&#9776;</span>
		<div class="dropdown">
			<a class="dropbtn" style="font-size: 25px;padding: 10px"><%= session.getAttribute("name") %></a>
			<div class="dropdown-content">
			  <a href="profile.jsp">Profile</a>
			  <a href="index.jsp">Logout</a>
			</div>
		</div>
	</header>
	<input type="image" id="dark" src="public/Images/circle-half-stroke-solid.png" onclick="myFunction()">
	<div id="sidenavbar" class="sidenavbar">
		<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a> 
		<a href="#go">Home</a>
		<a href="#ab">About</a>
		<a href="#p">Problem Statement</a>
		<a href="#con">Contact</a>
	</div>
	<br id="go"><br><br><br><br><br><br><br><br>
	<div id="main">
		<div class="home-container">
			<div class="logo">
				<img src="public/Images/sssihl-modified.png" width="140" height="140">
			</div>
			<div class="intro">
				<h1 style="margin-bottom: 0;">SSSIHL MDH CAMPUS</h1>
			</div>
			<div class="contd">
				<p style="margin-top: 0; margin-bottom: 0;">Student & Faculty Database</p>
				<p style="margin-top: 0;font-size: 25px;"> by Vidyasager GR & Sairaj Patro</p>
			</div>
		</div>	
		<br><br>
		<hr class="dotted">
		<br id="ab">
		<div id="about">
			<h1>ABOUT</h1>
			<h2 style="text-align: center;">This is our DBMS project</h2>
			<p>We (Vidyasager GR & Sairaj Patro) the students of <abbr title="Sri Sathya Sai Institute of Higher Learning">SSSIHL</abbr> have chosen our DBMS Project to compile the database of all the faculty and students of our <abbr title="Muddenahalli">MDH</abbr> Campus.</p>
			<q>Apart from being a Database of Faculty and Students, it will also lead to making a software/web-interface that generates class Timetables based on the details in the Database.</q>
		</div>
		<div class="idea">
			<h4>The Base Idea: <i>A Repository of the Student, Faculty, Department and Subject details.</i></h4>
			<h4>Final Result: <i>A web-interface that allows users to access details of faculty and students and also to generate Timetables.</i></h4>
		</div>
		<br>
		<hr class="dotted">
		<br id="p">
		<div id="ps">
			<h1>PROBLEM STATEMENT</h1>
			<q>When a Teacher joins the institute, he is provided with his department details.
			Once he is in campus, he is requested to submit certain details and documents. These details are entered into the system to keep a record of all the teachers of the campus.</q>
			<br>
			<q>When a student joins the institute, he is provided with his roll number and other details based on his course details. Once he is in campus, he is requested to submit certain documents. These details are entered into the system to keep a record of all the students of the campus.</q>
			<br><br>
			<i>(This rendition of the Database will encompass data of faculty and students of the MDH campus specifically)
			But in essence, this system can be implemented across all the campuses.
			Eg: We can also create a BRN Campus Database.</i>
		</div>
		<br>
		<div class="ele">
			<b>The Teacher table will contain the following attributes:</b>
			<ul>
				<li>Teacher Name</li>
				<li>DOB (Date of Birth)</li>
				<li>Address</li>
				<li>Qualifications</li>
				<li>Experience</li>
				<li>Teaching Areas</li>
				<li>Phone No.</li>
				<li>Email ID</li>
				<li>Blood Group</li>
				<li>Department</li>
			</ul>
			<br>
			<b>The Student table will contain the following attributes:</b>
			<ul>
				<li>Student Name</li>
				<li>DOB (Date of Birth)</li>
				<li>Regd No.</li>
				<li>Address</li>
				<li>Phone No.</li>
				<li>Email ID</li>
				<li>Blood Group</li>
				<li>Religion</li>
				<li>Caste (If applicable)</li>
			</ul>
			<br>
			<b>The Department table will contain the following attributes:</b>
			<ul>
				<li>Department Name</li>
				<li>Department ID</li>
			</ul>
			<br>
			<b>The Slot table will be specialized into multiple tables:</b>
			<ul>
				<li>Common Subjects</li>
				<li>Core Subjects</li>
				<li>Electives</li>
				<li>Lab Subjects</li>
				<li>Fixed Slots(Library, Lunch, Moral Class)</li>
			</ul>
			<br>
			<b>The Course table will be specialized into multiple tables:</b>
			<ul>
				<li>UG</li>
				<li>PG</li>
			</ul>
		</div>
		<br>
		<hr class="dotted">
		<br id="con">
		<div id="contact">
			<h1>CONTACT US</h1>
			<h2>Vidyasager GR & Sairaj Patro</h2>
			<address>
				vidyasager162@gmail.com<br>
				patrosairaj33@gmail.com<br>
				Sri Sathya Sai Institute of Higher Learning Hostel,<br>
				Muddenahalli Campus,<br>
				(South Gate)<br>
				Muddenahalli,<br>
				Chikkaballapur-562101<br>
				Karnataka
			</address>
			<br>
		</div>
		<br>
	</div>
	<footer>
		<div class="footer-wrapper"> 
			<div class="img-wrapper">
				<a href="/">  
					<span class="footer-img">
						<img src="public/Images/sssihl_footer_modified.png" alt="sssihl_footer_modified.png" width="196" height="40">
					</span>
				</a>
			</div>
			<div class="con-wrapper">
				<h2 style="font-size: 40px;">Write to us</h2>
				<p style="font-size: 20px">Let us know your impressions about the website</p>
				<form action="">
					 <textarea name="msg" id=""></textarea>
					 <button type="submit">Compose</button>
				</form>
			</div>
			<hr class="fhr"> 
			<p>&copy; SSSIHL MDH 2022</p>
		</div>
	</footer>
	<script src="public/script.js"></script>
</body>
</html>
