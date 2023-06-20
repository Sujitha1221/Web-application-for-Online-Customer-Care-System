<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Products</title>
<link rel="stylesheet" href="css/faqStyle.css">
<link rel="stylesheet" href="css/headFoot.css">
</head>
<body>
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
                 <a href="logout.jsp">Logout</a>

			</center>
		</div>
		<div class="user_cart">
			<center>
					<a href="#"><img src="images/shopping-cart .png"></a>
					<a href="#"><img src="images/user.png"></a>
			</center>
		<div class="clrfix"></div>

	</div>
	<br><br>
<div class="mainscreen">
    <!-- <img src="https://image.freepik.com/free-vector/purple-background-with-neon-frame_52683-34124.jpg"  class="bgimg " alt="">--> 
      <div class="card">
        <div class="leftside">
          <img
            src="images/cc.jpg"
            class="product"
            alt="Product"
          />
        </div>
        <div class="rightside">
          <form action="faqServlet" method="post">
            <h1>PRODUCT FORM</h1>
            <h2>Product details </h2>
            <p>product id</p>
            <input type="text" class="inputbox" name="id" id="id" required />
            <p>product name</p>
            <input type="text" class="inputbox" name="name" required />
            <p>price</p>
            <input type="text" class="inputbox" name="price" id="price"  min=1000, max= 100000 required />
            <p>description of product</p>
            <input type="text" class="inputbox" name="description" id="description" required />
            <p></p>
            <button type="submit" class="button">Submit</button>
          </form>
        </div>
      </div>
    </div>
    <div class="footer">
        <div class="footer_sect_1">
            <div class="social">
                <center>
                    <a href="#"><img src="images/facebook.png"></a>
                    <a href="#"><img src="images/twitter.png"></a>
                    <a href="#"><img src="images/instagram.png"></a>
                </center>
            </div> 
            <h3>Company</h3>
            <ul>
                <li><a href="#">About Us</a></li>
                <li><a href="#">Services</a></li>
                <li><a href="#">Privacy Policy</a></li>
            </ul>
        </div>
    </div>
    </div>
</body>
</html>