$(document).ready(function() {
	$('.fadeshop').hover(
		function(){
			$(this).find('.captionshop').fadeIn(150);
		},
		function(){
			$(this).find('.captionshop').fadeOut(150);
		}
	);
	
	 
    //delete items of a cart in checkout page
    $("#edd_checkout_cart").on("click","a", function(){
        $(this).closest("tr").fadeOut(500, function(){
            $(this).remove();
        });
        
    });
});
