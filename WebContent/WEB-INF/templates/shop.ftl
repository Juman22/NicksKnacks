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
                <li><a href="signup.html">Sign Up</a></li>
                <li><a href="login.html">Login <i class="fa fa-user" aria-hidden="true"></i></a></li>
            
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
                    <li class="propClone"><a href="index.html">Home</a></li>
                    <li class="propClone"><a href="shop.html">Shop</a></li>
                    <li class="propClone"><a href="product.html">Product</a></li>
                    <li class="propClone"><a href="checkout.html">Checkout</a></li>
                    <li class="propClone"><a href="contact.html">Contact</a></li>
                </ul>
            </div>
        </div>
        </nav>
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center">
                    <div class="text-homeimage">
                        <div class="maintext-image">
                             BROWSE OUR STORE
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
			<h1 class="text-center latestitems">OUR PRODUCTS</h1>
		</div>
		<div class="wow-hr type_short">
			<span class="wow-hr-h">
			<i class="fa fa-star"></i>
			<i class="fa fa-star"></i>
			<i class="fa fa-star"></i>
			</span>
		</div>
	</div>
    <#list products as product>
		<#if product?index % 3 == 0>
			<div class="row">
		</#if>
            <div class="col-md-4">
                <div class="productbox">
                    <div class="fadeshop">
                        <span class="maxproduct"><img src="${product.image}" alt=""></span>
                    </div>
                    <div class="product-details">
                        <a href="#">
                        <h1>${product.name}</h1>
                        </a>
                        <span class="price">
                        <span class="edd_price">${product.price}</span>
                        </span>
                    </div>
                </div>
            </div>
		<#if (product?index + 1) % 3 == 0 || product?is_last>
			</div>
		</#if>
            <!-- /.productbox -->
	<#else>
		<h3>No products were found</h3>
    </#list>
</div>
</div>
</section>

<!-- CALL TO ACTION =============================-->
<section class="content-block" style="background-color:#00bba7;">
<div class="container text-center">
<div class="row">
	<div class="col-sm-10 col-sm-offset-1">
		<div class="item" data-scrollreveal="enter top over 0.4s after 0.1s">
			<h1 class="callactiontitle"> Promote Items Area Give Discount to Buyers <span class="callactionbutton"><i class="fa fa-gift"></i> WOW24TH</span>
			</h1>
		</div>
	</div>
</div>
</div>
</section>

<!-- FOOTER =============================-->
<div class="footer text-center">
<div class="container">
	<div class="row">
		<p class="footernote">
			 Connect with Scorilo
		</p>
		<ul class="social-iconsfooter">
			<li><a href="#"><i class="fa fa-phone"></i></a></li>
			<li><a href="#"><i class="fa fa-facebook"></i></a></li>
			<li><a href="#"><i class="fa fa-twitter"></i></a></li>
			<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
			<li><a href="#"><i class="fa fa-pinterest"></i></a></li>
		</ul>
		<p>
			 &copy; 2017 Your Website Name<br/>
			Scorilo - Free template by <a href="https://www.wowthemes.net/">WowThemesNet</a>
		</p>
	</div>
</div>
</div>

<!-- Load JS here for greater good =============================-->
<script src="js/jquery-.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/anim.js"></script>
</body>
</html>
