<%@page language="java"%>
<%@page import="java.sql.*"%>
<form method="post" action="updateInquiryServlet">
<table border="1">
<tr><th>User name</th><th>Email</th><th>Inquiry</th><th>Reply</th></tr>
<%
String id=request.getParameter("id");
try {
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/techx", "root", "Sujitha@1221");
String query = "select * from questionnaire where id='"+id+"'";
Statement st = conn.createStatement();
ResultSet rs = st.executeQuery(query);
while(rs.next()){
%>

<tr>
<input type="hidden" name="id" value="<%=rs.getString("id") %>">
<td><input type="text" name="name" value="<%=rs.getString("uname")%>">
<td><input type="email" name="email" value="<%=rs.getString("email")%>"></td>
<td><input type="text" name="inquiry" value="<%=rs.getString("inquiry")%>"></td>
<td><input type="text" name="reply" value="<%=rs.getString("reply")%>"></td>
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