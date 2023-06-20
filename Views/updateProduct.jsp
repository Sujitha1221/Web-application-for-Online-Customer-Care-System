<%@page language="java"%>
<%@page import="java.sql.*"%>
<form method="post" action="ProductUpdServlet">
<table border="1">
<tr><th>Product id</th><th>Name</th><th>price</th><th>Description</th></tr>
<%
String id=request.getParameter("id");
try {
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/techx", "root", "Sujitha@1221");
String query = "select * from product where id='"+id+"'";
Statement st = conn.createStatement();
ResultSet rs = st.executeQuery(query);
while(rs.next()){
%>

<tr>
<td><input type="text" name="id" value="<%=rs.getString("id") %>"></td>
<td><input type="text" name="name" value="<%=rs.getString("name")%>"></td>
<td><input type="text" name="price" value="<%=rs.getString("price")%>"></td>
<td><input type="text" name="description" value="<%=rs.getString("description")%>"></td>
</tr>
<tr>
<td><input type="submit" name="Submit" value="Update" style="background-color:#49743D;font-weight:bold;color:#ffffff;"></td>
</tr>
<%
}
}
catch(Exception e){}
%>
</table>
</form>