var sendMessage = function ()  {
	var messageModel = {
		message: $("#chatInput").val()
	};
	var xml = "<messageModel><message>" + messageModel.message + "</message></messageModel>"
	$.ajax({
		url: '/Messages',
		type: 'POST',
		dataType: 'xml',
		data: messageModel.message
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