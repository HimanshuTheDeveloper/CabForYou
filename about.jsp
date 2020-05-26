<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About</title>
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
	background-image:linear-gradient(rgba(0, 0, 0, 0.226),rgba(0, 0, 0, 0.281)) ,url(images/about.jpg);
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
	color:rgb(255, 6, 89);
	font-size:48px;
	font-family:Times New Roman;
    text-align:center;
    
}
#subtitle{
	color:white;
	font-size:18px;
	font-family:Times New Roman;
	text-align:center;
}
.container2{
    width:100%;
    height:500px;
    background:rgb(255, 198, 207);
}
#paragraph{
    margin:10px 10px; 
    width:48%;
    padding:1%;
    float:left;
    font-family:Verdana;
}
.image{
    width:45%;
    height:60%;
	background-image:url(images/img3.jpeg);
    background-size:cover;
    float:left;
   
    margin-top:10px;
}
.container3{
    width:100%;
    height:450px;
    background:pink;

}
#image1{
    float:left;
    width:56%;
    height:100%;
    padding:2%;

}
#image2{
    float:right;
    width:36%;
    height:58%;
    padding:1%;
   

}
#image3{
    float:right;
    width:36%;
    height:39.4%;
    margin-top:1%;
    padding:1%;
}
.container4{
    width:100%;
    height:500px;
    background:pink;
}
#himanshu{
    width:30%;
    height:60%;
    margin-left:80px;
    float:left;
    border-radius:50%;
}
#name{
    float:left;
    font-size:35px;
    font-family:Verdana;
    margin-left:14%;
    
}
#ceo{
    float:left;
    font-size:20px;
    font-family:Verdana;
    margin-left:15%;
    color:black;

}
#behind{
    font-size:26px;
    font-family:Verdana;
    color:rgb(255, 0, 0);
    margin-left:25%;
    
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
                    <li class="active"><a href="about.jsp">About</a></li>
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
            <br><br><br>  <br><br><br>  <br><br><br>
            <h1 id="cabs">Cab For You</h1>    <br><br><br>
			<h1 id="subtitle">Move Beyond Your Choice.</h1>
        </div>
        <div class="container2">
            <br><br><br>
            <h1 id="cabs">Cab For You</h1><br><br><br>
        <p id="paragraph">
            Cab booking is a booming business that has the potentiality to
             generate huge revenue using Cab Booking Software, instead of the 
             traditional cab hailing system. One can enhance the quality of 
             service as well by streamlining and automating the processes by taking 
             advantage of such technology. Our feature loaded and fast Cab Booking
              Application is enough efficient to handle the intricacies of the 
              simultaneously running processes that ensures smooth growth of the
             business and reduce the downtime. <br><br>
             There are different ranges of cabs available according to one’s preference.
              As the internet users are increasing exponentially, companies have introduced
               Online Cab Booking system. This system improves customer’s experience
                but also eases the hassles of a customer while taking a ride.
             Cab booking software has research driven features and functionalities that 
             will lessen your effort to reduce overall cost, while it will improve the
              productivity, smoothen the booking procedure and enhance profitability of your company.
            </p>
        
            <div class="image">
                
            </div>
         </div>
         <div class="container3">
             <img id="image1" src="images/image.jpg">
             <img  id="image2" src="images/img.jpg">
             <img id="image3" src="images/taxi.webp">
         </div>
         <div class="container4"><br><br>
             <h1 id="behind"> The Man Behind Cab For You.....</h1>
             <br><br>   
             <img id="himanshu" src="images/ceo.jpeg"><br>  
            <h1 id="name">Himanshu Singh </h1> <br><br>
            <h3 id="ceo">CEO of Cab For You</h3>
             <p> </p>

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
 
