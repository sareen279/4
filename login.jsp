<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import = "java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String name = request.getParameter("name");
	String pass = request.getParameter("pass");
	Class.forName("com.mysql.jdbc.Driver");
	Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/4","root","");
	Statement s = c.createStatement();
	ResultSet r = s.executeQuery("select * from stud where name = '" + name + "' and pass = '" + pass + "'");
	if(r.next())
		System.out.println("Login successful");
	else
		System.out.println("Invalid login details");
%>
</body>
</html>