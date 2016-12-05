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
	
    <div class="container">
	<form action="" method="post">
	    <div class="col-md-4">
		<b class="propertyname">Filter by:</b>
		<div class="form-inline row">
		    <label>Price: $</label>
		    <input type="number" id="pricemin" name="pricemin" class="form-control" placeholder="Min"> to 
		    <input type="number" id="pricemax" name="pricemax" class="form-control" placeholder="Max">
		</div>
	    </div>
	    <div class="col-md-4">
		<b class="propertyname">Sort by:</b>
		<select name="sort">
		    <option value="az">None</option>
		    <option value="az">A - Z</option>
		    <option value="za">Z - A</option>
		    <option value="pricelohi">Price Low to High</option>
		    <option value="pricehilo">Price High to Low</option>
		</select>
	    </div>
	    <div class="col-md-4 form-inline">
		<input type="text" name="search" class="form-control">
		<button type="submit" class="btn btn-primary">Search</button> 
	    </div>
	</form>
    </div><br>
	
    <#list products as product>
		<#if product?index % 3 == 0>
			<div class="row">
		</#if>
            <div class="col-md-4">
                <div class="productbox">
                    <div class="fadeshop">
                        <div class="captionshop text-center" style="display: none;">
						<h3>${product.name}</h3>
						<p>
							 ${product.desc}
						</p>
						<p>
							<a href="#" class="learn-more detailslearn"><i class="fa fa-shopping-cart"></i> Purchase</a>
							<a href="DbConnector?sku=${product.sku}" class="learn-more detailslearn"><i class="fa fa-link"></i> Details</a>
						</p>
					</div>
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
