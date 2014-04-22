$(function(){
	$(".important-paragraph").hover(function(){
		$(".important-paragraph").css("color", "green");
	});
	$(function() {
		$(".btn").click( function(){
			$(".btn").text("clicked!");
		});
	});
});