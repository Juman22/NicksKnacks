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
            <!--Dropdown-->
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">Welcome, ${username}<span class="caret"></span></a>
                <ul class="dropdown-menu">
                    <li>
                        <div class="profile-box container">
                            <div class="row">
                                <div class="col-lg-5 icon-box">
                                    <span><img src="images/user.png"></span>
                                </div>
                                <div class="col-lg-7 name-box">
                                    <p>${firstName} ${LastName}</p>
                                    <!--<p>${email}</p>-->
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
					
				</div>
			</div>
		</div>
	</div>
</div>
</header>

<div class="item content">
    <div class="container toparea">
        <div class="underlined-title">
		<div class="editContent">
			<h1 class="text-center latestitems">My Profile</h1>
		</div>
		  <div class="wow-hr type_short">
              <span class="wow-hr-h">
                <i class="fa fa-star"></i>
			     <i class="fa fa-star"></i>
			     <i class="fa fa-star"></i>
              </span>
		  </div>
	   </div>
		<div class="row text-center">
            <div class="profile-field container">
                <form class="form-horizontal" action="">
                    <div class="form-group">
                        <label class="control-label col-sm-3" for="username">Username:</label>
                        <div class="col-sm-6">
                            <input type="text" class="form-control" id="username" value="${username}" disabled>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-3" for="fn">First Name:</label>
                        <div class="col-sm-6">          
                            <input type="text" class="form-control" id="fn" value="${firstName}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-3" for="ln">Last Name:</label>
                        <div class="col-sm-6">          
                            <input type="text" class="form-control" id="ln" value="${lastName}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-3" for="pwd">Password:</label>
                        <div class="col-sm-6">          
                            <input type="password" class="form-control" id="pwd" placeholder="Enter current password">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-3 col-sm-6">          
                            <input type="password" class="form-control" id="pwd" placeholder="Enter new password">
                        </div>
                    </div>
                    <button type="submit" class="btn btn-default">Update</button>
            </form>
            
            </div>
            
        </div>
    </div>    
</div>

<!-- CALL TO ACTION =============================-->
<section class="content-block">
<div class="container text-center">
	<div class="row">
		<div class="col-sm-10 col-sm-offset-1">
			<div class="item">
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