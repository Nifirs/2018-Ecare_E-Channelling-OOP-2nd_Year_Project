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
String sql ="select * from table_doctor where did="+id;
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

<h4>Update Doctor data from database in jsp</h4>

<form method="post" action="AdminupdateDocprocess.jsp" style="background-color:#57E0B0;width:40%">
Doctor ID:
<%=resultSet.getString("did") %><input type="hidden" name="did" value="<%=resultSet.getString("did") %>">


<br/><br/>
<br>

Doctor Name:<br>
<input type="text" name="dname" value="<%=resultSet.getString("dname") %>">
<br><br/>
E-mail:<br>
<input type="text" name="email" value="<%=resultSet.getString("email") %>">
<br><br/>
Password:<br>
<input type="text" name="password" value="<%=resultSet.getString("password") %>">
<br><br/>
Gender:<br>
<input type="text" name="gender" value="<%=resultSet.getString("gender") %>">
<br><br><br/>

Age:<br>
<input type="text" name="age" value="<%=resultSet.getString("age") %>">
<br><br><br/>

Doctor Fees:<br>
<input type="text" name="fees" value="<%=resultSet.getString("fees") %>">
<br><br><br/>

Department ID:<br>
<input type="text" name="depid" value="<%=resultSet.getString("depid") %>">
<br><br>

Department Name:<br>
<input type="text" name="depname" value="<%=resultSet.getString("depname") %>">
<br><br>

Degree:<br>
<input type="text" name="degree" value="<%=resultSet.getString("degree") %>">
<br><br>

Address:<br>
<input type="text" name="address" value="<%=resultSet.getString("address") %>">
<br><br>

Contact Number:<br>
<input type="text" name="contact" value="<%=resultSet.getString("contact") %>">
<br><br>

Marital Status:<br>
<input type="text" name="marital" value="<%=resultSet.getString("marital") %>">
<br><br>

Date of Birth:<br>
<input type="text" name="dob" value="<%=resultSet.getString("dob") %>">
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