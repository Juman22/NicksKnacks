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
				<li class="propClone"><a href="/NicksKnacks/cartServlet?">Checkout</a></li>
				<li class="propClone"><a href="contact.html">Contact</a></li>
				<li class="propClone">
				    <a href="/NicksKnacks/cartServlet?">
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
	    	 <div class="profile-field-icon">
                    <span><img src="images/user.png"></span>
                </div>
		<div class="acct-info">
                    <h2>${account.firstName} ${account.lastName}</h2>
                    <p>Username: ${account.username}</p>
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
<script src="Knick%20Knacks/js/bootstrap.min.js"></script>
<script src="Knick%20Knacks/js/main.js"></script>    
</body>
</html>
