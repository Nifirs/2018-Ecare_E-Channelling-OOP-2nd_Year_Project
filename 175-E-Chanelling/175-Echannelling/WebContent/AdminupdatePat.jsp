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
String sql ="select * from table_patient where pid="+id;
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





<h4>Update Patient data from database in jsp</h4>

<form method="post" action="AdminupdatePatprocess.jsp" style="background-color:#57E0B0;width:40%">
Patient ID:
<%=resultSet.getString("pid") %><input type="hidden" name="pid" value="<%=resultSet.getString("pid") %>">


<br/><br/>
<br>

Patient Name:<br>
<input type="text" name="pname" value="<%=resultSet.getString("pname") %>">
<br><br/>
E-mail:<br>
<input type="text" name="email" value="<%=resultSet.getString("email") %>">
<br><br/>
Password:<br>
<input type="text" name="password" value="<%=resultSet.getString("password") %>">
<br><br><br/>

Phone Number:<br>
<input type="text" name="phone" value="<%=resultSet.getString("phone") %>">
<br><br><br/>

Date of Birth:<br>
<input type="text" name="pdob" value="<%=resultSet.getString("pdob") %>">
<br><br><br/>

Gender:<br>
<input type="text" name="gender" value="<%=resultSet.getString("gender") %>">
<br><br>

Age:<br>
<input type="text" name="age" value="<%=resultSet.getString("age") %>">
<br><br>

Marital Status:<br>
<input type="text" name="marital" value="<%=resultSet.getString("marital") %>">
<br><br>

Address:<br>
<input type="text" name="address" value="<%=resultSet.getString("address") %>">
<br><br>

Doctor ID:<br>
<input type="text" name="did" value="<%=resultSet.getString("did") %>">
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