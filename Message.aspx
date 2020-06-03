<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Message.aspx.cs" Inherits="Bokado_In.Message" %>

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
			<!--	<li><a href="sellD.aspx">PropertyDetails</a></li>-->
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
        <section class="page-top-section set-bg" data-setbg="img/page-top-bg.jpg">
		   <div class="page-top-warp">
           </div>
        </section>
    <!-- Page top Section end -->
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="mid" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="1287px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="mid" HeaderText="mid" InsertVisible="False" ReadOnly="True" SortExpression="mid" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="subject" HeaderText="subject" SortExpression="subject" />
                <asp:BoundField DataField="message" HeaderText="message" SortExpression="message" />
                <asp:BoundField DataField="datetimeMess" HeaderText="datetimeMess" SortExpression="datetimeMess" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
         </asp:GridView>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:bokadoin %>" DeleteCommand="DELETE FROM [Message] WHERE [mid] = @original_mid AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([email] = @original_email) OR ([email] IS NULL AND @original_email IS NULL)) AND (([subject] = @original_subject) OR ([subject] IS NULL AND @original_subject IS NULL)) AND (([message] = @original_message) OR ([message] IS NULL AND @original_message IS NULL)) AND (([datetimeMess] = @original_datetimeMess) OR ([datetimeMess] IS NULL AND @original_datetimeMess IS NULL))" InsertCommand="INSERT INTO [Message] ([name], [email], [subject], [message], [datetimeMess]) VALUES (@name, @email, @subject, @message, @datetimeMess)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Message]" UpdateCommand="UPDATE [Message] SET [name] = @name, [email] = @email, [subject] = @subject, [message] = @message, [datetimeMess] = @datetimeMess WHERE [mid] = @original_mid AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([email] = @original_email) OR ([email] IS NULL AND @original_email IS NULL)) AND (([subject] = @original_subject) OR ([subject] IS NULL AND @original_subject IS NULL)) AND (([message] = @original_message) OR ([message] IS NULL AND @original_message IS NULL)) AND (([datetimeMess] = @original_datetimeMess) OR ([datetimeMess] IS NULL AND @original_datetimeMess IS NULL))">
             <DeleteParameters>
                 <asp:Parameter Name="original_mid" Type="Int32" />
                 <asp:Parameter Name="original_name" Type="String" />
                 <asp:Parameter Name="original_email" Type="String" />
                 <asp:Parameter Name="original_subject" Type="String" />
                 <asp:Parameter Name="original_message" Type="String" />
                 <asp:Parameter Name="original_datetimeMess" Type="String" />
             </DeleteParameters>
             <InsertParameters>
                 <asp:Parameter Name="name" Type="String" />
                 <asp:Parameter Name="email" Type="String" />
                 <asp:Parameter Name="subject" Type="String" />
                 <asp:Parameter Name="message" Type="String" />
                 <asp:Parameter Name="datetimeMess" Type="String" />
             </InsertParameters>
             <UpdateParameters>
                 <asp:Parameter Name="name" Type="String" />
                 <asp:Parameter Name="email" Type="String" />
                 <asp:Parameter Name="subject" Type="String" />
                 <asp:Parameter Name="message" Type="String" />
                 <asp:Parameter Name="datetimeMess" Type="String" />
                 <asp:Parameter Name="original_mid" Type="Int32" />
                 <asp:Parameter Name="original_name" Type="String" />
                 <asp:Parameter Name="original_email" Type="String" />
                 <asp:Parameter Name="original_subject" Type="String" />
                 <asp:Parameter Name="original_message" Type="String" />
                 <asp:Parameter Name="original_datetimeMess" Type="String" />
             </UpdateParameters>
         </asp:SqlDataSource>
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
