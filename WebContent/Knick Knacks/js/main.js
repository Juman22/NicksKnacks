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
	
    $('#addToCart').click(function() {    
        var params = $('span.product-prop');
	var quantitySelected = $(".qty-product").val();    
        var product = {
            "name": params.eq(0).text(),
            "description": params.eq(1).text(),
            "skuNum": params.eq(2).text(),
	    "price":params.eq(3).text(),
	    "quantity": quantitySelected	
        };
        $.ajax({
            url: "/NicksKnacks/cartServlet?",
            type: "get",
            data: product, 
            success: function(result) {console.log("Successful");}
        });
    });		
});
