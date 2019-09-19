<!DOCTYPE html>
<html lang="en">
<head>
	<title>Speed Notes</title>
	<meta charset="UTF-8">
	<meta name="description" content="WebUni Education Template">
	<meta name="keywords" content="webuni, education, creative, html">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- Favicon -->   
	<link href="img/favicon.ico" rel="shortcut icon"/>

	<!-- Google Fonts -->
	<link href="https://fonts.googleapis.com/css?family=Raleway:400,400i,500,500i,600,600i,700,700i,800,800i" rel="stylesheet">

	<!-- Stylesheets -->
	<link rel="stylesheet" href="css/bootstrap.min.css"/>
	<link rel="stylesheet" href="css/font-awesome.min.css"/>
	<link rel="stylesheet" href="css/owl.carousel.css"/>
	<link rel="stylesheet" href="css/style.css"/>


	<!--[if lt IE 9]>
	  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->

</head>
<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Header section -->
	<header class="header-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-3">
					
					<div class="nav-switch">
						<i class="fa fa-bars"></i>
					</div>
				</div>
				<div class="col-lg-9 col-md-9">
					<nav class="main-menu">
						<ul>
							<!--<li><a href="index.html">Home</a></li>
							<li><a href="#">About us</a></li>-->
							<li ><a href="index.html">Home</a></li>
							
							<li class="active"><a href="registration.html">Register</a></li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</header>
	<!-- Header section end -->

<%
				

  String m=request.getParameter("register");
  if(m!=null)
    {
		out.println("<script>alert('Registered Successfully...!')</script>");
   }
   
 %>
	<!-- Hero section -->
	<section class="hero-section set-bg" data-setbg="img/bg.jpg">
		<div class="container">
			<div class="hero-text text-white">
				<h2>Register Here</h2>
				
			</div>
			<div class="row">
				<div class="col-lg-10 offset-lg-1">
					<script type="text/javascript">
function validateForm(){
var letters=/^[A-Za-z]+$/;
var numbers=/^[0-9]+$/;

var pwd=document.forms["myForm"]["password"].value;
var phn=document.forms["myForm"]["phone"].value;

if(phn.length!=10)
{
alert("Phone number must contain 10 characters");
return false
}
if(pwd.length<8)
{
alert("Password must contain atleast 8 characters");
return false
}

}</script>
					<form action="reg.jsp" method="POST" name="myForm" onsubmit="return validateForm()">
						<input type="text" name="name" placeholder="Name" required><br><br>
						<input type="password" name="password" placeholder="Password" required><br><br>
						<input type="email" name="email" placeholder="Email" required><br><br>
						<input type="number" name="phone"  placeholder="Phone Number" required><br><br>
						<input type="text" name="address" placeholder="Address" required><br><br>
						<button class="site-btn">Sign Up Now</button>
					</form>
				</div>
			</div>
		</div>
	</section>
	<!-- Hero section end -->


	<!-- categories section -->
	<!-- categories section end -->


	<!-- search section -->
	<!-- search section end -->


	<!-- course section -->
	<!-- course section end -->


	<!-- signup section -->
	<!-- signup section end -->


	<!-- banner section -->
	<!-- banner section end -->


	<!-- footer section -->
		<div class="footer-bottom">
			<div class="footer-warp">
				
				<div class="copyright"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy; All rights reserved | QuickNotes 
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></div>
			</div>
		</div>
	</footer> 
	<!-- footer section end -->


	<!--====== Javascripts & Jquery ======-->
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/mixitup.min.js"></script>
	<script src="js/circle-progress.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/main.js"></script>
</html>