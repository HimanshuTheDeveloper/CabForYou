<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Forgot Password</title>
</head>
<style>
    body{
        background:rgb(255, 172, 95);
    }
    .form{
        width:400px;
        padding:50px;
        background:pink;
        margin: 0 auto;
        text-align:center;
    }
    p{
    
	font-family:Times New Roman;
	color:black;
	font-size:20px;
    }
    input{
        width:250px;
        padding:5px;

    }
    #submit{
        width:100px;
        padding:4px;
        color:black;
        background:white;
        
    
        margin-right:15px;
        margin-top:10px;
    }
    #submit:hover
    {
        cursor: pointer;
        background:#4effc4;
        color:red;
    } 
    
</style>
<body>
    <h1>
        Cab For You...
    </h1>
    <div class="form">
      
        <form method="post" action="getdriverpassword.jsp">
            <p>
                Enter Cab Id
            </p>
            
            <input type="text" placeholder="Cab Id" name="cabid" required>
            <p>
                Enter Mobile Number 
            </p>
            <input type="mobile" placeholder="Your Mobile Number" name="mobile"  required><br><br>
            <button type="submit" id="submit">Submit</button>

        </form>
    </div>
    
</body>
</html>