<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("id");
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
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from table_appointment where app_ID="+id;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>

<head>

<jsp:include page="header.jsp"/>

</head>





<body>

<% 

		if(session.getAttribute("uname")==null )
		{
			
			response.sendRedirect("Frontpage.jsp");
		}

%>



<h4>Update Appointment data from database in jsp</h4>

<form  method="post" action="AdminupdateAppprocess.jsp" style="background-color:#57E0B0;width:40%">
Appointment ID:
<%=resultSet.getString("app_ID") %><input type="hidden" name="app_ID" value="<%=resultSet.getString("app_ID") %>">


<br/><br/>
<br>

Patient ID:<br>
<input type="text" name="pid" value="<%=resultSet.getString("pid") %>">
<br><br/>
Patient Name:<br>
<input type="text" name="pname" value="<%=resultSet.getString("pname") %>">
<br><br/>
Doctor ID:<br>
<input type="text" name="did" value="<%=resultSet.getString("did") %>">
<br><br/>
Doctor Name:<br>
<input type="text" name="docname" value="<%=resultSet.getString("docname") %>">
<br><br><br/>

Doctor Fees:<br>
<input type="text" name="consul_fee" value="<%=resultSet.getString("consul_fee") %>">
<br><br><br/>

Appointment Time:<br>
<input type="text" name="app_time" value="<%=resultSet.getString("app_time") %>">
<br><br><br/>

Appointment Date:<br>
<input type="text" name="app_date" value="<%=resultSet.getString("app_date") %>">
<br><br>


<input type="submit" value="UPDATE" style="background:black;width: 90px;height:30px ;color:white;float:left">
</form>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>