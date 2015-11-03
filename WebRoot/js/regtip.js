
$(function () {
	$("#myform input").on("click", function () {
		var msg = $(this).attr("title");
		if(msg)layer.tips(msg, this, {guide:1, time:5, style:["background-color:#F26C4F; color:#fff", "#F26C4F"], maxWidth:240});
	});
});

