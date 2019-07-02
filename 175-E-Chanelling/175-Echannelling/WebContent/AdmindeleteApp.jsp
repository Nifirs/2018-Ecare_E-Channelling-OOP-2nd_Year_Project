<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<html>

<head>

<jsp:include page="header.jsp"/>

</head>


<body background="IT-Admin.jpg">

<% 

		if(session.getAttribute("uname")==null )
		{
			
			response.sendRedirect("Frontpage.jsp");
		}

%>




	
	</body>
</html>

<%
String id=request.getParameter("id");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecare", "nifi", "nifi123");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM table_appointment WHERE app_ID="+id);

if(i>0) %>
<h3 style="background-color:#EEEC4E" >Data Deleted Successfully!</h3>

<%
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>

