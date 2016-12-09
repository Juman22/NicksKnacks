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
            type: "GET",
            data: product, 
            success: function(result) {console.log("Successful");}
        });
    });	
    
    /*Grabbing the info of a row
    var cartRow = $(".edd_cart_remove_item_btn").closest("tr");
    var productName = cartRow.find(".cart-item-name").text();
    var productPrice = cartRow.find(".edd_cart_item_price").text();
    var productQuantity = cartRow.find("td input").val();
    */
});
