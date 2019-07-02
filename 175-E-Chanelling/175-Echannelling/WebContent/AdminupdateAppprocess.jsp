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
String app_ID = request.getParameter("app_ID");
String pid=request.getParameter("pid");
String pname=request.getParameter("pname");
String did=request.getParameter("did");
String docname=request.getParameter("docname");
String consul_fee=request.getParameter("consul_fee");
String app_time=request.getParameter("app_time");
String app_date=request.getParameter("app_date");

if(app_ID != null)
{
Connection con = null;
PreparedStatement ps = null;
int ap_ID = Integer.parseInt(app_ID);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update table_appointment set app_ID=?,pid=?,pname=?,did=?,docname=?,consul_fee=?,app_time=?,app_date=? where app_ID="+app_ID;
ps = con.prepareStatement(sql);
ps.setString(1,app_ID);
ps.setString(2, pid);
ps.setString(3, pname);
ps.setString(4, did);
ps.setString(5, docname);
ps.setString(6, consul_fee);
ps.setString(7, app_time);
ps.setString(8, app_date);


int i = ps.executeUpdate();

if(i > 0)
{%>
<h3 style="background-color:#EEEC4E" >Appointment Record Updated Successfully</h3>
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



