<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="search-result.aspx.cs" Inherits="Bokado_In.search_result" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Bokado In</title>
	<meta charset="UTF-8"/>
	<meta name="description" content="Real estate HTML Template"/>
	<meta name="keywords" content="real estate, html"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	
	<!-- Favicon -->
	<link href="img/favicon.ico" rel="shortcut icon"/>

	<!-- Google font -->
	<link href="https://fonts.googleapis.com/css?family=Lato:400,400i,700,700i,900%7cRoboto:400,400i,500,500i,700,700i&display=swap" rel="stylesheet"/>

 
	<!-- Stylesheets -->
	<link rel="stylesheet" href="css/bootstrap.min.css"/>
	<link rel="stylesheet" href="css/font-awesome.min.css"/>
	<link rel="stylesheet" href="css/slicknav.min.css"/>

	<!-- Main Stylesheets -->
	<link rel="stylesheet" href="css/style.css"/>
</head>
<body>
    <form id="form1" runat="server">
       <!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Header Section -->
	<header class="header-section">
		<a href="index.aspx" class="site-logo">
			<img src="img/logo.png" alt="">
		</a>
		<nav class="header-nav">
			<ul class="main-menu">
				<li><a href="index.aspx" class="active">Home</a></li>
				<li><a href="Buy.aspx">Buy</a></li>
				<li><a href="sell.aspx">Post Property</a></li>
                <li><a href="Rent.aspx">Rent</a></li>
				<li><a href="contact.aspx">Contact</a></li>
			    <li><a href="#">About</a>
                <ul class="sub-menu">
						<li><a href="about-us.aspx">About Us</a></li>
						<li><a href="search-result.aspx">Search Result</a></li>
						<li><a href="single-property.aspx">Property</a></li>
					</ul>
				</li> 
			</ul>
			<div class="header-right">
				<div class="user-panel">
					<a href="Login.aspx" class="login">Sign in</a>
					<a href="Signup.aspx" class="register">Join us</a>
				</div>
			</div>
		</nav>
	</header>
	<!-- Header Section end -->

	<!-- Page top Section end -->
	<section class="page-top-section set-bg" data-setbg="img/page-top-bg.jpg">
		<div class="page-top-warp">
			<!--<form class="main-search-form">
				<div class="search-type">
					<div class="st-item">
						<input type="radio" name="st" id="buy" checked>
						<label for="buy">Buy</label>
					</div>
					<div class="st-item">
						<input type="radio" name="st" id="rent">
						<label for="rent">Rent</label>
					</div>
					<div class="st-item">
						<input type="radio" name="st" id="sell">
						<label for="sell">Sell</label>
					</div>
					<div class="st-item">
						<input type="radio" name="st" id="property">
						<label for="property">Property Value</label>
					</div>
					<div class="st-item">
						<input type="radio" name="st" id="agents">
						<label for="agents">Agents</label>
					</div>                                                           
				</div>
				<div class="search-input si-v-2">
					<input type="text" placeholder="Search by state, postcode or suburb">
					<button class="site-btn" type="submit">Search</button>
					<button class="site-btn sb-light">Show Filters</button>
				</div>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. </p>
			</form>-->
		</div>
	</section>
	<!-- Page top Section end -->

	<!-- Search Result Section end -->
	<section class="search-result-section ">
		<div class="container-fluid">
			<div class="row">
				<div class="col-xl-6 p-0">
					<div class="search-result-map">
						<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d14376.077865872314!2d-73.879277264103!3d40.757667781624285!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sbd!4v1546528920522" style="border:0" allowfullscreen></iframe>
					</div>
				</div>
				<div class="col-xl-6 p-0">
					<div class="search-results">
						<ul class="filter-btn">
							<li class="active">Newest</li>
							<li>Price Low </li>
							<li>Price High</li>
						</ul>
						<div class="row">
							<div class="col-md-6">
								<div class="property-item">
									<div class="pi-image">
										<img src="img/property-search/1.jpg" alt="">
										<div class="pi-badge new">New</div>
									</div>
									<h3>$469,000</h3>
									<h5>3 Bedrooms Townhouse</h5>
									<div class="pi-metas">
										<div class="pi-meta">3 Bed </div>
										<div class="pi-meta">2 Baths</div>
										<div class="pi-meta">1 Garage</div>
										<div class="pi-meta">2849 SF</div>
									</div>
									<a href="#" class="readmore-btn">Find out more</a>
								</div>
							</div>
							<div class="col-md-6">
								<div class="property-item">
									<div class="pi-image">
										<img src="img/property-search/2.jpg" alt="">
										<div class="pi-badge offer">Offer</div>
									</div>
									<h3>$469,000</h3>
									<h5>3 Bedrooms Townhouse</h5>
									<div class="pi-metas">
										<div class="pi-meta">3 Bed </div>
										<div class="pi-meta">2 Baths</div>
										<div class="pi-meta">1 Garage</div>
										<div class="pi-meta">2849 SF</div>
									</div>
									<a href="#" class="readmore-btn">Find out more</a>
								</div>
							</div>
							<div class="col-md-6">
								<div class="property-item">
									<div class="pi-image">
										<img src="img/property-search/3.jpg" alt="">
										<div class="pi-badge new">New</div>
									</div>
									<h3>$469,000</h3>
									<h5>3 Bedrooms Townhouse</h5>
									<div class="pi-metas">
										<div class="pi-meta">3 Bed </div>
										<div class="pi-meta">2 Baths</div>
										<div class="pi-meta">1 Garage</div>
										<div class="pi-meta">2849 SF</div>
									</div>
									<a href="#" class="readmore-btn">Find out more</a>
								</div>
							</div>
							<div class="col-md-6">
								<div class="property-item">
									<div class="pi-image">
										<img src="img/property-search/4.jpg" alt="">
										<div class="pi-badge offer">Offer</div>
									</div>
									<h3>$469,000</h3>
									<h5>3 Bedrooms Townhouse</h5>
									<div class="pi-metas">
										<div class="pi-meta">3 Bed </div>
										<div class="pi-meta">2 Baths</div>
										<div class="pi-meta">1 Garage</div>
										<div class="pi-meta">2849 SF</div>
									</div>
									<a href="#" class="readmore-btn">Find out more</a>
								</div>
							</div>
						</div>
						<button class="site-btn sb-big load-more">load More</button>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Search Result Section end -->

	<!-- Footer Section -->
	<footer class="footer-section">
		<div class="container">
			<div class="row text-white">
				<div class="col-lg-4">
					<div class="footer-widger">
						<div class="about-widget">
							<div class="aw-text">
								<img src="img/footer-logo.png" alt="">
								<p>Donec eget efficitur ex. Donec eget dolor vitae eros feugiat tristique id vitae massa. Proin vulputate cong ue rutrum. Fusce lobortis a enim eget tempus. </p>
								<a href="#" class="site-btn">we are hiring</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-2 col-md-3 col-sm-6">
					<div class="footer-widger">
						<h2>Company</h2>
						<ul>
							<li><a href="#">About us</a></li>
							<li><a href="#">Services</a></li>
							<li><a href="#">Clients</a></li>
							<li><a href="#">Testimonials</a></li>
							<li><a href="#">Carrers</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-2 col-md-3 col-sm-6">
					<div class="footer-widger">
						<h2>For Buyers</h2>
						<ul>
							<li><a href="#">Buy with us</a></li>
							<li><a href="#">Papers</a></li>
							<li><a href="#">Clients</a></li>
							<li><a href="#">Testimonials</a></li>
							<li><a href="#">Homes</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-2 col-md-3 col-sm-6">
					<div class="footer-widger">
						<h2>For Sellers</h2>
						<ul>
							<li><a href="#">Seel With us</a></li>
							<li><a href="#">What do You Need</a></li>
							<li><a href="#">Clients</a></li>
							<li><a href="#">Testimonials</a></li>
							<li><a href="#">Guideline</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-2 col-md-3 col-sm-6">
					<div class="footer-widger">
						<h2>For Renters</h2>
						<ul>
							<li><a href="#">Rent with us</a></li>
							<li><a href="#">Guidelines</a></li>
							<li><a href="#">Apartments</a></li>
							<li><a href="#">Flats</a></li>
							<li><a href="#">Houses</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="copyright"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></div>
		</div>
	</footer>
	<!-- Footer Section end -->
    </form>
    
	<!--====== Javascripts & Jquery ======-->
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.slicknav.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/main.js"></script>

</body>
</html>
