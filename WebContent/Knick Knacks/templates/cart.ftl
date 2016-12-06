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
				<li class="propClone"><a href="shop.html">Shop</a></li>
				<li class="propClone"><a href="checkout.html">Checkout</a></li>
				<li class="propClone"><a href="contact.html">Contact</a></li>
				<li class="propClone">
				    <a>
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
						 <p class = "subtext-text">Cart</p>
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
			<h1 class="text-center latestitems">View your items</h1>
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
					<th>
						 Quantity
					</th>
					<th class="edd_cart_actions">
						 Actions
					</th>
				</tr>
				</thead>
				<tbody>
				<#list products as product>
				<tr class="edd_cart_item">
					<td class="edd_cart_item_name">
						<span class="edd_checkout_cart_item_title">
							<a href="DbConnector?sku=${product.sku}">${product.name}</a>
						</span>
					</td>
					<td class="edd_cart_item_price">
						 $${product.price}
					</td>
					<td>
						 <input type="number" min="1" value="${product.quantity}">
					</td>
					<td class="edd_cart_actions">
						<a class="edd_cart_remove_item_btn" href="#">Remove</a>
					</td>
				</tr>
				<#else>
					<tr>
						<p>No items in cart</p>
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
