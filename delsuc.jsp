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
							<li><a href="savenotes.jsp">Save</a></li>
							<li class="active"><a href="viewnotes.jsp">View</a></li>
							<li><a href="index.html">Logout</a></li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</header>
	<!-- Header section end -->


	<!-- Hero section -->
	<section class="hero-section set-bg" data-setbg="img/bg.jpg">
	<%@page import="java.sql.*"%>
	<%
				

  String m=request.getParameter("msg");
  if(m!=null)
    {
		out.println("<script>alert('Deleted Successfully...!')</script>");
   }
   
String uname=(String)session.getAttribute("email");
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/notes";
String name="root";
String pwd="root";
Connection con=DriverManager.getConnection(url,name,pwd);
String sql="select * from note where uname='"+uname+"'";
Statement ps=con.createStatement();
ResultSet rs=ps.executeQuery(sql);
%>

		<div class="container">
			<div class="hero-text text-white">
				<h2>View Notes </h2>
				
			</div>
			<div class="row">
				
							<section>
			<center style="padding-top: 30px;">
			<table border="1" style="background-color: #00BCD4;">
			<tr>
			<th><center>Date</center></th>
			<th><center>Subject</center></th>
			<th><center>Notes<center></th>
			<th><center>Action<center></th>
			</tr>
			<%
			while(rs.next())
			{%>
		<tr>
		<td><center><%=rs.getString(2)%></center></td>
		<td><center><%=rs.getString(3)%></center></td>
		<td><center><%=rs.getString(4)%></center></td>
		<td><center><a href="editnotes.jsp?id=<%=rs.getString(1)%>" style="color: #000000;">Edit</a>/
		<a href="deletenotes.jsp?id=<%=rs.getString(1)%>" style="color: #000000;">Delete</a></center></td>
			</tr><%}%>
			</table>
			</center>
			</section>

				
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