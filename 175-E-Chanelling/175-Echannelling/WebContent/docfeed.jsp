<!DOCTYPE html>
<html>

<head>


    
<title>Feeds</title>

<script> 
function validate()
{ 
var service = document.form.service.value;
var nature = document.form.nature.value;
var feed = document.form.feed.value;
var location = document.form.location.value;


if (service==null || service=="")
{ 
alert("Service can't be blank"); 
return false; 
}
else if (nature==null || nature=="")
{ 
alert("Nature can't be blank"); 
return false; 
}
else if (feed==null || feed=="")
{ 
alert("Feed can't be blank"); 
return false; 
}
else if((location=="") || location==null)
{ 
alert("Location can't be blank"); 
return false; 
} 

}


</script> 
<jsp:include page="header.jsp"/>
</head>

<body text="#f0ffff" background="chchs.jpg">

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
	
<br/><br/>
<div align="right" class="form1">

    <form name="form" method="post" action="feedservlet " align="left" style="width: 32%;font-size15px" onsubmit="return validate()">
        
        <fieldset  >

            <legend style="color: white">Welcome to E-care Channeling official Web Page</legend><br/>
            
            <h3>Feedback your opinions</h3><br/>Now you can give a Feed<br/><br/>
            
            <font size="2px">
               
             
            	How is our Service considering our Staff [Doctor/Nurse/Attendant Name]<br/><br/><br/><input type="text" autofocus tabindex="1" name="service" placeholder="Service"  style="background:white; width:310px;height:25px;border: 1px #c2c4c6;font-size:14px;padding-left:8px;border-bottom-style: solid;border-top: transparent;border-left: transparent;border-right: transparent"/><br/><br/>
                
                How is the Person's nature<br/><select name="nature" placeholder="Select Nature"  style="background:white; width:310px;height:25px;border:1px #c2c4c6;font-size:14px;padding-left:8px;border-bottom-style: solid;border-top: transparent;border-left: transparent;border-right: transparent">
                								<option>Happy</option>		
                				                <option>Kind</option>		
                								<option>Annoying</option>		
                					            <option>Caring</option>		
                					
                	                			<option>Arrogant</option>		
                										
                										
                										
                							  </select><br/><br/>
                							  
                Feed<br/><select name="feed" placeholder="Give feeds"  style="background:white; width:310px;height:25px;border:1px #c2c4c6;font-size:14px;padding-left:8px;border-bottom-style: solid;border-top: transparent;border-left: transparent;border-right: transparent"><br/><br/>
                
                								<option>Good</option>		
                				                <option>Better</option>		
                								<option>Best</option>		
                					            <option>Need Improvement</option>		
                					
                	                			<option>Worse</option>
                
                
                			</select><br/><br/><br/>
                			
               Hospital Location<br/> <input type="text"  name="location" placeholder="Enter Location"  style="background:white ;width:310px;height:25px;border: 1px #c2c4c6;font-size:14px;padding-left:8px;border-bottom-style: solid;border-top: transparent;border-left: transparent;border-right: transparent"/><br/><br/>
               
            
               	
               	<tr>
				<td><%=(request.getAttribute("errMessage") == null) ? ""
					: request.getAttribute("errMessage")%></td>
				</tr>
                <br/><br/>
               
                <input type="reset"  value="RESET" name="reset"  style="background:darkseagreen;width: 90px;height:30px ;color:midnightblue ">
                <input type="submit"  value="FEED" name="register"  style="background:darkseagreen;width: 90px;height:30px ;color:midnightblue ">
								

                <br/><br/>

            </font>

        </fieldset>
    </form>
</div>


</body>
</html>