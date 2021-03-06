<!doctype html>
<html lang="en">
<head>

	<meta charset="utf-8">
	<title>Big Bear</title>
	<meta name="description" content="Big Bear">
	<meta name="author" content="Cps4j">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="apple-touch-icon-precomposed" sizes="57x57" href="./../icons/apple-touch-icon-57x57.png" />
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="./../icons/apple-touch-icon-114x114.png" />
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="./../icons/apple-touch-icon-72x72.png" />
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="./../icons/apple-touch-icon-144x144.png" />
    <link rel="apple-touch-icon-precomposed" sizes="60x60" href="./../icons/apple-touch-icon-60x60.png" />
    <link rel="apple-touch-icon-precomposed" sizes="120x120" href="./../icons/apple-touch-icon-120x120.png" />
    <link rel="apple-touch-icon-precomposed" sizes="76x76" href="./../icons/apple-touch-icon-76x76.png" />
    <link rel="apple-touch-icon-precomposed" sizes="152x152" href="./../icons/apple-touch-icon-152x152.png" />
    <link rel="icon" type="image/png" href="./../icons/favicon-196x196.png" sizes="196x196" />
    <link rel="icon" type="image/png" href="./../icons/favicon-96x96.png" sizes="96x96" />
    <link rel="icon" type="image/png" href="./../icons/favicon-32x32.png" sizes="32x32" />
    <link rel="icon" type="image/png" href="./../icons/favicon-16x16.png" sizes="16x16" />

    <link rel="manifest" href="./../icons/manifest.json">
    <meta name="theme-color" content="#795548">

	<!--[if lt IE 9]>
	    <script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.js"></script>
	<![endif]-->
	
	<%@ page import="model.*" %>
	<link rel="stylesheet" href="https://www.w3schools.com/lib/w3.css">
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="style.css">

</head>
<body>
	<!--<h1>Hello <%= request.getSession().getAttribute("username") %>, Welcome to Big Bear ROOM!</h1> -->
	
	<div>
		<ul id="messageList" class="w3-ul">
			<span class="fa fa-spinner fa-pulse fa-5x fa-fw"></span>
		</ul>
	</div>

	<div>
		<ul id="userList"></ul>
	</div>
	
	<form id="messageForm" class="w3-panel w3-grey chat-form" style="margin-bottom: 0px!important;" autocomplete="off">
		<div class="w3-row">
  			<div class="w3-col s10 m11">
    			<input type="text" id="chatInput" class="chat-text" placeholder="Send your thoughts"/>
  			</div>
  			<div class="w3-col s2 m1">
    			<button type="submit" class="w3-button w3-brown chat-button">
					<span class="fa fa-arrow-right" aria-hidden="true"></span>
    			</button>
  			</div>
		</div>
	</form>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script src="script.js"></script>
</body>
</html>