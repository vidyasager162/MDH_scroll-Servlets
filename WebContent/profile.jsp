<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="author" content="Vidyasager">
	<!-- Google Fonts -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Barlow+Condensed&family=Teko:wght@400;700&family=Just+Another+Hand&family=Dancing+Script&family=Square+Peg&family=Sacramento&family=Source+Sans+Pro:ital,wght@1,300&display=swap" rel="stylesheet">
	<title>SSSIHL MDH Campus</title>
	<!-- Favicon -->
	<link rel="icon" type="image/x-icon" href="public/Images/favicon.ico">
	<link rel="stylesheet" type="text/css" href="public/styles.css">
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>
<body>
    <header id="home">
		<a href="home.jsp">BACK</a>
	</header>
	<input type="image" id="dark" src="public/Images/circle-half-stroke-solid.png" onclick="myFunction()">
    <div id="main">
        <h1>PROFILE</h1>
            <center>
                <div class="login" id="login">
                    <h2><%= session.getAttribute("name") %></h2>
             		<p><%= session.getAttribute("username") %></p>
             		<p><%= session.getAttribute("email") %></p>
             		<form action="delete" method="post">
             			<button type="submit" name="delete">Delete Account</button>
             		</form>
                </div>
            </center>
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
    