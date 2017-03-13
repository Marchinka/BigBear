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
	$("#chatInput").val("");
	$('#messageForm').focus();
	scrollToBottom();
};

var scrollToBottom = function () {
	$("html, body").animate({ scrollTop: $(document).height() }, "slow");
};

var runApplication = function ()  {
	$("#messageForm").submit(function (e) {
		e.preventDefault();
		sendMessage();
	});
	$("#chatInput").focus(scrollToBottom);
	scrollToBottom();
};


$(document).ready(runApplication);