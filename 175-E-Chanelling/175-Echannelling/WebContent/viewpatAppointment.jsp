<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "ecare";
String userid = "nifi";
String password = "nifi123";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP List Appointment Records</title>
<jsp:include page="header.jsp"/>

</head>
<body>

<% 

		if(session.getAttribute("uname")==null )
		{
			
			response.sendRedirect("Frontpage.jsp");
		}

%>




<nav style="background:black;height:30px;font-size:22px">
	
		<a href="Mainhome.jsp" style="text-decoration:none;padding:10px 20px;color:white" >Home</a>
		<a href="viewpatientprofile.jsp" style="text-decoration:none;padding:10px 20px;color:white">View My Profile</a>
		<a href="viewdocdetails.jsp" style="text-decoration:none;padding:10px 20px;color:white">View Doctors</a>
		
	
		<a href="bookappointment.jsp" style="text-decoration:none;padding:10px 20px;color:white">Book Appointments</a>
		<a href="feed.jsp" style="text-decoration:none;padding:10px 20px;color:white">Feedback</a>
		
		<a href="about.jsp" style="text-decoration:none;padding:10px 20px;color:white">About Us </a>
		<a href="contact.jsp"style="text-decoration:none;padding:10px 20px;color:white">Contact Us </a>
		<a href="Frontpage.jsp"style="text-decoration:none;padding:10px 20px;color:white">Login or Register here</a>


	</nav>
	
    <div align="center" style="background-color:#E38FEF">
        <table border="1" cellpadding="5" style="background-color:#4EEDEE;font-size:15px">
            <caption><h2>List of Appointments</h2></caption>
            <tr>
                <th>Appointment ID</th>
                <th>Patient ID</th>
                <th>Patient Name</th>
                <th>Doctor ID</th>
                <th>Doctor's Name</th>               
                <th>Consultant Fees</th>
                <th>Appointment Time</th>
                <th>Appointment Date</th>
                      
            </tr>
            <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from table_appointment";
resultSet = statement.executeQuery(sql);
int i=0;
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("app_ID") %></td>
<td><%=resultSet.getString("pid") %></td>
<td><%=resultSet.getString("pname") %></td>
<td><%=resultSet.getString("did") %></td>
<td><%=resultSet.getString("docname") %></td>
<td><%=resultSet.getString("consul_fee") %></td>
<td><%=resultSet.getString("app_time") %></td>
<td><%=resultSet.getString("app_date") %></td>




</tr>
<%
i++;
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
        
       
</table>
</div>
    
    
		

</body>
</html>