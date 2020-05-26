<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Driver profile</title>
    <style>
    *{
        margin:0;
    }
.container{
            width:100%;
            background:teal;
            color:black;
            height:100vh;
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

#userimg{
            width:30%;
            height:350px;
            padding:1%;
            margin-left:50px;
        }

.content{
            width:50%;
            margin-right:10px;
            float:right;
            background:#ffffff;
            padding:2%;
            height:350px;
           
        }
        .input-field{
            margin-left:100px;
            width:60%;
            padding:10px;
            border-left:0;
            border-top:0;
            border-right:0;
            border-bottom:1px solid rgb(0, 0, 0);
            outline:none;
            background:transparent;
            
        }
        #header{
            background:rgb(255, 189, 45);
            text-align:center;
            font-size:26px;

        }
        



    </style>
</head>
<body>
    <%@page import="java.sql.*"%>
<%
    Connection con=null;
    Statement st=null;
    ResultSet rs=null;
    try
    {
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cabforyou","root","1234");
        st=con.createStatement();
        String query="select * from driver where cabid ="+session.getAttribute("cabid");
        rs=st.executeQuery(query);
        rs.next();
    }
    catch(Exception e)
    {
        out.print("error"+e.getMessage());
    }
    
%>

    <div class="container">
        <div class="list">
            <div class="logo">
                <img src="images/weblogo.png"></img>
            </div>
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="about.jsp">About</a></li>
                <li><a href="gallery.jsp">Gallery</a></li>
                <li><a href="contactus.jsp">Contact us</a></li>
                <li><a href="drivenow.jsp">Drive Now</a></li>
                <li  class="active"><a href="driverprofile.jsp">Driver Profile</a></li>
                <li><a href="logout.jsp">logged out</a></li>
                
                        
            </ul>
        </div>
        <br><br><br><br><br><br>
         <h1 id="header">Driver Profile</h1>
             <img id="userimg" src="images/userprofile.png">
             <div class="content">
                    <table  id="profile" name="profile">
                        <tr>
                            <td>  <p>Cab Id ::</p> </td>
                            <td><p id="customerId"><%out.print(session.getAttribute("cabid"));%></p></td>
                           
                        </tr>
                        <tr>
                            <td>  <p>Name ::</p> </td>
                            <td><p id="name"><%out.print(rs.getString("name"));%></p></td>
                        </tr>
                        <tr>
                            <td>  <p>Mobile ::</p> </td>
                            <td> <p id="mobile"><%out.print(rs.getString("mobile"));%></p></td>
                        </tr>
    
                        <tr>
                            <td>  <p>D.O.B ::</p> </td>
                            <td><p id="dob"><%out.print(rs.getString("dob"));%></p></td>
                        </tr>
                      
                        <tr>
                            <td>  <p>Gender ::</p> </td>
                            <td><p id="gender"><%out.print(rs.getString("gender"));%></p></td>
                        </tr>
                        <tr>
                            <td>  <p>Password ::</p> </td>
                            <td><p id="gender"><%out.print(rs.getString("password"));%></p></td>
                        </tr>
                        
                    </table>
                    <input type="button" id="edit" onclick="editableTrue();" value="Edit">  
                    <input type="hidden" id="submit" onclick="editProfile();" value= "Edit Profile">  
                    <h1 id="result"></h1>
                 
             </div>
        </div>
    </div>
</body>
<script>
    function editableTrue()
    {
        var tr = document.getElementsByTagName('tr');

        for(i = 0; i < tr.length; i++)
        {
            var data = tr[i].getElementsByTagName('td')[1].getElementsByTagName('p')[0];
            data.contentEditable = "true";
        }
        document.getElementById("edit").type = "hidden";
        document.getElementById("submit").type = "button";
    }
    function editProfile()
    {
        var name = document.getElementById("name").innerText;
        var mobile = document.getElementById("mobile").innerText;
        var customerId = document.getElementById("password").innerText;
        var dob = document.getElementById("dob").innerText;
        var email = document.getElementById("email").innerText;
        var gender = document.getElementById("gender").innerText;

        var param = "?name=" + name + "&mobile=" + mobile +  "&dob=" + dob + "&email=" + email + "&gender=" + gender + "&password=" +password ;
        param = param.replace("+", "%2b")
        param = param.replace("(", "%28")
        param = param.replace(")", "%29")
        console.log(param);


        var xmlhttp = new XMLHttpRequest();
        xmlhttp.open("POST", "editdriverprofile.jsp" + param, false);
        xmlhttp.onreadystatechange = function(){
            document.getElementById("result").innerText = xmlhttp.responseText.trim();
            if(xmlhttp.responseText.trim() == "Profile Updated")
            {
                setTimeout(function(){
                     location.reload(); 
                }, 2000);
            }
        }
        xmlhttp.send();
        


    }
</script>

</html>