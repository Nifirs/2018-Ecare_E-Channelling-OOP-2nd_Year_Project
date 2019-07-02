<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>


</head>


<body text="black" background="care.jpg">
${msg}


<br/><br/>
<div  class="form1" >
    <form method="post" action="patientlogin" name="log"  style="width: 32%;height: 800px " >
        <fieldset  style="border: solid ;background-color: #52C6C5;height: 600px;"  >

            <legend style="color: black"><b>Welcome to the E-care Channeling </b></legend><br/>
            <h3>Patient's zone</h3><br/>
            <h3>Please Login here</h3><br/><br/>
            <font size="2px">

                <b>Enter Username</b><br/><input type="text" tabindex="0" name="uname" autofocus placeholder="Enter Username" autocomplete="off" style="background:transparent; width:310px;height:25px;border:1px #c2c4c6;font-size:14px;padding-left:8px;border-bottom-style: solid;border-top: transparent;border-left: transparent;border-right: transparent"/><br/><br/>
                <b>Enter Your Password</b><br/><input type="password" tabindex="1" name="pass" placeholder="Enter Password"  autocomplete="off" style="background:transparent; width:310px;height:25px;border:1px #c2c4c6;font-size:14px;padding-left:8px;border-bottom-style: solid;border-top: transparent;border-left: transparent;border-right: transparent"/><br/><br/>
                <div style="font-size:13px; color:#cc0000; margin-top:10px"></div>

                <input type="submit" value="Login" id="next"  style="background:black;width: 90px;height:30px ;color:white ">
                <input type="reset"  value="Reset" id="reset"  style="background:black;width: 90px;height:30px ;color:white ">
                <br/><br/>

            </font>
            <a  style="text-decoration: none" href="Patientregi.jsp">If You are a New Customer Register here</a>
        </fieldset>
    </form>

</div>




</body>

</html>