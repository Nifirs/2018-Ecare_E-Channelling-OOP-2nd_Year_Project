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
		
		
	<a href="Frontpage.jsp"style="text-decoration:none;padding:10px 20px;color:white">Login or Register here</a>
	<a href="patientviews.jsp"style="text-decoration:none;padding:10px 20px;color:white">View Patients</a>
	<a href="doctorviews.jsp"style="text-decoration:none;padding:10px 20px;color:white">View Doctors</a>
	<a href="viewappointments.jsp"style="text-decoration:none;padding:10px 20px;color:white">View Appointments</a>
	<a href="viewfeed.jsp"style="text-decoration:none;padding:10px 20px;color:white">View Feeds</a>


	</nav>
	
<form name="form"action="doctorviews.jsp"method="post" style="border:2px;background-color:#EE89EA">
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
                <th>Password</th>
                <th>Gender</th>
                <th>Age</th>
                <th>Fees</th>
                <th>Dept_ID</th>
                <th>Dept_Name</th>
                <th>Degree</th>
                <th>Address</th>
                <th>Contact</th>
                <th>Marital_St</th>
                <th>Date_of_B</th>
                          
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
	
	ResultSet res=stmt.executeQuery("select * from table_doctor");
	while(res.next())
	{
	%>
	<tr>
<td><%=res.getString("did") %></td>
<td><%=res.getString("dname") %></td>
<td><%=res.getString("email") %></td>
<td><%=res.getString("password") %></td>
<td><%=res.getString("gender") %></td>
<td><%=res.getString("age") %></td>
<td><%=res.getString("fees") %></td>
<td><%=res.getString("depid") %></td>
<td><%=res.getString("depname") %></td>
<td><%=res.getString("degree") %></td>
<td><%=res.getString("address") %></td>
<td><%=res.getString("contact") %></td>
<td><%=res.getString("marital") %></td>
<td><%=res.getString("dob") %></td>

<td><a href="AdmindeleteDoc.jsp?id=<%=res.getString("did") %>"><button type="button" class="delete" style="background:black;width: 90px;height:30px ;color:white;float:left">DELETE</button></a></td>
<td><a href="AdminupdateDoc.jsp?id=<%=res.getString("did")%>"><button type="button" class="update" style="background:black;width: 90px;height:30px ;color:white;float:left">UPDATE</button></a></td>


</tr>
	<%
	}
	%>
	</table>
	
	
	
	
	
<%	}

ResultSet res=stmt.executeQuery("select * from table_doctor where did='"+s2+"'");
while(res.next())
{
%>
<tr>
<td><%=res.getString("did") %></td>
<td><%=res.getString("dname") %></td>
<td><%=res.getString("email") %></td>
<td><%=res.getString("password") %></td>
<td><%=res.getString("gender") %></td>
<td><%=res.getString("age") %></td>
<td><%=res.getString("fees") %></td>
<td><%=res.getString("depid") %></td>
<td><%=res.getString("depname") %></td>
<td><%=res.getString("degree") %></td>
<td><%=res.getString("address") %></td>
<td><%=res.getString("contact") %></td>
<td><%=res.getString("marital") %></td>
<td><%=res.getString("dob") %></td>

<td><a href="AdmindeleteDoc.jsp?id=<%=res.getString("did") %>"><button type="button" class="delete" style="background:black;width: 90px;height:30px ;color:white;float:left">DELETE</button></a></td>
<td><a href="AdminupdateDoc.jsp?id=<%=res.getString("did")%>"><button type="button" class="update" style="background:black;width: 90px;height:30px ;color:white;float:left">UPDATE</button></a></td>


</tr>
<%
}
%>
</table>

</body>
</html>