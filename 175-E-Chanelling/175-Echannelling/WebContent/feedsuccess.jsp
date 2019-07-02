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









<h6>Your Feedback is successfully submitted  !   </h6>

	<a style="text-decoration:none;background-color:#4EEDEE" href="viewfeedpat.jsp">View Feeds</a>

<br/><br/>
<img src="feed11.jpg" style="width:100%">

<jsp:include page="footer1.jsp"/>

</body>
</html>