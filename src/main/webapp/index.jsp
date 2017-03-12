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
	<h1>Hello Big Bear!</h1>  
	
	<form action="Login" method='post'>
	
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
		<button type='submit'>Log In</button>
	</form>
	
</body>
</html>