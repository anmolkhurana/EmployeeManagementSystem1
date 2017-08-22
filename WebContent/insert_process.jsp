<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert_Process</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%

String Empid=request.getParameter("empid"); 
String Empname=request.getParameter("empname"); 
String Empcity=request.getParameter("empcity");
String Empdep = request.getParameter("empdep");
String Empsal = request.getParameter("empsal");

Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/database?useSSL=false","root","admin123");

Statement st= con.createStatement(); 
ResultSet rs; 

int i=st.executeUpdate("insert into employee values ('"+Empid+"','"+Empname+"','"+Empcity+"' , '"+Empdep+"','"+Empsal+"')"); 

String redirectURL= "registration.html";
response.sendRedirect(redirectURL);
 
%>

</body>
</html>