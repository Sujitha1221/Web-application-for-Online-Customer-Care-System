<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel = "stylesheet" href = "css/faqStyle.css">
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Login</title>
</head>

<body>
<div class="mainscreen">
      <div class="card">
        <div class="leftside">
          <img
            src="images/login.jpg""
            class="product"
            alt="contactUs"
          />
        </div>
        <div class="rightside">
          <form action="AdminLogin" method="post">
            <h1>Admin Login</h1>
          Admin name : <input  type="text" name="uname" placeholder="Admin name" class = "inputbox" required=""><br><br>
          
          Password:<input  type="password" name="apwd" placeholder="Password" class = "inputbox" required=""><br><br>
          <div class="wthree-text">
          <div class="clear"> </div>
            <button type="submit"  value="Login" class="button">Login</button>
          </form>
        </div>
      </div>
    </div>
       
</body>
</html>