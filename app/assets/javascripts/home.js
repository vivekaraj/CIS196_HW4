$(document).on("page:load", function(){
	$(".navbar").hover(function() {
		console.log("hovering!");
		$(".navbar").css("background-color", "purple");
	});
});