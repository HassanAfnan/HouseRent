<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Bokado_In.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Bokado In</title>
	<meta charset="UTF-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css"/>
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css"/>
	<link rel="stylesheet" type="text/css" href="css/main.css"/>
<!--===============================================================================================-->
</head>
<body>
    <form id="form1" runat="server">
       	
	<div class="limiter">
		<div class="container-login100" style="background: linear-gradient(to right, rgb(249, 0, 0), rgb(91, 91, 91));">
			<div class="wrap-login100 p-l-50 p-r-50 p-t-77 p-b-30" style="background: #696969;">
				<div class="login100-form validate-form">
					<span class="login100-form-title p-b-55" style="color:white">
						Login
					</span>

					<div class="wrap-input100 validate-input m-b-16" data-validate = "Valid email is required: ex@abc.xyz">
                        <asp:TextBox ID="TextBox1" runat="server" class="input100" name="email" placeholder="Email" required></asp:TextBox>
                        <!--<input class="input100" type="email" name="email" placeholder="Email" required>-->
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<span class="lnr lnr-envelope"></span>
						</span>
					</div>

					<div class="wrap-input100 validate-input m-b-16" data-validate = "Password is required">
                        <asp:TextBox ID="TextBox2" runat="server" class="input100" name="pass" placeholder="Password" TextMode="password" required></asp:TextBox>
                       <!-- <input class="input100" type="password" name="pass" placeholder="Password" required>-->
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<span class="lnr lnr-lock"></span>
						</span>
					</div>

					<!--<div class="contact100-form-checkbox m-l-4">
						<input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
						<label class="label-checkbox100" for="ckb1">
							Remember me
						</label>
					</div>-->
					
					<div class="container-login100-form-btn p-t-25">
                        <asp:Button ID="Button1" runat="server" Text="Login" class="login100-form-btn" style="background: red;" OnClick="Button1_Click" />
					<!--	<button class="login100-form-btn" style="background: red;">
							Login
						</button>-->
					</div>

			<!--		<div class="text-center w-full p-t-42 p-b-22">
						<span class="txt1">
							Or login with
						</span>
					</div>

					<a href="#" class="btn-face m-b-10">
						<i class="fa fa-facebook-official"></i>
						Facebook
					</a>

					<a href="#" class="btn-google m-b-10">
						<img src="images/icons/icon-google.png" alt="GOOGLE">
						Google
					</a> -->

					<div class="text-center w-full p-t-115">
						<span class="txt1">
							Not a member?
						</span>

						<a class="txt1 bo1 hov1" href="Signup.aspx" style="color:white">
							Sign up now							
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</form>
    	
<!--===============================================================================================-->	
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="js/main1.js"></script>

</body>
</html>
