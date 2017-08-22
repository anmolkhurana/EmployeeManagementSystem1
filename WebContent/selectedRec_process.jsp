<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>selectedRec_process</title>
</head>
<body>
<%@ page import = "java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%
	String Empid=request.getParameter("empid");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/database?useSSL=false","root","admin123");
	
	Statement st= con.createStatement();
	ResultSet rs;
	
	String selq = "Select * from employee where id="+Empid;
	rs=st.executeQuery(selq);
	
	out.println("<html><head><title>Reading All Rows</title></head><center><body bgcolor=launder><table border=10><tr>"+
			"<td>EMPID</td><td>EMPNAME</td><td>EMPCITY</td><td>EMPDEPARTMENT</td><td>EMPSALARY</td></tr>");
			while(rs.next())
			{
				out.print("<tr><td>"+rs.getInt("id")+"</td>");
				out.print("<td>"+rs.getString("ename")+"</td>");
				out.print("<td>"+rs.getString("city")+"</td>");
				out.print("<td>"+rs.getString("dep")+"</td>");
				out.print("<td>"+rs.getString("sal")+"</td></tr>");
				
			}
			out.println("</table></body></center></html>");
			con.close();
	
%>
<a href="index.html">Home</a>

</body>
</html>