<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="Bokado_In.contact" %>

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
			<!-- <form class="main-search-form">
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
			</form> -->
		</div>
	</section>
	<!-- Page top Section end -->

	<!-- Contact Section end -->
	<section class="contact-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-5">
					<div class="section-title text-left">
						<h2>Get in touch</h2>
					</div>
					<div class="contact-text">
						<p>Donec eget efficitur ex. Donec eget dolor vitae eros feugiat tristique id vitae massa. Proin vulputate congue rutrum. Fusce lobortis a enim eget tempus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Suspendisse potenti. Ut gravida mattis magna.</p>
					</div>
				</div>
				<div class="col-lg-7">
					<div class="row">
						<div class="col-sm-4">
							<div class="contact-info-box">
								<div class="ci-icon">
									<span>CA</span>
								</div>
								<h4>Los Angeles</h4>
								<p>2768 Clousson Road Los Angeles, CA 77002 </p>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="contact-info-box">
								<div class="ci-icon">
									<span>TX</span>
								</div>
								<h4>Texas</h4>
								<p>2768 Clousson Road Houston, TX 77002  </p>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="contact-info-box">
								<div class="ci-icon">
									<span>FL</span>
								</div>
								<h4>Florida</h4>
								<p>4713 Wyatt Street Boca Raton, FL 33434 </p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="contact-form">
				<div class="row">
					<div class="col-lg-4">
                        <asp:TextBox ID="TextBox1" runat="server" placeholder="Your name"></asp:TextBox>
					<!--	<input type="text" placeholder="Your name">  -->
					</div>
					<div class="col-lg-4">
                        <asp:TextBox ID="TextBox2" runat="server" placeholder="Your e-mail"></asp:TextBox>
				    <!--	<input type="text" placeholder="Your e-mail"> -->
					</div>
					<div class="col-lg-4">
                        <asp:TextBox ID="TextBox3" runat="server" placeholder="Subject"></asp:TextBox>
						<!-- <input type="text" placeholder="Subject"> -->
					</div>
					<div class="col-lg-12">
                        <asp:TextBox ID="TextBox4" runat="server" placeholder="Message" TextMode="multiline"></asp:TextBox>
						<!-- <textarea placeholder="Message"></textarea> -->
                        <asp:Button ID="Button1" runat="server" Text="Send Message" class="site-btn sb-big" style="background-color:red" OnClick="Button1_Click"/>
				<!--	<button class="site-btn sb-big">Send message</button> -->
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Contact Section end -->

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
