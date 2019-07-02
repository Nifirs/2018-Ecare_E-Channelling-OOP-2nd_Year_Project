<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP List Users Records</title>
<jsp:include page="header.jsp"/>

</head>
<body>
    <sql:setDataSource
        var="myDS"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/ecare"
        user="nifi" password="nifi123"
    />
     
    <sql:query var="listUsers"   dataSource="${myDS}">
        SELECT did,dname,email,gender,fees,depid,depname,degree,address FROM table_doctor;
    </sql:query>
    

     
    <div align="center" style="background-color:#E38FEF">
        <table border="1" cellpadding="5" style="background-color:#4EEDEE">
            <caption><h2>List of Doctors</h2></caption>
            <tr>
                <th>Doctor ID</th>
                <th>Doctor Name</th>
                <th>E-mail</th>
                  <th>Gender</th>
                    <th>Fees</th>
                     <th>Dept_ID</th>
                      <th>Dept_Name</th>
                       <th>Degree</th>
                        <th>Address</th>
                          <!--  <th>Modification</th>
                			<th></th> -->
            </tr>
            <c:forEach var="user" items="${listUsers.rows}">
                <tr>
                    <td><c:out value="${user.did}" /></td>
                    <td><c:out value="${user.dname}" /></td>
                    <td><c:out value="${user.email}" /></td>
                    <td><c:out value="${user.gender}" /></td>
                    <td><c:out value="${user.fees}" /></td>
                    <td><c:out value="${user.depid}" /></td>
                    <td><c:out value="${user.depname}" /></td>
                    <td><c:out value="${user.degree}" /></td>
                    <td><c:out value="${user.address}" /></td>
                    
                  
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>