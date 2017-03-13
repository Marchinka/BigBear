<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Big Bear</title>
	<meta name="description" content="The HTML5 Herald">
	<meta name="author" content="SitePoint">
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
	<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet"> 
    <style type="text/css">
    	body {
        	font-family: 'Roboto', sans-serif;
      	}
     </style>
	<!--[if lt IE 9]>
	    <script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.js"></script>
	<![endif]-->
	<link rel="stylesheet" href="https://www.w3schools.com/lib/w3.css">
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

<form action="/Login" method='post' id="loginForm">
	<div class="imgcontainer">
    	<img src="login-bear.jpg" alt="Avatar" class="avatar">
  	</div>

	<div class="w3-container">
		<div>
			<label for='username'>Username</label>
			<input name='username' id='username' type='text' placeholder='Insert username'/>
			<span>
				<% 
					
					Object usernameError = request.getAttribute("usernameError");
					out.print(usernameError == null ? "" : usernameError);
				%>
			</span>
		</div>
		<div>
			<label for='password'>Password</label>
			<input name='password' id='password' type='password' value='password'/>
			<span>
				<% 
					Object passwordError = request.getAttribute("passwordError");
					out.print(passwordError == null ? "" : passwordError);
				%>
			</span>
		</div>

		<div>
			<label for='rememberMe'>
				Remember Me
				<input name='rememberMe' id='rememberMe' type='checkbox'/>
			</label>
		</div>		
		<button type='submit' class="w3-button w3-brown">Log In</button>
	</div>
</form>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="script.js"></script>
</body>
</html>