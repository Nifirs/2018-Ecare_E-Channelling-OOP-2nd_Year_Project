<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page session="true" import="java.io.*"%>

<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>


<html>
<head>

<jsp:include page="header.jsp"/>


</head>


<body bgcolor="#d0d0d0">

<% 

		if(session.getAttribute("uname")==null )
		{
			
			response.sendRedirect("Frontpage.jsp");
		}

%>
     <nav style="background:black;height:30px;font-size:22px">
	
		<a href="Mainhome.jsp" style="text-decoration:none;padding:10px 20px;color:white" >Home</a>
		<a href="viewpatientprofile.jsp" style="text-decoration:none;padding:10px 20px;color:white">View My Profile</a>
		<a href="docdetails.jsp" style="text-decoration:none;padding:10px 20px;color:white">View Doctors</a>
		
	
		<a href="bookappointment.jsp" style="text-decoration:none;padding:10px 20px;color:white">Book Appointments</a>
		<a href="feed.jsp" style="text-decoration:none;padding:10px 20px;color:white">Feedback</a>
		
		<a href="about.jsp" style="text-decoration:none;padding:10px 20px;color:white">About Us </a>
		<a href="contact.jsp"style="text-decoration:none;padding:10px 20px;color:white">Contact Us </a>
		<a href="Frontpage.jsp"style="text-decoration:none;padding:10px 20px;color:white">Login or Register here</a>


	</nav>
	
<form name="form"action="searchdoctor.jsp"method="post" style="border:2px;background-color:#EE89EA">
<h2>Search Doctor</h2>

<table style="border:2px;background-color:#BEB0BE">
<tr><td>
<b>Enter the Doctor ID you want to Search:</b>
<input type="text"name="id" style="height:30px;width:300px;border-radius:5px"/>
<input type="submit"value="SEARCH" style="background:black;width: 100px;height:30px ;color:white;cursor:pointer;border-radius:10px "/>
<input type="reset"value="RESET" style="background:black;width: 100px;height:30px ;color:white;cursor:pointer;border-radius:10px "/>

<br/><br/>
</td></tr>
</table>
</form>



<div align="center" style="background-color:#E38FEF">
        <table border="1" cellpadding="5" style="background-color:#4EEDEE;font-size:15px">
           <caption><h2>List of Doctors</h2></caption>
            <tr>
            <th>Doctor ID</th>
            <th>Doctor Name</th>
            <th>E-mail</th>
            <th>Gender</th>
            <th>Fees</th>
            <th>Dept_ID</th>
            <th>Dept_Name</th>
            <th>Degree</th>
            <th>Address</th>
                         
            </tr>
<%
Connection con=null;
Statement stmt=null;
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ecare","nifi","nifi123");
stmt=con.createStatement();
String s2=request.getParameter("id");
%>
<%
if( s2=="" || s2==null){
	
	ResultSet res=stmt.executeQuery("select did,dname,email,gender,fees,depid,depname,degree,address from table_doctor");
	while(res.next())
	{
	%>
	<tr>
	<td><%=res.getString("did")%></td>
	<td><%=res.getString("dname")%></td>
	<td><%=res.getString("email")%></td>
	<td><%=res.getString("gender")%></td>
	<td><%=res.getString("fees")%></td>
	<td><%=res.getString("depid")%></td>
	<td><%=res.getString("depname")%></td>
	<td><%=res.getString("degree")%></td>
	<td><%=res.getString("address")%></td>




	</tr>
	<%
	}
	%>
	</table>
	
	
	
	
	
<%	}

ResultSet res=stmt.executeQuery("select did,dname,email,gender,fees,depid,depname,degree,address from table_doctor where did='"+s2+"'");
while(res.next())
{
%>
<tr>
<td><%=res.getString("did")%></td>
<td><%=res.getString("dname")%></td>
<td><%=res.getString("email")%></td>
<td><%=res.getString("gender")%></td>
<td><%=res.getString("fees")%></td>
<td><%=res.getString("depid")%></td>
<td><%=res.getString("depname")%></td>
<td><%=res.getString("degree")%></td>
<td><%=res.getString("address")%></td>




</tr>
<%
}
%>
</table>

</body>
</html>