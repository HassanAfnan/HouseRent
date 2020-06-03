<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RentD.aspx.cs" Inherits="Bokado_In.RentD" %>

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
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="rid" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="1285px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="rid" HeaderText="rid" InsertVisible="False" ReadOnly="True" SortExpression="rid" />
                <asp:BoundField DataField="Oname" HeaderText="Oname" SortExpression="Oname" />
                <asp:BoundField DataField="Oemail" HeaderText="Oemail" SortExpression="Oemail" />
                <asp:BoundField DataField="Ophone" HeaderText="Ophone" SortExpression="Ophone" />
                <asp:BoundField DataField="purpose" HeaderText="purpose" SortExpression="purpose" />
                <asp:BoundField DataField="proptype" HeaderText="proptype" SortExpression="proptype" />
                <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                <asp:BoundField DataField="descrip" HeaderText="descrip" SortExpression="descrip" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                <asp:BoundField DataField="pic" HeaderText="pic" SortExpression="pic" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:bokadoin %>" DeleteCommand="DELETE FROM [Rent] WHERE [rid] = @original_rid AND (([Oname] = @original_Oname) OR ([Oname] IS NULL AND @original_Oname IS NULL)) AND (([Oemail] = @original_Oemail) OR ([Oemail] IS NULL AND @original_Oemail IS NULL)) AND (([Ophone] = @original_Ophone) OR ([Ophone] IS NULL AND @original_Ophone IS NULL)) AND (([purpose] = @original_purpose) OR ([purpose] IS NULL AND @original_purpose IS NULL)) AND (([proptype] = @original_proptype) OR ([proptype] IS NULL AND @original_proptype IS NULL)) AND (([city] = @original_city) OR ([city] IS NULL AND @original_city IS NULL)) AND (([address] = @original_address) OR ([address] IS NULL AND @original_address IS NULL)) AND (([descrip] = @original_descrip) OR ([descrip] IS NULL AND @original_descrip IS NULL)) AND (([price] = @original_price) OR ([price] IS NULL AND @original_price IS NULL)) AND (([pic] = @original_pic) OR ([pic] IS NULL AND @original_pic IS NULL))" InsertCommand="INSERT INTO [Rent] ([Oname], [Oemail], [Ophone], [purpose], [proptype], [city], [address], [descrip], [price], [pic]) VALUES (@Oname, @Oemail, @Ophone, @purpose, @proptype, @city, @address, @descrip, @price, @pic)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Rent]" UpdateCommand="UPDATE [Rent] SET [Oname] = @Oname, [Oemail] = @Oemail, [Ophone] = @Ophone, [purpose] = @purpose, [proptype] = @proptype, [city] = @city, [address] = @address, [descrip] = @descrip, [price] = @price, [pic] = @pic WHERE [rid] = @original_rid AND (([Oname] = @original_Oname) OR ([Oname] IS NULL AND @original_Oname IS NULL)) AND (([Oemail] = @original_Oemail) OR ([Oemail] IS NULL AND @original_Oemail IS NULL)) AND (([Ophone] = @original_Ophone) OR ([Ophone] IS NULL AND @original_Ophone IS NULL)) AND (([purpose] = @original_purpose) OR ([purpose] IS NULL AND @original_purpose IS NULL)) AND (([proptype] = @original_proptype) OR ([proptype] IS NULL AND @original_proptype IS NULL)) AND (([city] = @original_city) OR ([city] IS NULL AND @original_city IS NULL)) AND (([address] = @original_address) OR ([address] IS NULL AND @original_address IS NULL)) AND (([descrip] = @original_descrip) OR ([descrip] IS NULL AND @original_descrip IS NULL)) AND (([price] = @original_price) OR ([price] IS NULL AND @original_price IS NULL)) AND (([pic] = @original_pic) OR ([pic] IS NULL AND @original_pic IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_rid" Type="Int32" />
                <asp:Parameter Name="original_Oname" Type="String" />
                <asp:Parameter Name="original_Oemail" Type="String" />
                <asp:Parameter Name="original_Ophone" Type="String" />
                <asp:Parameter Name="original_purpose" Type="String" />
                <asp:Parameter Name="original_proptype" Type="String" />
                <asp:Parameter Name="original_city" Type="String" />
                <asp:Parameter Name="original_address" Type="String" />
                <asp:Parameter Name="original_descrip" Type="String" />
                <asp:Parameter Name="original_price" Type="String" />
                <asp:Parameter Name="original_pic" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Oname" Type="String" />
                <asp:Parameter Name="Oemail" Type="String" />
                <asp:Parameter Name="Ophone" Type="String" />
                <asp:Parameter Name="purpose" Type="String" />
                <asp:Parameter Name="proptype" Type="String" />
                <asp:Parameter Name="city" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="descrip" Type="String" />
                <asp:Parameter Name="price" Type="String" />
                <asp:Parameter Name="pic" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Oname" Type="String" />
                <asp:Parameter Name="Oemail" Type="String" />
                <asp:Parameter Name="Ophone" Type="String" />
                <asp:Parameter Name="purpose" Type="String" />
                <asp:Parameter Name="proptype" Type="String" />
                <asp:Parameter Name="city" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="descrip" Type="String" />
                <asp:Parameter Name="price" Type="String" />
                <asp:Parameter Name="pic" Type="String" />
                <asp:Parameter Name="original_rid" Type="Int32" />
                <asp:Parameter Name="original_Oname" Type="String" />
                <asp:Parameter Name="original_Oemail" Type="String" />
                <asp:Parameter Name="original_Ophone" Type="String" />
                <asp:Parameter Name="original_purpose" Type="String" />
                <asp:Parameter Name="original_proptype" Type="String" />
                <asp:Parameter Name="original_city" Type="String" />
                <asp:Parameter Name="original_address" Type="String" />
                <asp:Parameter Name="original_descrip" Type="String" />
                <asp:Parameter Name="original_price" Type="String" />
                <asp:Parameter Name="original_pic" Type="String" />
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
