<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Customer login and registration</title>
    <link rel="stylesheet" href="customerstyle.css">
</head>
<body>
    <div class="container">
        <input  id="homepage" type="button" value="Homepage" onclick="location.href = 'index.jsp';">
        <div class="formbox">
            <p id="welcome">Welcome Users</p>
            <div class="button-box">
               
                <div id="btn"></div>
                <button type="button" class="toggle-btn" onclick="login()">Log In</button>
                <button type="button" class="toggle-btn" onclick="register()">Register</button>
            </div>
            <form method="post" id="login" class="input-group" action="createSession.jsp">

                <input type="text" class="input-field" placeholder="Id" name="customerId" value='<%if(session.getAttribute("customer_id") !=null)out.print(session.getAttribute("customer_id"));%>'  required>
                <br><br>
                <input type="text" class="input-field" name="pass" placeholder="Enter Password" required> <br><br><br><br>
                
                <button type="submit" class="submit-btn">Login</button><br><br>
                <input type="button" class="submit-btn" value="Forgot Password" onclick="location.href='forgotpassword.jsp';"> 
              <%
                    if(session.getAttribute("customer_id") !=null)
                         out.print(session.getAttribute("customer_id"));
                    else
                        out.println("Null Id ");
             
            
              %>
            
            </form>

            <form method="post" id="register" class="input-group"  action="registerprocess.jsp">
                <input type="text" name="username" class="input-field" placeholder="User Name" required>
                <input type="email" name="email" class="input-field" placeholder="Enter Email" required> 
                <input type="text" name="mobile" class="input-field" placeholder="Mobile" required> 
                <input type="text"  name="dob" class="input-field" placeholder="Date Of Birth" required> 
                <br><br>
               
                <input type="radio" id="male" name="gender" value="male">
                <label  id="gender" for="male">Male</label>
                <input type="radio" id="female" name="gender" value="female">
                <label id="gender"  for="female">Female</label>
                <input type="radio" id="other" name="gender" value="other">
                <label  id="gender"  for="other">Other</label> <br>
               
                <input type="text" class="input-field" name="password" placeholder="Create Password" required> 
                <input type="checkbox" class="check-box"><span>I agree to the terms conditions</span>
                <button type="submit" class="submit-btn">Register</button>
                
            </form>
        </div>
    </div>


    <script>
        var x=document.getElementById("login");
        var y=document.getElementById("register");
        var z=document.getElementById("btn");
        function register()
        {
            x.style.left="-400px";
            y.style.left="50px";
            z.style.left="110px";
        }
        function login()
        {
            x.style.left="50px";
            y.style.left="450px";
            z.style.left="0";
        }
       
    
    </script>
</body>
</html>