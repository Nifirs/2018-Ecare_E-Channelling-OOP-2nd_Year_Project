<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="header.jsp"/>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Success and View</title>
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
		<a href="docdetails.jsp" style="text-decoration:none;padding:10px 20px;color:white">View Doctors</a>
		
	
		<a href="bookappointment.jsp" style="text-decoration:none;padding:10px 20px;color:white">Book Appointments</a>
		<a href="feed.jsp" style="text-decoration:none;padding:10px 20px;color:white">Feedback</a>
		
		<a href="about.jsp" style="text-decoration:none;padding:10px 20px;color:white">About Us </a>
		<a href="contact.jsp"style="text-decoration:none;padding:10px 20px;color:white">Contact Us </a>
		<a href="Frontpage.jsp"style="text-decoration:none;padding:10px 20px;color:white">Login or Register here</a>


	</nav>





<h6>Your Appointment is successfully submitted !    </h6>

	<a style="text-decoration:none;background-color:#4EEDEE" href="viewpatAppointment.jsp">View Appointment List</a>

<img src="gudsub.jpg" style="width:100%">


<jsp:include page="footer1.jsp"/>

</body>
</html>