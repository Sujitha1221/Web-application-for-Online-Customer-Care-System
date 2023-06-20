<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>All FAQs and replies</title>
<link rel="stylesheet" href="css/faqStyle.css">
<link rel="stylesheet" href="css/headFoot.css">
<script>
function editRecord(id){
    var f=document.form;
    f.method="post";
    f.action='updateInquiry.jsp?id='+id;
    f.submit();
}
function deleteRecord(id){
    var f=document.form;
    f.method="post";
    f.action='deleteInquiryServlet?id='+id;
    f.submit();
}
</script>
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
                <a href="Show.jsp">All Users</a>
              

			</center>
		</div>
		<div class="user_cart">
			<center>
					<a href="#"><img src="images/shopping-cart .png"></a>
					<a href="logout"><img src="images/user.png"></a>
			</center>
		<div class="clrfix"></div>

	</div>
	<br><br>

<form method="post" name="form">
<center>
<table border="1">
<h2>Customer Inquiries</h2><br>
<tr><th>FAQ Id</th><th>User name</th><th>Email</th><th>Inquiry</th><th>Reply</th></tr>
<%
Connection con = null;
String url = "jdbc:mysql://localhost:3306/";
String db = "techx";
String driver = "com.mysql.jdbc.Driver";
String userName ="root";
String password="Sujitha@1221";

int sumcount=0;
Statement st;
try{
Class.forName(driver).newInstance();
con = DriverManager.getConnection(url+db,userName,password);
String query = "select * from questionnaire";
st = con.createStatement();
ResultSet rs = st.executeQuery(query);
%>

<%
while(rs.next()){
%>
<tr><td><%=rs.getString(1)%></td>
<td><%=rs.getString(2)%></td>
<td><%=rs.getString(3)%></td>
<td><%=rs.getString(4)%></td>
<td><%=rs.getString(5)%></td>
<td><input type="button" name="edit" value="Edit" style="background-color:#49743D;font-weight:bold;color:#ffffff;" onclick="editRecord(<%=rs.getString(1)%>);" ></td>
<td><input type="button" name="delete" value="Delete" style="background-color:#ff0000;font-weight:bold;color:#ffffff;" onclick="deleteRecord(<%=rs.getString(1)%>);" ></td>
</tr>
<%
}
%>
<%
}
catch(Exception e){
e.printStackTrace();
}
%>

</table>
</center>
</form>
<br><br><br>
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
</body>
</html>