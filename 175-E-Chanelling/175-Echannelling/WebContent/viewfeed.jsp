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
<title>JSP List Feed Records</title>
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
		
		
	<a href="Frontpage.jsp"style="text-decoration:none;padding:10px 20px;color:white">Login or Register here</a>
	<a href="patientviews.jsp"style="text-decoration:none;padding:10px 20px;color:white">View Patients</a>
	<a href="doctorviews.jsp"style="text-decoration:none;padding:10px 20px;color:white">View Doctors</a>
	<a href="viewappointments.jsp"style="text-decoration:none;padding:10px 20px;color:white">View Appointments</a>
	<a href="viewfeed.jsp"style="text-decoration:none;padding:10px 20px;color:white">View Feeds</a>


	</nav>
    <div align="center" style="background-color:#E38FEF">
        <table border="1" cellpadding="5" style="background-color:#4EEDEE;font-size:15px">
            <caption><h2>List of Feeds</h2></caption>
            <tr>
                <th>Feed ID</th>
                <th>Service</th>
                <th>Nature of the Person</th>
                <th>Feed</th>
                <th>Location</th>
               
                          
            </tr>
             <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from feedback";
resultSet = statement.executeQuery(sql);
int i=0;
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("feedid") %></td>
<td><%=resultSet.getString("service") %></td>
<td><%=resultSet.getString("Person_nature") %></td>
<td><%=resultSet.getString("feed") %></td>
<td><%=resultSet.getString("hos_lacation") %></td>


<td><a href="AdmindeleteFeed.jsp?id=<%=resultSet.getString("feedid") %>"><button type="button" class="delete" style="background:black;width: 90px;height:30px ;color:white;float:left">DELETE</button></a></td>


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