<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Doctor ~My Profile</title>
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
		<a href="viewdocprofile.jsp" style="text-decoration:none;padding:10px 20px;color:white">View My Profile</a>
		
	
		<a href="viewdocAppointment.jsp" style="text-decoration:none;padding:10px 20px;color:white">Appointments</a>
		<a href="docfeed.jsp" style="text-decoration:none;padding:10px 20px;color:white">Feedback</a>
		
		<a href="about.jsp" style="text-decoration:none;padding:10px 20px;color:white">About Us </a>
		<a href="contact.jsp"style="text-decoration:none;padding:10px 20px;color:white">Contact Us </a>
		<a href="Frontpage.jsp"style="text-decoration:none;padding:10px 20px;color:white">Login or Register here</a>


	</nav>
   	 
   	 	 
   		  <div align="center" style="background-color:#E38FEF">
        	<table border="1" cellpadding="5" style="background-color:#0BF2A1;font-size:18px">
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
   	 
   	 
   	
   		 
   		 
   		<tr>
        <th>${did }</th>
        <th> ${uname}</th>
        <th> ${email}</th>
        <th> ${pass}</th>
        <th> ${gender}</th>
        <th> ${age}</th>
        <th> ${fees}</th>
        <th> ${depid}</th>
        <th> ${depname}</th>
        <th> ${degree}</th>
        <th> ${address}</th>
        <th> ${contact}</th>
        <th> ${marital}</th>
        <th> ${dob}</th>
                  
    </tr>
            
        </table>
    </div>
    
      
   
   		 <form method="post" action="docupdate.jsp">
   		 <input type="submit" value="View and Update Profile" style="background:black;width: 200px;height:30px ;color:white">
		</form>
</body>

</html>