$(function(){ 
	var chachedRememberMe = localStorage.getItem('rememberMe') == "true";
	var chachedUsername = localStorage.getItem('username');
	var chachedPassword = localStorage.getItem('password');

	$("#rememberMe").prop('checked', chachedRememberMe);

	if(chachedUsername && chachedRememberMe) {
		$("#username").val(chachedUsername);
	}

	if(chachedPassword && chachedRememberMe) {
		$("#password").val(chachedPassword);
	}

	var form = $("#loginForm");
	form.submit(function () {
		var rememberMe = $("#rememberMe").prop('checked');
		localStorage.setItem('rememberMe', rememberMe);
		if (rememberMe) {
			var username = $("#username").val();
			var password = $("#password").val();
			localStorage.setItem('username', username);
			localStorage.setItem('password', password);
		} else {
			localStorage.setItem('username', "");
			localStorage.setItem('password', "");			
		}
	});
});