<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

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



	<nav style="background:black;height:30px;font-size:22px">
	
	<a href="Mainhome.jsp" style="text-decoration:none;padding:10px 20px;color:white" >Home</a>
		
		
	<a href="Frontpage.jsp"style="text-decoration:none;padding:10px 20px;color:white">Login or Register here</a>
	<a href="patientviews.jsp"style="text-decoration:none;padding:10px 20px;color:white">View Patients</a>
	<a href="doctorviews.jsp"style="text-decoration:none;padding:10px 20px;color:white">View Doctors</a>
	<a href="viewappointments.jsp"style="text-decoration:none;padding:10px 20px;color:white">View Appointments</a>
	<a href="viewfeed.jsp"style="text-decoration:none;padding:10px 20px;color:white">View Feeds</a>


	</nav>
	
	</body>
</html>


<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/ecare";%>
<%!String user = "nifi";%>
<%!String psw = "nifi123";%>
<%
String pid = request.getParameter("pid");
String pname=request.getParameter("pname");
String email=request.getParameter("email");
String password=request.getParameter("password");
String phone=request.getParameter("phone");
String pdob=request.getParameter("pdob");
String gender=request.getParameter("gender");
String age=request.getParameter("age");
String marital=request.getParameter("marital");
String address=request.getParameter("address");
String did=request.getParameter("did");



if(pid != null)
{
Connection con = null;
PreparedStatement ps = null;
int ipid = Integer.parseInt(pid);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update table_patient set pid=?,pname=?,email=?,password=?,phone=?,pdob=?,gender=?,age=?,marital=?,address=? where pid="+pid;
ps = con.prepareStatement(sql);
ps.setString(1,pid);
ps.setString(2, pname);
ps.setString(3, email);
ps.setString(4, password);
ps.setString(5, phone);
ps.setString(6, pdob);
ps.setString(7, gender);
ps.setString(8, age);
ps.setString(9, marital);
ps.setString(10, address);


int i = ps.executeUpdate();

if(i > 0)
{%>
<h3 style="background-color:#EEEC4E" >Patient Record Updated Successfully</h3>
<%}
else
{%>
<h3 style="background-color:#EEEC4E" >There is a problem in updating Record</h3>
<%} 
}
catch(SQLException sql) 
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>


