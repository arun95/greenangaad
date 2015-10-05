<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" import="java.sql.*"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Products</title>
<meta charset="utf-8">
<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
<script type="text/javascript" src="js/jquery-1.6.js"></script>
<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="js/tms-0.3.js"></script>
<script type="text/javascript" src="js/tms_presets.js"></script>
<script type="text/javascript" src="js/script.js"></script>
</head>
<body id="page2">
<div class="body1">
	<div class="main">
<!--header -->
		<header>
			<div class="wrapper">
				<h1><a href="index_1.html" id="logo">Angaad Agriculture Company</a></h1>
				<nav>
					<ul id="menu">
						<li><a href="index_1.html">Home</a></li>
						<li><a href="Products.html">Products</a></li>
						<li><a href="Technology.html">Signin</a></li>
						<li><a href="search1.html">Search</a></li>
						<li class="active"><a href="display2.jsp">Display</a></li>
					</ul>
				</nav>
			</div>
		</header>
<!-- / header -->
<!-- content -->
<audio autoplay>
                                                <source src="kaththi2.mp3" type="audio/mpeg">
                                                Your browser does not support the audio element.
                                                </audio>
		<article id="content">
			<div class="wrapper">
				<h2>Useful Info</h2>
				<div class="wrapper">
					<section class="col1">
						<span class="dropcap1"><span>01</span></span>
						<div class="cols">
							<p class="pad_bot1 color1">Green Angaad is the one of the Major website for farmers.</p>
							<p class="pad_bot2">This website is used to find the appropriate products available.</p>
							<a href="#" class="link1">Read More</a>
						</div>
					</section>
					<section class="col1 pad_left1">
						<span class="dropcap1"><span class="color1">02</span></span>
						<div class="cols">
							<p class="pad_bot1 color1">This website shows you all the available products from all the farmers.</p>
							<p class="pad_bot2">All agri products are available here</p>
							<a href="#" class="link1">Read More</a>
						</div>
					</section>
					<section class="col1 pad_left1">
						<span class="dropcap1"><span class="color2">03</span></span>
						<div class="cols">
							<p class="pad_bot1 color1">This greenAngaad website  has several pages.</p>
							<p class="pad_bot2"></p>
							<a href="#" class="link1">Read More</a>
						</div>
					</section>
				</div>
			</div>
		</article>
	</div>
</div>
<div class="body2">
	<div class="main">
		<article id="content2">
			<h2>Our Featured Products</h2>
			<div class="wrapper">
				 <%
     
	
            Connection con;
     Class.forName("org.apache.derby.jdbc.ClientDriver");
   con=DriverManager.getConnection("jdbc:derby://localhost:1527/angaad","green","green");
 Statement statement = con.createStatement() ;
            ResultSet resultset =statement.executeQuery("select * from upload") ;
         %> 
            <TABLE BORDER="1" color="red">
            <TR>
                <TH>productname&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</TH>
                <TH>quantity&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</TH>
                <TH>Startingdate&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</TH>
                <TH>  </TH>
                <TH>Cateogry&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</TH>
                <TH>Expirydate&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</TH>
                <TH>MRP&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</TH>
                <TH>Discount</TH>
            </TR>
            <% while(resultset.next()){ %>
            <TR>
                <TD> <%= resultset.getString(2) %></td>
                <TD> <%= resultset.getString(3) %></TD>
                <TD> <%= resultset.getString(4) %></TD>
                <TD>   </TD>
                <TD> <%= resultset.getString(5) %></TD>
                <TD> <%= resultset.getString(6) %></TD>
		<TD> <%= resultset.getString(7) %></TD>
                 <TD> <%= resultset.getString(8) %></TD>
            </TR>
            <% } %>
        </TABLE>		</div>
		</article>
<!-- / content -->
	</div>
</div>
<div class="main">
<!-- footer -->
	<footer>
		<div class="wrapper">
			<section class="col2">
				<div class="wrapper">
					<section class="col4">
						<h3>Follow Us </h3>
						<ul id="icons">
							<li><a href="www.facebook.com"><img src="images/icon1.jpg" alt=""><span>Facebook</span></a></li>
							<li><a href="www.twitter.com"><img src="images/icon2.jpg" alt=""><span>Twitter</span></a></li>
							<li><a href="#"><img src="images/icon3.jpg" alt=""><span>Linked In</span></a></li>
						</ul>
					</section>
					
				</div>
				<div id="footer_link">
					<li><a href="display2.jsp">Top</a></li>
					<li><a href="index_1.html">Home</a></li>
				</div>
			</section>
			<section class="col3 pad_left2">
				<h3>Email Us</h3>
				<form id="ContactForm">
					<div>
						<div class="wrapper">
							<span>Your Name:</span>
							<div class="bg"><input type="text" class="input"></div>
						</div>
						<div class="wrapper">
							<span>Your E-mail:</span>
							<div class="bg"><input type="text" class="input"></div>
						</div>
						<div class="textarea_box">
							<span>Your Message:</span>
							<div class="bg2"><textarea name="textarea" cols="1" rows="1"></textarea></div>
						</div>
						<a href="#" onClick="document.getElementById('ContactForm').submit()">Submit</a>
					</div>
				</form>
			</section>
		</div>
		<!-- {%FOOTER_LINK} -->
	</footer>
<!-- / footer -->
</div>
</body>
</html>