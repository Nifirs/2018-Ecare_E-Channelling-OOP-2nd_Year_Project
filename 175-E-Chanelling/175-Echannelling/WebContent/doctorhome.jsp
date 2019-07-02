<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<link rel="stylesheet" type="text/css" href="dochome.css"/>

<jsp:include page="header.jsp"/>

</head>
<body text=black background="3.jpg">
${msg}

<% 

		if(session.getAttribute("uname")==null )
		{
			
			response.sendRedirect("Doctorlogin.jsp");
		}

%>



	
	<nav style="background:black;height:30px;font-size:22px">
	
		<a href="Mainhome.jsp" style="text-decoration:none;padding:10px 20px;color:white" >Home</a>
		<a href="viewdocprofile.jsp" style="text-decoration:none;padding:10px 20px;color:white">View My Profile</a>
		
	
		<a href="viewdocAppointment.jsp" style="text-decoration:none;padding:10px 20px;color:white">Appointments</a>
		<a href="feed.jsp" style="text-decoration:none;padding:10px 20px;color:white">Feedback</a>
		
		<a href="about.jsp" style="text-decoration:none;padding:10px 20px;color:white">About Us </a>
		<a href="contact.jsp"style="text-decoration:none;padding:10px 20px;color:white">Contact Us </a>
		<a href="Frontpage.jsp"style="text-decoration:none;padding:10px 20px;color:white">Login or Register here</a>


	</nav>

	


<jsp:include page="footer.jsp"/>

</body>


</html>