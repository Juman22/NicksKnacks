<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="generator" content="">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Dosis:200,300,400,500,600,700" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Roboto:200,300,400,500,600,700" rel="stylesheet">
</head>
<body>

<!-- HEADER =============================-->
<header class="item header margin-top-0">
<div class="wrapper">
<nav class="navbar navbar-default navbar-fixed-top navbar-login" role="navigation">
  <div class="container">
    <ul class="nav navbar-nav navbar-right">
        <li><a href="#">Sign Up</a></li>
        <li><a>Login <i class="fa fa-user" aria-hidden="true"></i></a></li>
            
      </ul>
  </div><!-- /.container-fluid -->
</nav>
    
    
	<nav role="navigation" class="navbar navbar-white navbar-embossed navbar-lg navbar-fixed-top navbar-bottom">
	<div class="container">
		<div class="navbar-header">
			<button data-target="#navbar-collapse-02" data-toggle="collapse" class="navbar-toggle" type="button">
			<span class="sr-only">Toggle navigation</span>
			</button>
			<a href="index.html" class="navbar-brand brand"> Nick's Knacks </a>
		</div>
		<div id="navbar-collapse-02" class="collapse navbar-collapse">
			<ul class="nav navbar-nav navbar-right">
				<li class="propClone"><a href="index.html">Home</a></li>
				<li class="propClone"><a href="/NicksKnacks/DbConnector?">Shop</a></li>
				<li class="propClone"><a href="/NicksKnacks/cartServlet?>Checkout</a></li>
				<li class="propClone"><a href="contact.html">Contact</a></li>
				<li class="propClone">
				    <a class="side-cart-trigger" href="/NicksKnacks/cartServlet?">
					<i class="fa fa-shopping-cart" aria-hidden="true"></i>
				    </a>
				</li>
			</ul>
		</div>
	</div>
	</nav>
	<div class="container">
        <div class="row">
            <div class="col-md-12 text-center">
				<div class="text-pageheader">
					<div class="subtext-image">
						 <p class = "subtext-text">Check Out</p>
					</div>
				</div>
			</div>
        </div>
    </div>
</div>
</header>

<!-- CONTENT =============================-->
<section class="item content">
<div class="container toparea">
	<div class="underlined-title">
		<div class="editContent">
			<h1 class="text-center latestitems">MAKE PAYMENT</h1>
		</div>
		<div class="wow-hr type_short">
			<span class="wow-hr-h">
			<i class="fa fa-star"></i>
			<i class="fa fa-star"></i>
			<i class="fa fa-star"></i>
			</span>
		</div>
	</div>
	<div id="edd_checkout_wrap" class="col-md-8 col-md-offset-2">
		<form id="edd_checkout_cart_form" method="post">
			<div id="edd_checkout_cart_wrap">
				<table id="edd_checkout_cart" class="ajaxed">
				<thead>
				<tr class="edd_cart_header_row">
					<th class="edd_cart_item_name">
						 Item Name
					</th>
					<th class="edd_cart_item_price">
						 Item Price
					</th>
					<th class="edd_cart_actions">
						 Actions
					</th>
				</tr>
				</thead>
				<tbody>
				<#list products as product>
				<tr class="edd_cart_item" id="edd_cart_item_0_25" data-download-id="25">
					<td class="edd_cart_item_name">
						<div class="edd_cart_item_image">
							<img width="50" height="50" src="${product.image}" alt="">
						</div>
						<span class="edd_checkout_cart_item_title">${product.name}</span>
					</td>
					<td class="edd_cart_item_price">
						 $${product.price}
					</td>
					<td class="edd_cart_actions">
						<a class="edd_cart_remove_item_btn" href="#">Remove</a>
					</td>
				</tr>
				</#list>
				</tbody>
				<tfoot>
				<tr class="edd_cart_footer_row">
					<th colspan="5">
						<a class="edd-cart-saving-button edd-submit button " id="edd-save-cart-button" href="#">Save Cart</a>
					</th>
				</tr>
				<tr class="edd_cart_footer_row edd_cart_discount_row" style="display:none;">
					<th colspan="5" class="edd_cart_discount">
					</th>
				</tr>
				<tr class="edd_cart_footer_row">
					<th colspan="5" class="edd_cart_total">
						 Total: <span class="edd_cart_amount">$${carttotal}</span>
					</th>
				</tr>
				</tfoot>
				</table>
			</div>
		</form>
		<div id="edd_checkout_form_wrap" class="edd_clearfix">
			<form id="edd_purchase_form" class="edd_form" action="#" method="POST">
				<fieldset id="edd_checkout_user_info">
					<legend>Payment Info</legend>
					<p id="edd-email-wrap">
						<label class="edd-label" for="edd-email">
						Email Address <span class="edd-required-indicator">*</span></label>
						<input class="edd-input required" type="email" name="edd_email" id="edd-email" value="${account.email}">
					</p>
					<p id="edd-first-name-wrap">
						<label class="edd-label" for="edd-first">
						First Name <span class="edd-required-indicator">*</span>
						</label>
						<input class="edd-input required" type="text" name="edd_first" id="edd-first" value="${account.firstName}" required="">
					</p>
					<p id="edd-last-name-wrap">
						<label class="edd-label" for="edd-last">
						Last Name </label>
						<input class="edd-input" type="text" name="edd_last" id="edd-last" value="${account.lastName}">
					</p>
					<p>
						<label class="edd-label">
						Card Number </label>
						<input class="edd-input" type="text" name="cardnum" id="edd-last" pattern="\d{16}" placeholder="16-digit number">
					</p>
                    <p>
						<label class="edd-label">
						Card Expiry Date </label>
						<select name="expiryMonth">
                            <option value="jan">January</option>
                            <option value="feb">February</option>
                            <option value="mar">March</option>
                            <option value="apr">April</option>
                            <option value="may">May</option>
                            <option value="jun">June</option>
                            <option value="jul">July</option>
                            <option value="aug">August</option>
                            <option value="sep">September</option>
                            <option value="oct">October</option>
                            <option value="nov">November</option>
                            <option value="dec">December</option>
                        </select>
                        <select name="expiryYear">
                            <option value="2016">2016</option>
                            <option value="2017">2017</option>
                            <option value="2018">2018</option>
                            <option value="2019">2019</option>
                        </select>
					</p>
                    <p>
						<label class="edd-label">
						Card CCV </label>
						<input class="edd-input" type="text" name="cardccv" id="edd-last" pattern="\d{3}" placeholder="3-digit number">
					</p>
				</fieldset>
				<fieldset id="edd_purchase_submit">
					<p id="edd_final_total_wrap">
						<strong>Purchase Total:</strong>
						<span class="edd_cart_amount">$${total}</span>
					</p>
					<input type="hidden" name="edd_action" value="purchase">
					<input type="hidden" name="edd-gateway" value="manual">
					<input type="submit" class="edd-submit button" id="edd-purchase-button" name="edd-purchase" value="Purchase">
				</fieldset>
			</form>
		</div>
	</div>
</div>
</section>

<!-- CALL TO ACTION =============================-->
<section class="content-block">
</section>

<!-- FOOTER =============================-->
<div class="footer text-center">
	<div class="container">
		<div class="row">
			<p class="footernote">
				 Connect with Knick's Knacks
			</p>
			<ul class="social-iconsfooter">
				<li><a href="#"><i class="fa fa-phone"></i></a></li>
				<li><a href="#"><i class="fa fa-facebook"></i></a></li>
				<li><a href="#"><i class="fa fa-twitter"></i></a></li>
				<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
				<li><a href="#"><i class="fa fa-pinterest"></i></a></li>
			</ul>
			<p>
				 &copy; 2016 Knick's Knacks<br/>
			</p>
		</div>
	</div>
</div>

<!-- SCRIPTS =============================-->
<script src="js/jquery-.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/main.js"></script>    

</body>
</html>
