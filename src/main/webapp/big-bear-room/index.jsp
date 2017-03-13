<!doctype html>
<html lang="en">
<head>

	<meta charset="utf-8">
	<title>Big Bear</title>
	<meta name="description" content="The HTML5 Herald">
	<meta name="author" content="SitePoint">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<!--[if lt IE 9]>
	    <script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.js"></script>
	<![endif]-->
	
	<%@ page import="model.*" %>
	<link rel="stylesheet" href="https://www.w3schools.com/lib/w3.css">
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<!--<h1>Hello <%= request.getSession().getAttribute("username") %>, Welcome to Big Bear ROOM!</h1> -->
	
	<div>
		<ul id="messageList" class="w3-ul">
			<li class="message-card w3-card-4">
				<span class="user-info w3-text-red">Utente 1</span>
				<div>
					<span class="message-content">Message<span>
				</div>
			</li>
			<li class="message-card w3-card-4">
				<span class="user-info w3-text-green">Utente 2</span>
				<div>
					<span class="message-content">Message<span>
				</div>
			</li>
			<li class="message-card w3-card-4">
				<span class="user-info w3-text-purple">Utente 3</span>
				<div>
					<span class="message-content">Message<span>
				</div>
			</li>
			<li class="message-card w3-card-4">
				<span class="user-info w3-text-green">Utente 2</span>
				<div>
					<span class="message-content">Message<span>
				</div>
			</li>						
		</ul>
	</div>

	<div>
		<ul id="userList"></ul>
	</div>
	
	<form id="messageForm">
		<input type="text" id="chatInput" />
		<button type="submit">Send</button>
	</form>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script src="script.js"></script>
</body>
</html>