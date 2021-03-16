<%@ 
		page language="java" contentType="text/html; charset=ISO-8859-1"
    	pageEncoding="ISO-8859-1"
    %>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Accessing JDBC in JSP</title>
<style> 
p{text-align: center;
</style>
</head>
<body>
		<%
			Class.forName("com.mysql.jdbc.Driver");
			Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3307/firstspring","root","root");
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select* from students where id=105;");
			rs.next();
		%>
		
	<p>	ID : <font color="violet"><%=rs.getString(1) %></font><br>
		Name : <font color="indigo"><%=rs.getString(2) %></font><br>
		Marks : <font color="blue"><%=rs.getString(3)%></font><br>
		Age : <font color="green"><%=rs.getString(4)%></font>
   </p>
</body>
</html>