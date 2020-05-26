<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Approving ride</title>

    <style>
        *{
            margin:0px;
        }
        .container
        {
            width:100%;
            background:yellow;


        }
        .header{
            width:100%;
            background:pink;
        }
        .header img{
            width:80px;
            height:80px;
            top:10px;
            left:10px;
            position:absolute;
        }
        #head
        {
            color:red;
            font-family:arial;
            font-size:36px;
            margin-left:41%;
           
        }
        #head2
        {
            color:rgb(0, 0, 0);
            font-family:arial;
            font-size:30px;
            float:right;
            margin-right:15px;
           
        }
        th
        {
            background:blue;
            color:white;
        }
        td
        {
            text-align: center;
            background:white;
        }
        td p
        {
            padding: 2px;
            background-color: rgba(34, 158, 34, 0.384);
            color: green;
            border-radius: 10px;
        }
        td p:hover
        {
            cursor: pointer;
        }
        #aprovalForm
        {
            height: 400px;
            display: none;
            width: 600px;
            background-color: rgb(43, 255, 156);
            position: absolute;
            left: 50%;
            top: 50%;
            transform: translate(-50%, -50%);
            text-align:center;
        }
        #aprovalForm input, #aprovalForm p
        {
            margin: 0 auto;
        }
        #homepage
        {
            width:100px;
            padding:4px;
            color:black;
            background:none;
            border-radius:10px;
            float:right;
            margin-right:15px;
            margin-top:10px;

        }
        #homepage:hover
        {
            cursor: pointer;
            background:#05d18d;
            color:red;
            
        }
        #submit
        {
            width:100px;
            padding:4px;
            color:black;
            background:pink;
            border-radius:10px;
            margin-right:15px;
            margin-top:10px;
            
        }
        #echofare{
            background:white;
            width:100px;
            border:1px solid black;
            padding:5px;
        }
           
    </style>
            

    

</head>
<body>
    <div class="container">
        
        <div class="header">
            <img src="images/weblogo.png">
            <input  id="homepage" type="button" value="Homepage" onclick="location.href = 'index.jsp';">
            <br><br>
            
            <p id="head">BOOKING RIDE</p>
            <p id="head2">Welcome ${name}</p>
            <br><br><br>
            
        </div>
    <table style="width: 100%;">
        <tr>
         <th>Ride Id</th>
         <th>Source</th>
         <th>Destination</th>
         <th>Date</th>
         <th>Time</th>
         <th>Car Type</th>
         <th>Status</th>
        </tr>
        <%@page import="java.sql.*"%>
         <%            
             Connection con=null;
             Statement st=null;
             ResultSet rs = null;
             try
             {
                 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cabforyou","root","1234");
                 st=con.createStatement();
                 String query="select ride_id, source, destination, date, time, cartype from ride_request where status = 'pending'";
                 rs = st.executeQuery(query);
                 while(rs.next())
                 {%>
                     <tr>
                         <td><%=rs.getInt("ride_id")%></td>
                         <td><%=rs.getString("source")%></td>
                         <td><%=rs.getString("destination")%></td>
                         <td><%=rs.getString("date")%></td>
                         <td><%=rs.getString("time")%></td>
                         <td><%=rs.getString("cartype")%></td>
                         <td><p onclick="formvisible(<%=rs.getInt("ride_id")%>, '<%=rs.getString("cartype")%>')">  &#10004;</p></td>
                         
                     </tr>
                 <%}
             }
             catch(Exception e)
             {
                 out.print("error"+e.getMessage());
             }
         %>
     </table>
     <form action="aproveRide.jsp" id="aprovalForm">
         <input type="hidden" name="fare">
         <input type="hidden" name="ride_id">
         <input type="hidden" id="cartype">
         <br><br>
         Details Send By Driver....<br><br>
         Distance (in KM)<br><br><input type="number" onkeyup="calculateFare(this.value)" name="distance">
         <br><br><br>
         Fare <br><p id="echofare">00</p>
         <br><br>
         <input id="submit" type="submit" value="SEND">
     </form>
    </div>
</body>
<script>
    function formvisible(ride_id, cartype)
    {
        document.getElementById('aprovalForm').style.display = "block";
        document.getElementsByName('ride_id')[0].value = ride_id;
        document.getElementById("cartype").value = cartype;
    }
    function calculateFare(distance)
    {
        var price;
        var cartype = document.getElementById("cartype").value;
        if(cartype == "economy")
        {
            price = 15 * distance;
        }
        else if(cartype == "standard")
        {
            price = 20 * distance;
        }
        else if(cartype == "business")
        {
            price = 25 * distance;
        }
        document.getElementsByName("fare")[0].value = price;
        document.getElementById("echofare").innerText = price;
    }


  

</script>
</html>
