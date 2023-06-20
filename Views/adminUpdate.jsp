<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import = "java.sql.*" %>
<%Class.forName("com.mysql.jdbc.Driver"); %>
<html>
<head>

<link rel = "stylesheet" href = "css/faqStyle.css">
<link rel = "stylesheet" href = "css/hs.css">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>TechX</title>
</head>
<body>
<div class = "mainscreen">


	<div class="header">
	
		
		<div class="logo_box"><img src="images/logo1.png"></div>
		

		<div class="nav_bar">
		<center>
		
				<div class="search"><i class="fa fa-search" aria-hidden="true"></i><input type="text" name="search" id="search"></div>

				<a href="index.jsp">Home</a>
				<a href="showAll.jsp">Reviews</a>
				<a href="showAllMsg.jsp">FAQs</a>
				<a href="Product.jsp">New Product</a>
				<a href="allProducts.jsp">All Products</a>
                <a href="adminUpdate.jsp"><%=session.getAttribute("uname") %></a>
                <a href="Show.jsp">All Users</a>
                 

			</center>


		</div>

		<div class="user_cart">
			
					<a href="#"><img src="images/shopping-cart .png"></a>
					<a href="logout"><img src="images/user.png"></a>
			

		
		<div class="clrfix"></div>

	</div>
	</div>
	<% 
	    //catch data
	    String uname = (String)session.getAttribute("uname");
	    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/techx", "root", "Sujitha@1221");
	    Statement st = con.createStatement();
	    ResultSet rs = st.executeQuery("SELECT * FROM admin WHERE uname= '"+uname+"'");
	
	%>

<div class = "mainscreen">
<br><br><br><br>
<div class = "card">
<div class = "leftside">
<img src = "images/Signup.jpg">

</div>

<div class = "rightside">

<form action="adminUpdateServlet" method="post">
<h1>Update Details</h1>

<%while(rs.next()){ %>
          User name : <input  type="text" name="name" placeholder="User name" class = "inputbox" value = <%=uname %>><br><br>
          First name : <input  type="text" name="f_name" placeholder="First name" class = "inputbox" required="" value = <%=rs.getString(4) %>><br><br>
          Last name : <input  type="text" name="l_name" placeholder="Last name" class = "inputbox" required="" value = <%=rs.getString(5) %>><br><br>
          E-mail:<input  type="email" name="email" placeholder="Email" class = "inputbox" required value = <%=rs.getString(6) %>><br><br>
          Password:<input  type="password" name="pass" placeholder="Password" class = "inputbox"pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{5,10}" required value = <%=rs.getString(3) %>><br><br>
          Re-enter password:<input  type="password" name="re_pass" placeholder="Confirm Password" class = "inputbox" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{5,10}"required value = <%=rs.getString(3) %>><br><br>
          Mobile Number:<input type="text" name="contact" placeholder="Contact" class = "inputbox" pattern="[0-9]{10}" required value = <%=rs.getString(7) %>><br><br>
          address:<input type="text" name="address" placeholder="address" class = "inputbox" value=<%=rs.getString(8) %> required><br><br>
          Qualification<input type="text"  placeholder="qualification" name="qualification" required class = "inputbox" value=<%=rs.getString(9) %>>
          <%} %>
          <div class="wthree-text">
            
            <div class="clear"> </div>
          </div>
          <input type="submit" value="Update" class = "button"><br><br>
        </form>
        <form action="adminDeleteServlet" method = "post">
     
        <input type="submit" value="Delete" class = "button"><br><br>
        </form>
        </div>
        </div>
        <br><br><br><br>
        </div>  
</body>
    <div class="footer">

	
        <div class="footer_sect_1">
            <div class="social">
                
                    <a href="#"><img src="images/facebook.png"></a>
                    <a href="#"><img src="images/twitter.png"></a>
                    <a href="#"><img src="images/instagram.png"></a>
                
            </div> 
            
            
            <h3>Company</h3>
            
            <ul>
    
                <li><a href="#">About Us</a></li>
                <li><a href="#">Services</a></li>
                <li><a href="#">Privacy Policy</a></li>
    
    
            </ul>
        
            
        </div>
            
    </div>


</html>