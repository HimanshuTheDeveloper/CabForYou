<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Driver login and registration</title>
    <link rel="stylesheet" href="driverstyle.css">
</head>
<body>
    <div class="container">
        <input  id="homepage" type="button" value="Homepage" onclick="location.href = 'index.jsp';">
        <div class="formbox">
            <p id="welcome">Welcome Driver</p>
            <div class="button-box">
                <div id="btn"></div>
                <button type="button" class="toggle-btn" onclick="login()">Log In</button>
                <button type="button" class="toggle-btn" onclick="register()">Register</button>
            </div>
            <form id="login" class="input-group" action="driverSession.jsp">
                <input type="text" name="cabid" class="input-field" placeholder="Cab Id" value='<%if(session.getAttribute("cabid") !=null)out.print(session.getAttribute("cabid"));%>' required><br><br>
                <input type="text"  name="password" class="input-field" placeholder="Enter Password" required> <br><br><br><br>
               
                <button type="submit" class="submit-btn">Login</button><br><br>
                <input type="button" class="submit-btn" value="Forgot Password" onclick="location.href='forgotdriverpassword.jsp';"> 
            </form>

            <form id="register" metod="post" class="input-group" action="driverregister.jsp">
                <input type="text" name="cabid" class="input-field" placeholder="Cab Id" required>
                <input type="text" name="name" class="input-field" placeholder="Name" required> 
                <input type="text" name="mobile" class="input-field" placeholder="Mobile Number" required> 
                <input type="text" name="dob" class="input-field" placeholder="Date Of Birth" required> <br><br>

                <input type="radio" id="male" name="gender" value="male">
                <label  id="gender" for="male">Male</label>
                <input type="radio" id="female" name="gender" value="female">
                <label id="gender"  for="female"> Female</label>
                <input type="radio" id="other" name="gender" value="other">
                <label  id="gender"  for="other"> Other</label> <br><br>

                <input type="text" name="password" class="input-field" placeholder="Create Password" required> 

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