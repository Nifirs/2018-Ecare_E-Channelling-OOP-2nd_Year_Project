<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<jsp:include page="header.jsp"/>
${msg}
</head>

<body text=black background="3.jpg">


<% 

		if(session.getAttribute("uname")==null )
		{
			
			response.sendRedirect("Frontpage.jsp");
		}

%>

	
	<nav style="background:black;height:30px;font-size:20px">
	
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
        <table border="1" cellpadding="5" style="background-color:#4EEDEE">
            <caption><h2>List of Patients</h2></caption>
          
            
            <tr>
                <th>Doctor ID</th>
                <th>Doctor Name</th>
                <th>E-mail</th>
                <th>Password</th>
                <th>Gender</th>
                <th>Age</th>
                <th>Dept_ID</th>
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
        <th> ${depid}</th>
        <th> ${address}</th>
        <th> ${contact}</th>
        <th> ${marital}</th>
        <th> ${dob}</th>
                  
    </tr>
 
   	 
   	        
           
        </table>
    </div>
    
      
    
    
   		 <form method="post" action="patupdate.jsp">
   		 <input type="submit" value="View and Update Profile" style="background:black;width: 200px;height:30px ;color:white;cursor:pointer ">
		</form>


<jsp:include page="footer.jsp"/>

</body>


</html>