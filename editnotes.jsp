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
							<li><a href="userhome.jsp">Home</a></li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</header>
	<!-- Header section end -->


	<!-- Hero section -->
	<section class="hero-section set-bg" data-setbg="img/bg.jpg">
		<div class="container">
			<div class="hero-text text-white">
				<h2>Write The Notes</h2>
					<%@page import="java.sql.*"%>
<%
String id=request.getParameter("id");
String uname=(String)session.getAttribute("email");
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/notes";
String name="root";
String pwd="root";
Connection con=DriverManager.getConnection(url,name,pwd);
String sql="select * from note where id='"+id+"'";
Statement ps=con.createStatement();
ResultSet rs=ps.executeQuery(sql);
if(rs.next()){
%>
				
			</div>
			<div class="row">
				<div class="col-lg-10 offset-lg-1">
					<form action="notesupdate.jsp" method="POST">
					<input type="hidden" name="id" value="<%=rs.getString(1)%>">
					<input type="date" name="date" value="<%=rs.getString(2)%>" required readonly><br><br>
						<input type="text" name="subject" value="<%=rs.getString(3)%>" required readonly><br><br>
						<textarea name="note" rows="10" cols="80"  required><%=rs.getString(4)%></textarea><br><br>
						<button class="site-btn">Save</button>
					</form>
					
				</div>
			</div><%}%>
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