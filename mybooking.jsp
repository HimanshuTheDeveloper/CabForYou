<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Booking a cab</title>
    <link rel="stylesheet" href="bookcabstyle.css">
    <style>
        *{
            color:white;
        }
        .booking
        {
            width:100%;
            background:none;
            color:black;
        }   
           
        th
        {
            background:pink;
            color:black;
        }
        td
        {
            text-align: center;
            background:white;
        }
        #bookingtext
        {
            color:white;
            font-size:30px;
            text-align:center;
        }
        #cancle{
            padding:10px;
            background:black;
            border:none;
            font-family:arial;
            font-size:15px;
        }
        #cancle:hover{
            border:1px solid white;
            cursor:pointer;
        }
        #ride_id{
            width:150px;
            padding:8px;
            color:black;
            font-family:arial bold;
            font-size:15px;
        }
      


     </style>
</head>
<body>
    <div class="main">
        <div class="header">
            <div class="list">
                <div class="logo">
                    <img src="images/weblogo.png"></img>
                </div>
                <ul>
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="about.jsp">About</a></li>
                    <li><a href="gallery.jsp">Gallery</a></li>
                    <li><a href="contactus.jsp">Contact us</a></li>
                    <li><a href="checkAvailbility.jsp">Book cab</a></li>
                    <li class="active"><a href="mybooking.jsp">My Booking</a></li>
                    <li><a href="customerProfile.jsp">User Profile</a></li>
                    <li><a href="logout.jsp">logged out</a></li>
                    		
                </ul>
            </div>
            <div class="booking">
              <br><br><br><br>
               <h1 id="bookingtext">BOOKING DETAILS</h1>
               <br>
    
                <div class="cancle">
                    <form action="cancleride.jsp">
                        Cancle Ride_request :- <input type="text" id="ride_id" name="rideId" placeholder="Enter the Ride_Id">
                        <input id="cancle" type="submit" value="Cancle Request">

                    </form>
                </div>
                <br>
                <table style="width:100%;">
                   

                    <tr>
                        <th>Ride_ID</th>
                        <th>Source</th>
                        <th>Destination</th>
                        <th>Date</th>
                        <th>Time</th>
                        <th>Car Type</th>
                        <th>Distance(in KM)</th>
                        <th>Fare(in Ruppee)</th>
                        <th>Cab Id</th>
                        
                        <th>Mobile</th>
                        <th>Status</th>
                        
                    </tr>
                    <%@page import="java.sql.*"%>
                    <%            
                        Connection con=null;
                        Statement st=null;
                        ResultSet rs = null, rs2 = null;
                     
                        try
                        {
                            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cabforyou","root","1234");
                            st=con.createStatement();
                            String query="select ride_request.* , mobile from ride_request left outer join driver on ride_request.cabid = driver.cabid where customer_id="+session.getAttribute("customerId");
                          
                            rs = st.executeQuery(query);
                            while(rs.next())
                            {
                                String color = null;
                                if(rs.getString("status").equals("pending"))
                                    color = "#da9811;";
                                else if(rs.getString("status").equals("aproved"))
                                    color = "#72ea72";
                                %>
                                <tr >
                                    <td style="background-color: <%=color%>;"><%=rs.getInt("ride_id")%></td>
                                    <td style="background-color: <%=color%>;"><%=rs.getString("source")%></td>
                                    <td style="background-color: <%=color%>;"><%=rs.getString("destination")%></td>
                                    <td style="background-color: <%=color%>;"><%=rs.getString("date")%></td>
                                    <td style="background-color: <%=color%>;"><%=rs.getString("time")%></td>
                                    <td style="background-color: <%=color%>;"><%=rs.getString("cartype")%></td>
                                    <td style="background-color: <%=color%>;"><%=rs.getString("distance")%></td>
                                    <td style="background-color: <%=color%>;"><%=rs.getString("fare")%></td>
                                    
                                    <td style="background-color: <%=color%>;"><%=rs.getString("cabid")%></td>
                                    <td style="background-color: <%=color%>;"><%=rs.getString("mobile")%></td>
                                    <td style="background-color: <%=color%>;"><%=rs.getString("status")%></td>
                                    
                                   
                                    
                                </tr>
                            <%}
                        }
                        catch(Exception e)
                        {
                            out.print("error"+e.getMessage());
                        }
                    %>
                                    
                       
                     

              
                </table>
            </div>
          
        </div>
   
    </div>
</body>

</html>         
       