<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Cab For You</title>
	<link rel="stylesheet" href="indexstyle.css">
	<link rel="icon" href="images/weblogo.png">
</head>
<body>
	<div class="main">
	<div class="container1">
		<div class="list">
			<div class="logo">
				<img src="images/weblogo.png"></img>
			</div>
			<ul>
				<li class="active"><a href="index.jsp">Home</a></li>
				<li><a href="about.jsp">About</a></li>
				<li><a href="gallery.jsp">Gallery</a></li>
				<li><a href="contactus.jsp">Contact us</a></li>
				<%
					if(session.getAttribute("customerId") != null)
					{%>
						<li><a href="checkAvailbility.jsp">Book cab</a></li>
						<li><a href="mybooking.jsp">My Booking</a></li>
						<li><a href="customerProfile.jsp">User Profile</a></li>
						<li><a href="logout.jsp">logged out</a></li>
						
					<%}
				%>
				<%
					if(session.getAttribute("cabid") != null)
					{%>
					
						<li><a href="drivenow.jsp">Drive Now</a></li>
						<li><a href="driverprofile.jsp">Driver Profile</a></li>
						<li><a href="logout.jsp">logged out</a></li>
						
					<%}
				%>

			</ul>
		</div>
		<div class="title">

			<%
					if(session.getAttribute("customerId") != null)
					{%>
						
						<h1 id="username">Welcome ${name}</h1>
					<%}
			%>
			<%
					if(session.getAttribute("cabid") != null)
					{%>
					
						<h1 id="username">Welcome ${name}</h1>
					<%}
			%>

	<h1 id="cabs">Cab For You</h1>
			<h1 id="subtitle">Move Beyond Your Choice.</h1>
		
		</div>

		<div class="button">
			<a href="customer.jsp" class="btn">Customer</a>
			<a href="driver.jsp" class="btn">Driver</a>
		</div>
</div>	
<div class="container2">
	
	<div class="box1" id="firstbox">
		<p id="best">BEST IN CITY</p>
		<p id="trusted">TRUSTED CAB SERVICES</p>
		<p id="delhi">IN DELHI</p>

		<p id="paragraph">There are different ranges of cabs available according <br> 
			to ones preference As the internet users are increasing<br> 
			exponentially , companies have introduced Online Cab Booking system.<br> 
			This system improves customers experience but also eases the<br> 
			hassles of a customer while taking a ride</p>

		<button id="readmore">Read More</button>


	</div>
	<div class="box1" id="secondbox">
	
	</div>
</div>
<div class="container3">
	<h3 id="our">Our</h3>
	<h1>Tariffs</h1>
	<div class="tarrifbox">
		<div class="tarrif" id="economy"></div>
		<div class="tarrif" id="standard"></div>
		<div class="tarrif" id="business"></div>
	</div>
</div>
<div class="container4">
	<h1 id="we">We Do Best</h1>
	<h1 id="thank">Thank You Wish</h1><br>
	<div class="child4">
		<div class="part1">

					<br><br>
					<img src="images/taxilog.png">
					<h1 id="pickup">HOME PICKUP</h1>
					<p id="advantages">Check the requires cab for customer<br> journey to travel from the source <br>to the destination.</p><br><br>


					<img src="images/taxilog.png">
					<h1 id="pickup">BONUSES FOR RIDE</h1>
					<p id="advantages">Check the requires cab for customer<br> journey to travel from the source <br>to the destination.</p>
		</div>
		<div class="part2">
				<br><br>
				<img src="images/taxilog.png">
				<h1 id="pickup">HOME PICKUP</h1>
				<p id="advantages">Check the requires cab for customer<br> journey to travel from the source <br>to the destination.</p><br><br>


				<img src="images/taxilog.png">
				<h1 id="pickup">BONUSES FOR RIDE</h1>
				<p  id="advantages">Check the requires cab for customer<br> journey to travel from the source <br>to the destination.</p>



		</div>

		<button id="read">Read More</button>

	</div>


</div>
<div class="container5">
	<h1>WE ARE READY TO TAKE YOUR CALL 24 HOURS, 7 DAYS!</h1>
	<h1 id="contact">+123 4567 8900</h1>

</div>

<div class="container6">
	<br><br>
	<h1 id="happy">HAPPY CLIENT'S</h1>
	<h1 id="test">TESTIMONIALS</h1>
	<div class="child">
		<img src="images/akash.jpg"><br><br>
		<h1 id="happy">Akash Tonk</h1>
		<h3>Businessman</h3>
		<br><br>
		<p  id="advantages">Check the requires cab for customer<br> 
			journey to travel from the source <br>to the destination.</p>
	</div>
	<div class="child">
		<img src="images/nishant.jpg"><br><br>
		<h1 id="happy">Nishant</h1>
		<h3>Businessman</h3>
		<br><br>
		<p  id="advantages">Check the requires cab for customer<br>
			 journey to travel from the source <br>to the destination.</p>
	</div>
	
</div>

<div class="container7">
	<div class="information">
		<div class="info">
			<h1 id="about">ABOUT CAB HUB</h1>
			<div class="line"></div><br><br>
			<p  id="example">Check the requires cab for customer<br>
				 journey to travel from the source <br>to the destination.</p>
			<br><br>	<p  id="example">Check the requires cab for customer<br>
				 journey to travel from the source <br>to the destination.</p>
		</div>
		<div class="info">
			<h1 id="about"> DOWNLOAD</h1>
			<div class="line"></div><br><br>
			<p  id="example">Check the requires cab for customer<br> 
				journey to travel from the source <br>to the destination.</p>
			<br><br>	<p  id="example">Check the requires cab for customer<br>
				 journey to travel from the source <br>to the destination.</p>


		</div>
		<div class="info">
			<h1 id="about"> CONTACT</h1>
			
			<div class="line"></div>
			<p id="example">
				<br><br>
				<p id="office">REGISTERED OFFICE</p>
				<br>
			
				#414, 3rd Floor,<br>
				4th Block,17th Main,<br>
				50 Feet Road <br>
				Khajuri Khass, Delhi, 110090<br>
				Phone number 123-4567890<br>
				Fax number 000-0987665
			
			</p>
		</div>
	</div>

		


</div>
			<div class="container8">
				<br>
				<p id="social">Social Link...</p><br>
				<div class="social">
					<div class="log">
						<img id="logo1" src="images/facebook.png">
					</div>
					<div class="log">
						<img id="logo2" src="images/linkedin.png">
					</div>
					<div class="log">
						<img id="logo3" src="images/twitter.png">
					</div>
					<div class="log">
						<img id="logo4" src="images/instagram.png">
					</div>
				</div>
				<br><br>	
				<p id="copyright">Copyright @2020 himanshu32301@gmail.com</p>
			</div>
</div>
	
</body>
</html>