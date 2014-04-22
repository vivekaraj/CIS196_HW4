$(document).on("page:load", function(){
	$(".important-paragraph").hover(function(){
		$(".important-paragraph").css("color", "green");
	});
	$(function() {
		$(".btn").click( function(){
			$(".btn").text("Thank you for the feedback!");
		});
	});
});