<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="generator" content="">
<link href="Knick%20Knacks/css/bootstrap.min.css" rel="stylesheet">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet">
<link href="Knick%20Knacks/css/style.css" rel="stylesheet">
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
			<a href="index.html" class="navbar-brand brand"> Knick Knacks </a>
		</div>
		<div id="navbar-collapse-02" class="collapse navbar-collapse">
			<ul class="nav navbar-nav navbar-right">
				<li class="propClone"><a href="/NicksKnacks/Knick%20Knacks/index.html">Home</a></li>
				<li class="propClone">
					
				<!--Which servlet does this form need to point to? DbConnector?-->	
				<a href="/NicksKnacks/DbConnector?">Shop</a></li>
				<li class="propClone"><a href="/NicksKnacks/cartServlet?">Checkout</a></li>
				<li class="propClone"><a href="/NicksKnacks/Knick%20Knacks/contact.html">Contact</a></li>
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
						 <p class = "subtext-text">Product Name</p>
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
			<h1 class="text-center latestitems"><span class="product-prop">${product.name}</span></h1>
		</div>
		<div class="wow-hr type_short">
			<span class="wow-hr-h">
			<i class="fa fa-star"></i>
			<i class="fa fa-star"></i>
			<i class="fa fa-star"></i>
			</span>
		</div>
	</div>
	<div class="row">
		<div class="col-md-8">
			<div class="productbox">
				<img src="${product.image}" alt="">
				<div class="clearfix">
				</div>
				<br/>
				<div class="product-details text-left">
					<p>
						<span class="product-prop">${product.desc}</span>
					</p>
				</div>
			</div>
		</div>
		<div class="col-md-4">
		     <a href="/NicksKnacks/cartServlet?" class="btn btn-buynow" id="addToCart">Add to Cart</a>	
			<div class="properties-box">
				<ul class="unstyle">
					<li><b class="propertyname">SKU:</b> <span class="product-prop">${product.sku}</span></li>
					<li><b class="propertyname">Availability:</b> ${product.quantity}</li>
					<li><b class="propertyname">Rating:</b> ${product.rating}/5</li>
					<li><b class="propertyname">Price:</b><span class="product-prop">${product.price}</span></li>
					<li><b class="propertyname">Quantity: </b><select name="quantity" class="qty-product">
  							   <option value="1">1</option>
  							   <option value="2">2</option>
  							   <option value="3">3</option>
  							   <option value="4">4</option>
							   <option value="5">5</option>
							   <option value="6">6</option>
							   <option value="7">7</option>
							   <option value="8">8</option>
							   <option value="9">9</option>
							   <option value="10">10</option>
							</select>
					</li>
				</ul>	
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
				 Connect with Knick's Knack
			</p>
			<ul class="social-iconsfooter">
				<li><a href="#"><i class="fa fa-phone"></i></a></li>
				<li><a href="#"><i class="fa fa-facebook"></i></a></li>
				<li><a href="#"><i class="fa fa-twitter"></i></a></li>
				<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
				<li><a href="#"><i class="fa fa-pinterest"></i></a></li>
			</ul>
			<p>
				 &copy; 2016 Knick Knacks<br/>
			</p>
		</div>
	</div>
</div>

<!-- Load JS here for greater good =============================-->
<script src="Knick%20Knacks/js/jquery-.js"></script>
<script src="Knick%20Knacks/js/bootstrap.min.js"></script>
<script src="Knick%20Knacks/js/main.js"></script>    

</body>
</html>
