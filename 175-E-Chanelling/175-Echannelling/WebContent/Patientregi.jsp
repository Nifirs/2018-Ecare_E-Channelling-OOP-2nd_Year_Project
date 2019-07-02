<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

<link type="text/css" rel="stylesheet" href="new.css"/>
 <script> 
function validate()
{ 
var name = document.form1.name.value;
var pword = document.form1.pword.value;
var email = document.form1.email.value;
var contact = document.form1.contact.value; 
var bday = document.form1.bday.value;
var gender = document.form1.gender.value;
var age = document.form1.age.value;
var ms = document.form1.ms.value;
var address = document.form1.address.value;
var did = document.form1.did.value;


if (name==null || name=="")
{ 
alert("Full Name can't be blank"); 
return false; 
}
else if (email==null || email=="")
{ 
alert("Email can't be blank"); 
return false; 
}

else if((pword.length<6) || pword==null)
{ 
alert("Password must be at least 6 characters long."); 
return false; 
} 
else if (age==null || age=="")
{ 
alert("Age can't be blank"); 
return false; 
} 

else if (gender==null || gender=="")
{ 
alert("Gender can't be blank"); 
return false; 
} 
else if (did==null || did=="")
{ 
alert("Doctor's ID can't be blank"); 
return false; 
} 

else if (ms==null || ms=="")
{ 
alert("Marital Status can't be blank"); 
return false; 
} 

else if (bday==null || bday=="")
{ 
alert("Birthday can't be blank"); 
return false; 
} 

else if (contact==null || contact=="")
{ 
alert("Contact can't be blank"); 
return false; 
} 

else if (address==null || address=="")
{ 
alert("Address can't be blank"); 
return false; 
} 



}

</script>    

</head>

<body text="#f0ffff" background="hd.jpg">


<br/><br/>
<div align="right" class="form1">
    
    <form name="form1" method="post" action="patregiServlet"  onsubmit="return validate()" align="left" style="width: 32%;font-size15px ">
        
        <fieldset  >

            <legend style="color: white">Welcome to E-care Channeling official Web Page</legend><br/>
            <h3>Patient's Registration zone</h3><br/>Now you can be a Member<br/><br/>
            <font size="2px">   
            
            
            Enter Your Name<br/><input type="text" autofocus tabindex="0" name="name" placeholder="Enter Your Name"  style="background:white; width:310px;height:25px;border: 1px #c2c4c6;font-size:14px;padding-left:8px;border-bottom-style: solid;border-top: transparent;border-left: transparent;border-right: transparent"/><br/><br/>
            Enter E-mail Address<br/> <input type="email" tabindex="1" name="email" placeholder="Enter E-mail"  style="background:white ;width:310px;height:25px;border: 1px #c2c4c6;font-size:14px;padding-left:8px;border-bottom-style: solid;border-top: transparent;border-left: transparent;border-right: transparent"/><br/><br/>
            Enter Your Password<br/><input type="password" tabindex="2" name="pword" placeholder="Enter Password"  style="background:white; width:310px;height:25px;border:1px #c2c4c6;font-size:14px;padding-left:8px;border-bottom-style: solid;border-top: transparent;border-left: transparent;border-right: transparent"/><br/><br/>
            <br/>Contact Number<br/><input type="text" tabindex="3" name="contact" placeholder="Contact Number"  style="background:white; width:310px;height:25px;border:1px #c2c4c6;font-size:14px;padding-left:8px;border-bottom-style: solid;border-top: transparent;border-left: transparent;border-right: transparent; "/><br/><br/>
            <br/>Date of Birth<br/><input type="text" tabindex="4" name="bday" placeholder="Date of Birthday"  style="background:white; width:310px;height:25px;border:1px #c2c4c6;font-size:14px;padding-left:8px;border-bottom-style: solid;border-top: transparent;border-left: transparent;border-right: transparent; "/><br/><br/>
            <br/>Gender<br/><input type="text"  tabindex="5" name="gender" PLACEHOLDER="Male or Female" style="background:white; width:310px;height:25px;border:1px #c2c4c6;font-size:14px;padding-left:8px;border-bottom-style: solid;border-top: transparent;border-left: transparent;border-right: transparent; "/><br/><br/>
            Enter Age<br/><input type="text" tabindex="6" name="age" placeholder="Enter Age"  style="background:white; width:310px;height:25px;border:1px #c2c4c6;font-size:14px;padding-left:8px;border-bottom-style: solid;border-top: transparent;border-left: transparent;border-right: transparent"/><br/><br/>
            Enter Marital Status<br/><input type="text" tabindex="7" name="ms" placeholder="Enter Status"  style="background:white; width:310px;height:25px;border:1px #c2c4c6;font-size:14px;padding-left:8px;border-bottom-style: solid;border-top: transparent;border-left: transparent;border-right: transparent"/><br/><br/>
            Enter Address<br/><input type="text" tabindex="8" name="address" placeholder="Enter Address"  style="background:white; width:310px;height:25px;border:1px #c2c4c6;font-size:14px;padding-left:8px;border-bottom-style: solid;border-top: transparent;border-left: transparent;border-right: transparent"/><br/><br/>
            Enter Doctor's ID<br/><input type="text" tabindex="9" name="did" placeholder="Enter Doctor's ID"  style="background:white; width:310px;height:25px;border:1px #c2c4c6;font-size:14px;padding-left:8px;border-bottom-style: solid;border-top: transparent;border-left: transparent;border-right: transparent"/><br/><br/>
            
            	<tr>
				<td><%=(request.getAttribute("errMessage") == null) ? ""
					: request.getAttribute("errMessage")%></td>
				</tr>   	
               
                <br/><br/>
                <input type="reset"  value="RESET" id="reset"  style="background:darkseagreen;width: 90px;height:30px ;color:midnightblue ">
                <input type="submit"  value="REGISTER" id="next"  style="background:darkseagreen;width: 90px;height:30px ;color:midnightblue ">


                <br/><br/>

            </font>

        </fieldset>
    </form>
</div>




</body>
</html>