<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
			
<jsp:include page="header.jsp"/>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="admin.css"/>

<title></title>
</head>
<body text=black background="ad.jpg">
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
			
			
			
	<jsp:include page="footer.jsp"/>
			
</body>
</html>