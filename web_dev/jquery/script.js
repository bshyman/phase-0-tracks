$(document).ready(function() {
	$('#img1').click(function() {
		$('#img2').hide("slow");
	});
	$('#img1').mouseleave(function() {
		$('#img2').show("slow");
	});
});


$(document).ready(function() {
	$('#img2').mouseenter(function() {
    	$('#img1').fadeTo('fast', .25);
    });
    $('#img2').mouseleave(function() {
        $('div').hide(function() {
        	$('h1').show("slow");
        });
    });
});

$(document).ready(function() {
    $("#button").click(function() {
        $("#button").fadeOut('slow');
    });
});

