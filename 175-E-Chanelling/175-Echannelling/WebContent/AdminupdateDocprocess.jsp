<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<html>

<head>

<jsp:include page="header.jsp"/>

</head>





<body background="IT-Admin.jpg"></body>

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
</html>



<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/ecare";%>
<%!String user = "nifi";%>
<%!String psw = "nifi123";%>
<%
String did = request.getParameter("did");
String dname=request.getParameter("dname");
String email=request.getParameter("email");
String password=request.getParameter("password");
String gender=request.getParameter("gender");
String age=request.getParameter("age");
String fees=request.getParameter("fees");
String depid=request.getParameter("depid");
String depname=request.getParameter("depname");
String degree=request.getParameter("degree");
String address=request.getParameter("address");
String contact=request.getParameter("contact");
String marital=request.getParameter("marital");
String dob=request.getParameter("dob");



if(did != null)
{
Connection con = null;
PreparedStatement ps = null;
int ipid = Integer.parseInt(did);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update table_doctor set did=?,dname=?,email=?,password=?,gender=?,age=?,fees=?,depid=?,depname=?,degree=?,address=?,contact=?,marital=?,dob=? where did="+did;
ps = con.prepareStatement(sql);
ps.setString(1,did);
ps.setString(2, dname);
ps.setString(3, email);
ps.setString(4, password);
ps.setString(5, gender);
ps.setString(6, age);
ps.setString(7, fees);
ps.setString(8, depid);
ps.setString(9, depname);
ps.setString(10, degree);
ps.setString(11, address);

ps.setString(12, contact);
ps.setString(13, marital);
ps.setString(14, dob);


int i = ps.executeUpdate();

if(i > 0)
{%>
<h3 style="background-color:#EEEC4E" >Doctor Record Updated Successfully</h3>
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

<html>

<body background="IT-Admin.jpg"></body>

</html>
