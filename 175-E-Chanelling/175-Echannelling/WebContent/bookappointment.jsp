<!DOCTYPE html>
<html>

<head>


    
<title>Appointment Booking</title>

<script> 
function validate()
{ 
var pname = document.form.pname.value;
var dname = document.form.dname.value;

var fees = document.form.fees.value;
var pid = document.form.pid.value; 
var did = document.form.did.value;
var time = document.form.time.value;
var date = document.form.date.value;



if (pname==null || pname=="")
{ 
alert("Patient Name can't be blank"); 
return false; 
}
else if (dname==null || dname=="")
{ 
alert("Doctor Name can't be blank"); 
return false; 
}
else if (pid==null || pid=="")
{ 
alert("PID can't be blank"); 
return false; 
}
 
else if (did==null || did=="")
{ 
alert("DID can't be blank"); 
return false; 
} 

else if (time==null || time=="")
{ 
alert("Time can't be blank"); 
return false; 
} 
else if (date==null || date=="")
{ 
alert("Date can't be blank"); 
return false; 
} 

}

</script> 
<jsp:include page="header.jsp"/>

</head>

<body  background="reeg.jpg">

<% 

		if(session.getAttribute("uname")==null )
		{
			
			response.sendRedirect("Frontpage.jsp");
		}

%>





<nav style="background:black;height:30px;font-size:22px">
	
		<a href="Mainhome.jsp" style="text-decoration:none;padding:10px 20px;color:white" >Home</a>
		<a href="viewpatientprofile.jsp" style="text-decoration:none;padding:10px 20px;color:white">View My Profile</a>
		<a href="viewdocdetails.jsp" style="text-decoration:none;padding:10px 20px;color:white">View Doctors</a>
		
	
		<a href="bookappointment.jsp" style="text-decoration:none;padding:10px 20px;color:white">Book Appointments</a>
		<a href="feed.jsp" style="text-decoration:none;padding:10px 20px;color:white">Feedback</a>
		
		<a href="about.jsp" style="text-decoration:none;padding:10px 20px;color:white">About Us </a>
		<a href="contact.jsp"style="text-decoration:none;padding:10px 20px;color:white">Contact Us </a>
		<a href="Frontpage.jsp"style="text-decoration:none;padding:10px 20px;color:white">Login or Register here</a>


	</nav>

<br/><br/>
<div align="right" class="form1">

    <form name="form" method="post" action="bookingservlet " align="left" style="width: 32%;font-size15px;color:white" onsubmit="return validate()">
        
        <fieldset  >

            <legend style="color: white">Welcome to E-care Channeling official Web Page</legend><br/>
            
            <h3>Appointment Booking</h3><br/>Now you can book your Appointment<br/><br/>
            
            <font size="2px">
               
             
                Enter Patient's ID<br/><input type="text" autofocus tabindex="1" name="pid" placeholder="Enter PID"  style="background:white; width:310px;height:25px;border:1px #c2c4c6;font-size:14px;padding-left:8px;border-bottom-style: solid;border-top: transparent;border-left: transparent;border-right: transparent"/><br/><br/>
             
             
            	Enter Patient's Name<br/><input type="text"  tabindex="2" name="pname" placeholder="Enter Your Name"  style="background:white; width:310px;height:25px;border: 1px #c2c4c6;font-size:14px;padding-left:8px;border-bottom-style: solid;border-top: transparent;border-left: transparent;border-right: transparent"/><br/><br/>
                
                
                
                Enter Doctor's ID<br/> <input type="text" tabindex="3" name="did" placeholder="Enter DID"  style="background:white ;width:310px;height:25px;border: 1px #c2c4c6;font-size:14px;padding-left:8px;border-bottom-style: solid;border-top: transparent;border-left: transparent;border-right: transparent"/><br/><br/>
               
                Enter Doctor's Name<br/> <input type="text" tabindex="4" name="dname" placeholder="Enter Doctor's name"  style="background:white ;width:310px;height:25px;border: 1px #c2c4c6;font-size:14px;padding-left:8px;border-bottom-style: solid;border-top: transparent;border-left: transparent;border-right: transparent"/><br/><br/>
                
                Enter Fees<br/> <input type="text" tabindex="5" name="fees" placeholder="Enter Fees"  style="background:white ;width:310px;height:25px;border: 1px #c2c4c6;font-size:14px;padding-left:8px;border-bottom-style: solid;border-top: transparent;border-left: transparent;border-right: transparent"/><br/><br/>
                
               
                <br/>Enter Appointment Time<br/><input type="text" tabindex="6" name="time" placeholder="APP time"  style="background:white; width:310px;height:25px;border:1px #c2c4c6;font-size:14px;padding-left:8px;border-bottom-style: solid;border-top: transparent;border-left: transparent;border-right: transparent; "/><br/><br/>
                
                <br/>Enter Appointment Date<br/><input type="text" tabindex="7" name="date" placeholder="APP date"  style="background:white; width:310px;height:25px;border:1px #c2c4c6;font-size:14px;padding-left:8px;border-bottom-style: solid;border-top: transparent;border-left: transparent;border-right: transparent; "/><br/><br/>
               
                
               	
               	<tr>
				<td><%=(request.getAttribute("errMessage") == null) ? ""
					: request.getAttribute("errMessage")%></td>
				</tr>
                <br/><br/>
               
                <input type="reset"  value="RESET" name="reset"  style="background:darkseagreen;width: 90px;height:30px ;color:midnightblue ">
                <input type="submit"  value="ALLOCATE" name="register"  style="background:darkseagreen;width: 90px;height:30px ;color:midnightblue ">
								

                <br/><br/>

            </font>

        </fieldset>
    </form>
</div>
<img src="online.jpg" width=100% height=10%>

</body>
</html>