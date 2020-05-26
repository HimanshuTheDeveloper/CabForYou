<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Check Availbility</title>
    <link rel="stylesheet" href="bookcabstyle.css">
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
                    <li><a href="contactus.jsp">Contacts</a></li>
                    <li  class="active"><a href="checkAvailbility.jsp">Book cab</a></li>
                    <li><a href="mybooking.jsp">My Booking</a></li>
                    <li><a href="customerProfile.jsp">User Profile</a></li>
                    <li><a href="logout.jsp">logged out</a></li>
                </ul>
                    		
                   
            </div>
       

        <div class="bookingform" >
            <form id="booking" class="booking-form" action="insertAvailbility.jsp">
                <h1 id="bookinghead">Cab Availbility</h1>
                <table name="bookingform">
                    
                <tr>
                    <td><input type="text" class="input-field" name="source" placeholder="Source"></td>
                    <td>	<input type="text" class="input-field" name="destination" placeholder="Destination"></td>
                </tr><br>
                <tr>
                    <td><p id="datetext"> Date :<input type="date" name="date" id="dateinput"></p></td>
                    <td>
                       <p id="timetext">Time : <input type="time" name="time" id="timeinput" name="time" placeholder="hrs:mins" 
                        pattern="^([0-1]?[0-9]|2[0-4]):([0-5][0-9])(:[0-5][0-9])?$" class="inputs time">
                </tr>
                
                <tr>
                    <td>
                        
                        <select  class="select" id="cars" name="cartype">
                            <option value="Vehicle">Choosing Vehicle</option>
                             <option value="economy">Economy Class</option>
                             <option value="standard">Standard Class</option>
                             <option value="business">Business Class</option>
                         </select>
                    </td>
                
                    
                </tr>
                
    
            </table>
            <button id="submit">Check Availbility</button>
    
            </form>

        </div>
    </div>
           
    </div>
</body>
</html>