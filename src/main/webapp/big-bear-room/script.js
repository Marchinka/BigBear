var sendMessage = function ()  {
	var messageModel = {
		message: $("#chatInput").val()
	};
	var json = JSON.stringify(messageModel);
	$.ajax({
		url: '/Messages',
		type: 'POST',
		dataType: 'json',
		contentType: 'application/json; charset=utf-8',
		data: json
	})
	.done(function(response) {
		console.log("success");
	})
	.fail(function() {
		console.log("error");
	});
	
};


var runApplication = function ()  {
	$("#messageForm").submit(function (e) {
		e.preventDefault();
		sendMessage();
	});
};


$(document).ready(runApplication);