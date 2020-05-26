<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Contact us</title>
	<link rel="icon" href="images/weblogo.png">

    <style>
*{
	margin:0 auto;
	padding:0;
	font-family:century Gothic;
}
.main{
	margin:0 auto;
	width:100%;

}
.container1{
	margin:auto;
	width:100%;
	background-image:linear-gradient(rgba(0, 0, 0, 0.226),rgba(0, 0, 0, 0.281)) ,url(images/container4.jpg);
	height:100vh;
	background-size:cover;
	background-position:center;
}


.list ul{
	float:right;
	list-style-type:none;
	margin-top:25px;
	
}
ul li{	
	display:inline-block;
	
}
ul li a{
	text-decoration:none;
	color:rgb(255, 255, 255);
	padding:5px 20px;
	border:1px solid transparent;
	transition:0.6s ease;
	font-weight: 20px;
}
ul li a:hover
{
	background-color:#fff;
	color:#000;
	box-shadow:0px 0px 0px 0px grey;
	
}

ul li.active a
{
	background-color:white;
	color:black;
	
}
.logo img
{
	float:left;
	width:80px;
	height:80px;
	margin-left:10px;
}
#cabs{
	color:#fcc31a;
	font-size:48px;
	font-family:Cambria;
    text-align:center;
    
}
#subtitle{
	color:white;
	font-size:24px;
	font-family:arial;
	text-align:center;
}
.container2{
    width:100%;
    height:700px;
    background:rgb(253, 187, 253);

}
.child{
	width:80%;
	background:none;
	height:45%;

	color:black;

}
#team{
    text-align:center;

}
.part1{
	background:none;
	width:50%;
	float:left;
	height:100%;
	text-align: left;
}
.part1 img{
	width:80px;
	height:80px;
	float:left;
	
}
	
#pickup{
	font-size:24px;
	color:orangered;
	font-family:sans-serif;
	text-align:center;
}
#advantages{
	text-align:center;
	color:black;
	font-size:14px;
}
.part2{
	width:50%;
	background:none;
	float:left;
	height:100%;
	text-align: left;

}

.part2 img{
	width:80px;
	height:80px;;
	float:left;
}
.container8{
	width:100%;
	height:400px;
	background:rgb(0, 0, 0);
	text-align:center;
	color:white;
}
.social{
	margin:0 auto;
	width:800px;
	height:240px;

	text-align:center;
	

}
.log{
	width:25%;
	height:100%;
	text-align:center;
	float:left;
	

}
#logo1{
	width:78px;
	height:78px;
	margin:37px;
}

#logo2{
	width:100px;
	height:100px;
	margin:30px;
}
#logo3{
	width:100px;
	height:100px;
	margin:30px;
}
#logo4{
	width:75px;
	height:75px;
	margin:30px;
	margin-top:38px;
}
#logo1:hover{
	cursor:pointer;
	width:110px;
	height:110px;
	transition:3s ease;
	
}
#logo2:hover{
	cursor:pointer;
	width:120px;
	height:120px;
	transition:3s ease;
	
}
#logo3:hover{
	cursor:pointer;
	width:120px;
	height:120px;
	transition:3s ease;
	
}
#logo4:hover{
	cursor:pointer;
	width:120px;
	height:120px;
	transition:3s ease;
	
}
#copyright{
	color:white;
	padding:5px;
	font-size:15px;
}

#copyright:hover{
	cursor:pointer;
	font-size:20;
	transition:3s ease;
	color:rgb(251, 255, 16);
}
#office{
	font-size:20px;
	font-family:arial bold;
}

</style>
</head>
<body>
    <div class="main">
        <div class="container1">
            <div class="list">
                <div class="logo">
                    <img src="images/weblogo.png"></img>
                </div>
                <ul>
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="about.jsp">About</a></li>
                    <li><a href="gallery.jsp">Gallery</a></li>
					<li  class="active"><a href="#">Contact us</a></li>
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
                <br><br><br>  <br><br><br>  <br><br><br>
            <h1 id="cabs">Cab For You</h1>    <br><br><br>
            <h1 id="subtitle">Get In Touch</h1>
            <h2 id="subtitle">Tell Us What You Think!</h2>
 
            </div>
        </div>
        <div class="container2">
            <br><br>
            <h1 id="team">Reach The Appropriate Team</h1>
            <br>
            <div class="child">
                <div class="part1">
        
                            <br><br>
                            <img src="images/customersupport.png">
                            <h1 id="pickup">CUSTOMER SUPPORT</h1>
                            <p id="advantages">Check the requires cab for customer<br> journey to travel from the source <br>to the destination.</p><br><br>
        
        
                            <img src="images/customersecurity.png">
                            <h1 id="pickup">CUSTOMER SECURITY</h1>
                            <p id="advantages">Check the requires cab for customer<br> journey to travel from the source <br>to the destination.</p>
                </div>
                <div class="part2">
                        <br><br>
                        <img src="images/media.png">
                        <h1 id="pickup">MEDIA RELATED QUERIES</h1>
                        <p id="advantages">Check the requires cab for customer<br> journey to travel from the source <br>to the destination.</p><br><br>
        
        
                        <img src="images/drive.png">
                        <h1 id="pickup">DRIVE FOR CABFORYOU</h1>
                        <p  id="advantages">Check the requires cab for customer<br> journey to travel from the source <br>to the destination.</p>
        
        
					</div>
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