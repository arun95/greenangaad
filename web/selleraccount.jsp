<!DOCTYPE HTML>
<html>
<head>
<title>Green Angaad</title>
<link href="css10/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js2/jquery-1.11.0.min.js"></script>
<!-- Custom Theme files -->
<link href="css10/style.css" rel="stylesheet" type="text/css" media="all"/>
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); }>
</script>
<meta name="keywords" content="Agrom Responsive web template, Bootstrap Web Templates, Flat Web Templates, AndriodCompatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<!--Google Fonts-->
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js2/move-top.js"></script>
<script type="text/javascript" src="js2/easing.js"></script>
	<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
</script>
<!-- //end-smoth-scrolling -->
<script src="js2/menu_jquery.js"></script>

<!---pop-up-box---->
					<link href="css10/popuo-box.css" rel="stylesheet" type="text/css" media="all"/>
					<script src="js2/jquery.magnific-popup.js" type="text/javascript"></script>
					<!---//pop-up-box---->
					 <script>
						$(document).ready(function() {
						$('.popup-with-zoom-anim').magnificPopup({
							type: 'inline',
							fixedContentPos: false,
							fixedBgPos: true,
							overflowY: 'auto',
							closeBtnInside: true,
							preloader: false,
							midClick: true,
							removalDelay: 300,
							mainClass: 'my-mfp-zoom-in'
						});
																						
						});
				</script>		
</head>
<body>
<!--header start here-->
<div class="header">
	<div class="container">
		<div class="header-main">
			   <div class="head-left">
				   	<div class="phone">
				   		<p></p>
				   	</div>
				   	<div class="search">		
			              <a class="play-icon popup-with-zoom-anim" href="#small-dialog"><i> </i></a>
		            </div>
				     <div id="small-dialog" class="mfp-hide">
					<div class="search-top">
							<div class="login">
								<input type="submit" value="">
								<input type="text" value="Search Here..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}">		
							</div>
							<p>Angaad</p>
						</div>				
					</div>
	        <!---->
	              <div class="clearfix"> </div>
                </div>
			   <div class="header-right">
				   <div class="logo">
				   	   <h1><a href="selleraccount.jsp">Angaad</a></h1>
				   </div>
				   <div class="header-login">
					 <div class="top-nav-right">
					  </div>
				   </div>
		      </div>
		    <div class="clearfix"> </div>
	     </div>
	     <div class="clearfix"> </div>
     </div>
   </div>
</div>
<!--header end here-->
<!--top nav start here-->
<div class="top-navg-main">
	<div class="container">
	    <div class="top-navg">
	    	           <span class="menu"> <img src="images9/icon.png" alt=""/></span>
				<ul class="res">
				    <li><a href="selleraccount.jsp" class="active hvr-sweep-to-bottom">Home</a></li> 
					<li><a class="hvr-sweep-to-bottom" href="sellerdisplay.jsp">Profile</a></li> 
					<li><a class="hvr-sweep-to-bottom" href="upload.html">Upload</a></li>
                                        <li><a class="hvr-sweep-to-bottom" href="sellermsg.jsp">Message</a></li>
					<li><a class="hvr-sweep-to-bottom" href="slogout.jsp">Logout</a></li> 
					<li><a class="hvr-sweep-to-bottom" href="adminsellerc.html">Contact</a></li> 
				 </ul>
                           hello <%= session.getAttribute( "theName" ) %>
					<!-- script-for-menu -->
						 <script>
						   $( "span.menu" ).click(function() {
							 $( "ul.res" ).slideToggle( 300, function() {
							 // Animation complete.
							  });
							 });
						</script>
		        <!-- /script-for-menu -->
		   </div>
	 </div>
</div>
<!--top nav end here-->
<!--banner start here-->
<div class="banner">
	<div class="container">
		
	</div>
</div>
<!--banner end here-->
<!--bann-info start here-->

<!--//footer--> 
</body>
</html>