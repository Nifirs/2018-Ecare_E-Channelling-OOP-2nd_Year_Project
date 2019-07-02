<!DOCTYPE html>
<html>

<head>


    
<title>Doctors' Registration</title>

<script> 
function validate()
{ 
var name = document.form.name.value;
var pword = document.form.pword.value;
var degree = document.form.degree.value;
var email = document.form.email.value;
var department = document.form.department.value;
var fees = document.form.fees.value;
var contact = document.form.contact.value; 
var bday = document.form.bday.value;
var gender = document.form.gender.value;
var age = document.form.age.value;
var ms = document.form.ms.value;
var address = document.form.address.value;
var deptid = document.form.deptid.value;


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
else if (degree==null || degree=="")
{ 
alert("Degree can't be blank"); 
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
else if (deptid==null || deptid=="")
{ 
alert("Department ID can't be blank"); 
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

else if (department==null || department=="")
{ 
alert("Department can't be blank"); 
return false; 
} 
else if (fees==null || fees=="")
{ 
alert("Fees can't be blank"); 
return false; 
} 

}

</script> 
</head>

<body text="#f0ffff" background="chchs.jpg">


<br/><br/>
<div align="right" class="form1">

    <form name="form" method="post" action="docregiServlet " align="left" style="width: 32%;font-size15px" onsubmit="return validate()">
        
        <fieldset  >

            <legend style="color: white">Welcome to E-care Channeling official Web Page</legend><br/>
            
            <h3>Doctor's Registration zone</h3><br/>Now you can be a Member<br/><br/>
            
            <font size="2px">
               
             
            	Enter Your Name<br/><input type="text" autofocus tabindex="1" name="name" placeholder="Enter Your Name"  style="background:white; width:310px;height:25px;border: 1px #c2c4c6;font-size:14px;padding-left:8px;border-bottom-style: solid;border-top: transparent;border-left: transparent;border-right: transparent"/><br/><br/>
                
                Enter Your Password<br/><input type="password" tabindex="2" name="pword" placeholder="Enter Password"  style="background:white; width:310px;height:25px;border:1px #c2c4c6;font-size:14px;padding-left:8px;border-bottom-style: solid;border-top: transparent;border-left: transparent;border-right: transparent"/><br/><br/>
                
                Enter Degree<br/><input type="text" tabindex="3" name="degree" placeholder="Enter Degree name"  style="background:white; width:310px;height:25px;border:1px #c2c4c6;font-size:14px;padding-left:8px;border-bottom-style: solid;border-top: transparent;border-left: transparent;border-right: transparent"/><br/><br/>
                
                Enter E-mail Address<br/> <input type="email" tabindex="4" name="email" placeholder="Enter E-mail"  style="background:white ;width:310px;height:25px;border: 1px #c2c4c6;font-size:14px;padding-left:8px;border-bottom-style: solid;border-top: transparent;border-left: transparent;border-right: transparent"/><br/><br/>
               
                Enter Department<br/> <input type="text" tabindex="5" name="department" placeholder="Enter Department"  style="background:white ;width:310px;height:25px;border: 1px #c2c4c6;font-size:14px;padding-left:8px;border-bottom-style: solid;border-top: transparent;border-left: transparent;border-right: transparent"/><br/><br/>
                
                Enter Fees<br/> <input type="text" tabindex="6" name="fees" placeholder="Enter Fees"  style="background:white ;width:310px;height:25px;border: 1px #c2c4c6;font-size:14px;padding-left:8px;border-bottom-style: solid;border-top: transparent;border-left: transparent;border-right: transparent"/><br/><br/>
                
               
                <br/>Enter Contact Number<br/><input type="text" tabindex="7" name="contact" placeholder="Contact Number"  style="background:white; width:310px;height:25px;border:1px #c2c4c6;font-size:14px;padding-left:8px;border-bottom-style: solid;border-top: transparent;border-left: transparent;border-right: transparent; "/><br/><br/>
                
                <br/>Enter Date of Birth<br/><input type="text" tabindex="8" name="bday" placeholder="Date of Birthday"  style="background:white; width:310px;height:25px;border:1px #c2c4c6;font-size:14px;padding-left:8px;border-bottom-style: solid;border-top: transparent;border-left: transparent;border-right: transparent; "/><br/><br/>
               
                <br/>Gender<br/><input type="text"  tabindex="9" name="gender" PLACEHOLDER="Male or Female" style="background:white; width:310px;height:25px;border:1px #c2c4c6;font-size:14px;padding-left:8px;border-bottom-style: solid;border-top: transparent;border-left: transparent;border-right: transparent; "/><br/><br/>
                 
                 Enter Age<br/><input type="text" tabindex="10" name="age" placeholder="Enter Age"  style="background:white; width:310px;height:25px;border:1px #c2c4c6;font-size:14px;padding-left:8px;border-bottom-style: solid;border-top: transparent;border-left: transparent;border-right: transparent"/><br/><br/>
                 
                 Enter Marital Status<br/><input type="text" tabindex="11" name="ms" placeholder="Enter Status"  style="background:white; width:310px;height:25px;border:1px #c2c4c6;font-size:14px;padding-left:8px;border-bottom-style: solid;border-top: transparent;border-left: transparent;border-right: transparent"/><br/><br/>
                 
                 Enter Address<br/><input type="text" tabindex="12" name="address" placeholder="Enter Address"  style="background:white; width:310px;height:25px;border:1px #c2c4c6;font-size:14px;padding-left:8px;border-bottom-style: solid;border-top: transparent;border-left: transparent;border-right: transparent"/><br/><br/>
                 
                 Enter Department Number<br/><input type="text" tabindex="13" name="deptid" placeholder="Enter department number"  style="background:white; width:310px;height:25px;border:1px #c2c4c6;font-size:14px;padding-left:8px;border-bottom-style: solid;border-top: transparent;border-left: transparent;border-right: transparent"/><br/><br/>
               	
               	<tr>
				<td><%=(request.getAttribute("errMessage") == null) ? ""
					: request.getAttribute("errMessage")%></td>
				</tr>
                <br/><br/>
               
                <input type="reset"  value="RESET" name="reset"  style="background:darkseagreen;width: 90px;height:30px ;color:midnightblue ">
                <input type="submit"  value="REGISTER" name="register"  style="background:darkseagreen;width: 90px;height:30px ;color:midnightblue ">
								

                <br/><br/>

            </font>

        </fieldset>
    </form>
</div>


</body>
</html>