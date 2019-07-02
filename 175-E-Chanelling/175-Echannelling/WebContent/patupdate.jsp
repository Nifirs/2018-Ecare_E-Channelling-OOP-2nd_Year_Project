<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Patient Update</title>
</head>
<body>

<% 

		if(session.getAttribute("uname")==null )
		{
			
			response.sendRedirect("Frontpage.jsp");
		}

%>






<h2 style="background-color:#5AFA9A">Update details</h2>

<br/><br/><br/>


	<form action="patupdateservlet" method="post" style="background-color:#6FEED7" >
		<table align="center">
		
		<tr>
		<td>Name</td>
		<td>${uname}</td><td><input type="hidden"   tabindex="1" name="name" value="${uname }"  style="background:white; width:310px;height:25px;border: 1px #c2c4c6;font-size:14px;padding-left:8px;border-bottom-style: solid;border-top: transparent;border-left: transparent;border-right: transparent"/></td>
		</tr>
		
		<tr>
		<td>Password</td>
		<td>${pass}</td><td><input type="hidden"   tabindex="2" name="pass" value="${pass }"  style="background:white; width:310px;height:25px;border: 1px #c2c4c6;font-size:14px;padding-left:8px;border-bottom-style: solid;border-top: transparent;border-left: transparent;border-right: transparent"/></td>
		</tr>
		
		<tr>
		<td>Email</td><td><input type="text"  tabindex="3" name="email" value="${email }"  style="background:white; width:310px;height:25px;border: 1px #c2c4c6;font-size:14px;padding-left:8px;border-bottom-style: solid;border-top: transparent;border-left: transparent;border-right: transparent"/></td>
		</tr>
		
		<tr>
		<td>Contact Number</td><td><input type="text"  tabindex="4" name="contact" value="${contact }"  style="background:white; width:310px;height:25px;border: 1px #c2c4c6;font-size:14px;padding-left:8px;border-bottom-style: solid;border-top: transparent;border-left: transparent;border-right: transparent"/></td>
		</tr>
		<tr>
		<td>Date of Birth</td><td><input type="text"  tabindex="5" name="bday" value="${dob }"  style="background:white; width:310px;height:25px;border: 1px #c2c4c6;font-size:14px;padding-left:8px;border-bottom-style: solid;border-top: transparent;border-left: transparent;border-right: transparent"/></td>
		</tr>
		<tr>
		<td>Gender</td><td><input type="text"  tabindex="6" name="gender" value="${gender }"  style="background:white; width:310px;height:25px;border: 1px #c2c4c6;font-size:14px;padding-left:8px;border-bottom-style: solid;border-top: transparent;border-left: transparent;border-right: transparent"/></td>
		</tr>
		<tr>
		<td>Age</td><td><input type="text"  tabindex="7" name="age" value="${age }"  style="background:white; width:310px;height:25px;border: 1px #c2c4c6;font-size:14px;padding-left:8px;border-bottom-style: solid;border-top: transparent;border-left: transparent;border-right: transparent"/></td>
		</tr>
		<tr>
		<td>Marital Status</td><td><input type="text"  tabindex="8" name="ms" value="${marital }"  style="background:white; width:310px;height:25px;border: 1px #c2c4c6;font-size:14px;padding-left:8px;border-bottom-style: solid;border-top: transparent;border-left: transparent;border-right: transparent"/></td>
		</tr>
		<tr>
		<td>Address</td><td><input type="text"  tabindex="9" name="address" value="${address }"  style="background:white; width:310px;height:25px;border: 1px #c2c4c6;font-size:14px;padding-left:8px;border-bottom-style: solid;border-top: transparent;border-left: transparent;border-right: transparent"/></td>
		</tr>
		<tr>
		<td>Department Number</td><td><input type="text"  tabindex="10" name="deptid" value="${depid }"  style="background:white; width:310px;height:25px;border: 1px #c2c4c6;font-size:14px;padding-left:8px;border-bottom-style: solid;border-top: transparent;border-left: transparent;border-right: transparent"/></td>
		</tr>
		
		
		<tr>
		<td>               
		<input type="submit" value="Update Patient" id="next"  style="background:black;width: 160px;height:30px ;color:white;cursor:pointer ">		
		</td>
		</tr>
		
		</table>
	
	
	
	
	
	
	
	</form>
</body>
</html>