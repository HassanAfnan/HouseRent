<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminIndex.aspx.cs" Inherits="Bokado_In.AdminIndex" %>

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
				<li><a href="AdminIndex.aspx" class="active">Home</a></li>
				<li><a href="BuyD.aspx">BuyDetails</a></li>
		<!--		<li><a href="sellD.aspx">PropertyDetails</a></li>-->
                <li><a href="RentD.aspx">RentDetails</a></li>
                <li><a href="UserD.aspx">UserDetails</a></li>
				<li><a href="Message.aspx">MessageDetails</a></li> 
			</ul>
			<div class="header-right">
				<div class="user-panel">
					<!--<a href="Login.aspx" class="login">Sign in</a>-->
					<a href="AdminSignUp.aspx" class="register">Add Admin</a>
				</div>
			</div>
		</nav>
	</header>
	<!-- Header Section end -->

	<!-- Hero Section end -->
	<section class="hero-section set-bg" data-setbg="img/hero-bg.jpg">
		<div class="container">
             <div>
                <asp:Label ID="Label1" runat="server" ForeColor="White"></asp:Label>
                <asp:Button ID="Button1" runat="server" Text="Logout" class="site-btn" OnClick="Button1_Click"/>
             </div>
			<div class="hero-warp">
				<div class="main-search-form">
					<div class="search-type">
						<div class="st-item">
							<input type="radio" name="st" id="buy" checked>
							<label for="buy">Buy</label>
						</div>
						<div class="st-item">
							<input type="radio" name="st" id="rent">
							<label for="rent">Rent</label>
						</div>
					<!--	<div class="st-item">
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
						</div>-->                                                           
					</div>
					<div class="search-input">
						<input type="text" placeholder="Search location">
						<button class="site-btn">Search</button>
					</div>
					<p>Please search location</p>
				</div>
			</div>
		</div>
	</section>
	<!-- Hero Section end -->

	<!-- Intro Section end -->
	<section class="intro-section spad">
		<div class="container">
			<div class="section-title">
				<h2>Sell Faster. Save Thousands.</h2>
			</div>
			<div class="row intro-first">
				<div class="col-lg-6 order-lg-2">
					<img src="img/about/1.jpg" alt="">
				</div>
				<div class="col-lg-6 order-lg-1">
					<div class="about-text">
						<h3>We charge 2% total. No hidden fees or upfront costs.</h3>
						<p>Donec eget efficitur ex. Donec eget dolor vitae eros feugiat tristique id vitae massa. Proin vulputate congue rutrum. Fusce lobortis a enim eget tempus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Suspendisse potenti. Ut gravida mattis magna, non varius lorem sodales nec. In libero orci, ornare non nisl a, auctor euismod purus. Morbi pretium interdum vestibulum. Fusce nec eleifend ipsum. Sed non blandit tellus.</p>
						<a href="#" class="readmore-btn">Find out more</a>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-6">
					<img src="img/about/2.jpg" alt="">
				</div>
				<div class="col-lg-6 ">
					<div class="about-text">
						<h3>How Much Can You Save? We work for you, not commission.</h3>
						<p>Donec eget efficitur ex. Donec eget dolor vitae eros feugiat tristique id vitae massa. Proin vulputate congue rutrum. Fusce lobortis a enim eget tempus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Suspendisse potenti. Ut gravida mattis magna, non varius lorem sodales nec. In libero orci, ornare non nisl a, auctor euismod purus. Morbi pretium interdum vestibulum. Fusce nec eleifend ipsum. Sed non blandit tellus.</p>
						<a href="#" class="readmore-btn">Find out more</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Intro Section end -->

	<!-- Property Section -->
	<section class="property-section">
		<div class="container">
			<div class="section-title">
				<h2>Recently Add Homes</h2>
			</div>
			<div class="row">
				<div class="col-lg-4">
					<div class="property-item">
						<div class="pi-image">
							<img src="img/property/1.jpg" alt="">
							<div class="pi-badge new">New</div>
						</div>
						<h3>$469,000</h3>
						<h5>3 Bedrooms Townhouse</h5>
						<p>Donec eget efficitur ex. Donec eget dolor vitae eros feugiat tristique id vitae massa. Proin vulputate congue rutrum. Fusce lobortis a enim eget tempus. Class aptent taciti sociosqu ad litora.</p>
						<a href="#" class="readmore-btn">Find out more</a>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="property-item">
						<div class="pi-image">
							<img src="img/property/2.jpg" alt="">
							<div class="pi-badge offer">Offer</div>
						</div>
						<h3>$369,000</h3>
						<h5>3 Bedrooms Townhouse</h5>
						<p>Donec eget efficitur ex. Donec eget dolor vitae eros feugiat tristique id vitae massa. Proin vulputate congue rutrum. Fusce lobortis a enim eget tempus. Class aptent taciti sociosqu ad litora.</p>
						<a href="#" class="readmore-btn">Find out more</a>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="property-item">
						<div class="pi-image">
							<img src="img/property/3.jpg" alt="">
							<div class="pi-badge new">New</div>
						</div>
						<h3>$560,000</h3>
						<h5>3 Bedrooms Townhouse</h5>
						<p>Donec eget efficitur ex. Donec eget dolor vitae eros feugiat tristique id vitae massa. Proin vulputate congue rutrum. Fusce lobortis a enim eget tempus. Class aptent taciti sociosqu ad litora.</p>
						<a href="#" class="readmore-btn">Find out more</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Property Section end -->

	<!-- Loan Section end -->
	<section class="loan-section">
		<div class="loan-warp">
			<div class="container">
				<div class="section-title text-white">
					<h2>See If You Qualify for a Mortgage</h2>
					<p>Donec eget efficitur ex. Donec eget dolor vitae eros feugiat tristique id vitae massa. Proin vulputate congue rutrum. Fusce lobortis a enim eget tempus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Suspendisse potenti. Ut gravida mattis magna, non varius lorem sodales nec. In libero orci, ornare non nisl a, auctor euismod purus. Morbi pretium interdum vestibulum. Fusce nec eleifend ipsum. Sed non blandit tellus. </p>
				</div>
				<!--<form class="loan-form">
					<input type="text" placeholder="Your income">
					<input type="text" placeholder="Amount needed">
					<button class="site-btn">Submit</button>
				</form>-->
			</div>
		</div>
	</section>
	<!-- Loan Section end -->

	<!-- Stories Section end -->
	<section class="stories-section spad">
		<div class="container">
			<div class="row ">
				<div class="col-lg-5 order-lg-2">
					<img class="w-100" src="img/about/3.jpg" alt="">
				</div>
				<div class="col-lg-7 order-lg-1">
					<div class="about-text">
						<h2>Seller Success Stories</h2>
						<p>Fusce lobortis a enim eget tempus. Class aptent taciti sociosqu ad litora. Donec eget efficitur ex. Donec eget dolor vitae eros feugiat tristique id vitae massa. Proin vulputate congue rutrum. Fusce lobortis a enim eget tempus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Suspendisse potenti. Ut gravida mattis magna, non varius lorem sodales nec. In libero orci, ornare non nisl a, auctor euismod purus. Morbi pretium interdum vestibulum. Fusce nec eleifend ipsum. Sed non blandit tellus. </p>
						<a href="#" class="readmore-btn">Find out more</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Stories Section end -->

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
    <script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.slicknav.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/main.js"></script>

</body>
</html>
