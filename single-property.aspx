﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="single-property.aspx.cs" Inherits="Bokado_In.single_property" %>

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
	<link rel="stylesheet" href="css/magnific-popup.css"/>
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
			    <li><a href="about-us.aspx">About</a></li> 
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

	<!-- Single Property Section end -->
	<section class="single-property-section spad">
		<div class="container">
            <center><h1>Property Details</h1></center><br />
			<div class="row">
				<div class="col-lg-8">
					<div class="single-property">
						<div class="sp-image">
                            <asp:Image ID="Image1" runat="server" Width="900px" Height="534px"/>
							<!--<img src="img/property/big.jpg" alt="">-->
							<div class="sp-badge new">New</div>
						</div>
						<div class="row">
							<div class="col-lg-8">
								<div class="property-header">
									<h3><asp:Label ID="Label1" runat="server" Text="2768 Clousson Road"></asp:Label></h3>
									<h5><asp:Label ID="Label2" runat="server" Text="Houston, TX 77002 "></asp:Label></h5>
								</div>
							</div>
							<div class="col-lg-4 text-left text-lg-right">
								<div class="property-header">
									<h3><asp:Label ID="Label3" runat="server" Text="$469,000"></asp:Label></h3>
									<p>For Sale</p>
								</div>
							</div>
						</div>
						
						<div class="property-text">
							<h4>Description</h4>
							<p><asp:Label ID="Label5" runat="server" Text="Donec eget efficitur ex. Donec eget dolor vitae eros feugiat tristique id vitae massa. Proin vulputate congue rutrum. Fusce lobortis a enim eget tempus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Suspendisse potenti. Ut gravida mattis magna, non varius lorem sodales nec. In libero orci, ornare non nisl a, auctor euismod purus. Morbi pretium interdum vestibulum. Fusce nec eleifend ipsum. Sed non blandit tellus. "></asp:Label></p>
						    <h4>Address</h4>
							<p><asp:Label ID="Label6" runat="server" Text="Donec eget efficit"></asp:Label>
                        </div>
                    </div>
                    </div>
				<div class="col-lg-4 sidebar">
					<div class="agent-widget">
						<img src="img/agents/avatar.png" height="534px">
						<div class="aw-text">
							<h4><asp:Label ID="Label7" runat="server" Text="Christinne James"></asp:Label></h4>
							<h6>Owner Of Property</h6>
							<p>For more details of property you can contact the owner</p>
                            <asp:Button ID="Button1" runat="server" Text="Contact" class="site-btn sb-big" style="background-color:red;color:white" OnClick="Button1_Click"/>
						</div>
					</div>
				</div>
       </div>
      </div>
	</section>
	<!--  Section end -->

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