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
					<span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing elit<span>
				</div>
			</li>
			<li class="message-card w3-card-4">
				<span class="user-info w3-text-green">Utente 2</span>
				<div>
					<span class="message-content">Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<span>
				</div>
			</li>
			<li class="message-card w3-card-4">
				<span class="user-info w3-text-purple">Utente 3</span>
				<div>
					<span class="message-content">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur<span>
				</div>
			</li>
			<li class="message-card w3-card-4">
				<span class="user-info w3-text-green">Utente 2</span>
				<div>
					<span class="message-content">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam<span>
				</div>
			</li>						
		</ul>
	</div>

	<div>
		<ul id="userList"></ul>
	</div>
	
	<form id="messageForm" class="w3-panel w3-teal chat-form">
		<input type="text" id="chatInput" class="chat-text"/>
		<button type="submit" class="w3-button w3-indigo chat-button">Send</button>
	</form>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script src="script.js"></script>
</body>
</html>