<!doctype html>
<html lang="en">
<head>

	<meta charset="utf-8">
	<title>Big Bear</title>
	<meta name="description" content="The HTML5 Herald">
	<meta name="author" content="SitePoint">
	<!--[if lt IE 9]>
	    <script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.js"></script>
	<![endif]-->
</head>
<body>
	<h1>Hello <%= request.getSession().getAttribute("username") %>, Welcome to Big Bear ROOM!</h1>  
	
	<div>
		<ul id="messageList"></ul>
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