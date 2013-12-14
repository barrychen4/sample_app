$(document).ready(function($)
{
	$('#micropost_content').keyup(function() {
		
		$.ajax({
		    url: '/syllablerecorder',
		    type: "GET",
		    data: { curr_dekaaz: $('#micropost_content').val() },
		    
		})
	});

});