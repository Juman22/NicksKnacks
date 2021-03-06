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
			<#if account?has_content>
				<!--Dropdown-->
				<li class="dropdown">
					<a class="dropdown-toggle" data-toggle="dropdown" href="#">Welcome, ${account.username}<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li>
							<div class="profile-box container">
								<div class="row">
									<div class="col-lg-5 icon-box">
										<span><img src="images/user.png"></span>
									</div>
									<div class="col-lg-7 name-box">
										<p>${account.firstName} ${account.lastName}</p>
									</div>
								</div>
							</div>
						</li>
						<li role="separator" class="divider"></li>
						<li>
							<div class="container dropdown-btns">
								<div class="row">
									<div class="col-lg-6">
										<a href="" class="btn btn-primary btn-block">My Profile</a>
									</div>
								
									<div class="col-lg-6">
										<a href="" class="btn btn-danger btn-block">Log Out</a>
									</div>
								</div>
							</div>
						</li>
					
					</ul>
				</li><!--.dropdown-->
			<#else>
				<li><a href="signup.html">Sign Up</a></li>
				<li><a href="login.html">Login <i class="fa fa-user" aria-hidden="true"></i></a></li>
			</#if>
          </ul>
      </div><!-- /.container-fluid -->
    </nav>
    
    
	<nav role="navigation" class="navbar navbar-white navbar-embossed navbar-lg navbar-fixed-top navbar-bottom">
	<div class="container">
		<div class="navbar-header">
			<button data-target="#navbar-collapse-02" data-toggle="collapse" class="navbar-toggle" type="button">
			<span class="sr-only">Toggle navigation</span>
			</button>
			<a href="/NicksKnacks/Knick%20Knacks/index.html" class="navbar-brand brand"> Nick's Knacks </a>
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
				<div class="text-homeimage">
					<div class="maintext-image">
                        Digital Marketplace for Collectibles
					</div>
					<div class="subtext-image">
				        Shop with Nick's Knack
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</header>
    
<!-- STEPS =============================-->
<div class="item content">
	<div class="container toparea">
		<div class="row text-center">
			<div class="col-md-4 editContent">
				<div class="col">
					<span class="numberstep"><i class="fa fa-gamepad" aria-hidden="true"></i></span>
					<h3 class="numbertext">Video Games</h3>
				</div>
				<!-- /.col-md-4 -->
			</div>
			<!-- /.col-md-4 col -->
			<div class="col-md-4 editContent">
				<div class="col">
					<span class="numberstep"><i class="fa fa-film" aria-hidden="true"></i></span>
					<h3 class="numbertext">Movies</h3>
				</div>
				<!-- /.col -->
			</div>
			<!-- /.col-md-4 col -->
			<div class="col-md-4 editContent">
				<div class="col">
					<span class="numberstep"><i class="fa fa-television" aria-hidden="true"></i></span>
					<h3 class="numbertext">Tv Shows</h3>
				</div>
			</div>
		</div>
        <div class="step-caption-container">
            <p class="step-caption">Snag Collectibles, Memorabilia, and Gadgets</p>
            <p class="step-caption">From your favorite</p>
            <p class="step-caption">Video Games, Movies, TV Shows</p>
            <p class="step-caption">Right here on </p> 
            <p class="step-caption">Nick's Knacks</p>
        </div>    
	</div>
    
</div>
	
<!-- BUTTON =============================-->
<div class="item content">
	<div class="container text-center">
		<a href="shop.html" class="homebrowseitems">Browse All Products
		<div class="homebrowseitemsicon">
			<i class="fa fa-star fa-spin"></i>
		</div>
		</a>
	</div>
</div>
<br/>


<!-- AREA =============================-->
<div class="item content">
	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<i class="fa fa-microphone infoareaicon"></i>
				<div class="infoareawrap">
					<h1 class="text-center subtitle">General Questions</h1>
					<p>
						 Got a question regarding a certain product? Trouble completing the payment? Or just want to say hi? Send us your message and we will answer as soon as possible!
					</p>
					<p class="text-center">
						<a href="#">- Get in Touch -</a>
					</p>
				</div>
			</div>
			<!-- /.col-md-4 col -->
			<div class="col-md-4">
				<i class="fa fa-comments infoareaicon"></i>
				<div class="infoareawrap">
					<h1 class="text-center subtitle">Support</h1>
					<p>
						 Need customer support? Feel free to contact us with any concerns you may have. We are readily available 24/7
                        to assist you. We strive to ensure our customers impeccable service.
					</p>
					<p class="text-center">
						<a href="#">- Get in Touch -</a>
					</p>
				</div>
			</div>
			<!-- /.col-md-4 col -->
			<div class="col-md-4">
				<i class="fa fa-bullhorn infoareaicon"></i>
				<div class="infoareawrap">
					<h1 class="text-center subtitle">Suggestions </h1>
					<p>
						 If you wish to see certain products from a particular video game, movie, or TV show, feel free to leave a suggestion. We are always on the hunt for new products. 
					</p>
					<p class="text-center">
						<a href="#">- Get in Touch -</a>
					</p>
				</div>
			</div>
		</div>
	</div>
</div>
     
    

<!-- TESTIMONIAL =============================-->
<div class="item content">
	<div class="container">
		<div class="col-md-10 col-md-offset-1">
			<div class="slide-text">
				<div>
					<h2><span class="uppercase">Awesome Support</span></h2>
					<img src="http://wowthemes.net/demo/salique/salique-boxed/images/temp/avatar2.png" alt="Awesome Support">
					<p>
						 The support... I can only say it's awesome. You make a product and you help people out any way you can even if it means that you have to log in on their dashboard to sort out any problems that customer might have. Simply Outstanding!
					</p>
					<i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i>
				</div>
			</div>
		</div>
	</div>
</div>


<!-- CALL TO ACTION =============================-->
<section class="content-block">
</section>


<!-- FOOTER =============================-->
<div class="footer text-center">
	<div class="container">
		<div class="row">
			<p class="footernote">
				 Connect with Knick's Knacks!
			</p>
			<ul class="social-iconsfooter">
				<li><a href="#"><i class="fa fa-phone"></i></a></li>
				<li><a href="#"><i class="fa fa-facebook"></i></a></li>
				<li><a href="#"><i class="fa fa-twitter"></i></a></li>
				<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
				<li><a href="#"><i class="fa fa-pinterest"></i></a></li>
			</ul>
			<p>
				 &copy; Nick's Knacks<br/>
			</p>
		</div>
	</div>
</div>
 
<!-- SCRIPTS =============================-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/main.js"></script>	
</body>
</html>