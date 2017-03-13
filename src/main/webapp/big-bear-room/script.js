var sendMessage = function ()  {
	var messageListView	= new MessageListView("#messageList");
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
		messageListView.addMessage(response);
	})
	.fail(function() {
		console.log("error");
	});
	$("#chatInput").val("");
	scrollToBottom();
};

var getMessages = function () {
	var messageListView	= new MessageListView("#messageList");

	$.ajax({
		url: '/Messages',
		type: 'GET',
		dataType: 'json',
		contentType: 'application/json; charset=utf-8'
	})
	.done(function(response) {
		console.log("success");
		messageListView.renderMessageList(response);
	})
	.fail(function() {
		console.log("error");
	});
};

var scrollToBottom = function () {
	$("html, body").animate({ scrollTop: $(document).height() }, "slow");
};

var MessageListView = function (selector) {
	var element = $(selector);

	var clearMessages = function() {
		element.html("");
	};

	this.addMessage = function(message) {
		var html = 
			"<li class='message-card w3-card-4'>" +
			"	<span class='user-info w3-text-green'>" + message.username + "</span>" +
			"	<div class='message-content'>" +
				message.message +
			"	</div>" +
			"</li>";
		element.append(html);
	};

	this.renderMessageList = function(list) {
		clearMessages();
		for (var i = 0; i < list.length; i++) {
			var message = list[i];
			this.addMessage(message);
		};
	};
};

var runApplication = function ()  {
	$("#messageForm").submit(function (e) {
		e.preventDefault();
		sendMessage();
	});
	$("#chatInput").focus(scrollToBottom);
	scrollToBottom();
	setInterval(getMessages, 3 * 1000);
};


$(document).ready(runApplication);