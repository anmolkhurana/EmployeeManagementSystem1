<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update_process</title>
</head>
<body>

<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<% 
	String Empid = request.getParameter("empid");
	String Field =request.getParameter("field");
	String Upd = request.getParameter("upd");
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/database?useSSL=false","root","admin123");
	
	Statement st = con.createStatement();
	ResultSet rs;
	
	if (Field.equals("empname"))
	{
		String upq = "update employee set ename ='"+Upd+"' where id=" + Empid;
		int i = st.executeUpdate(upq);
	}
	else if (Field.equals("empcity"))
	{
		String upq = "update employee set city ='"+Upd+"' where id=" + Empid;
		int i = st.executeUpdate(upq);
	}

	else
	{
		out.println("Error occured");
	}
	
	String redirectURL= "registration.html";
	response.sendRedirect(redirectURL);
	


%>
<a href="index.html">Home</a>



</body>
</html>