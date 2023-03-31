<%-- 
    Document   : Register
    Created on : 29-Mar-2023, 12:36:09 pm
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
        <link rel="stylesheet" href="style.css? ver=1.1"/>
    </head>
    <%@include file="adminnavbar.jsp"%>
    <body>
       <form action = "register"  method="post"> 
            <h3>Please Enter the Details</h3>
            <label for="UserName">Name</label>
            <br>
            <input name="UserName" id="UserName" type="text" required="true" > 
            <br>
            <label for="PhNumber">Phone Number</label>
            <br>
            <input name="PhNumber" id="PhNumber " type="text"  required="true"> 
            <br>
            <label for="Email">Email ID</label>
            <br>
            <input name="Email" id="Email" type="text" required="true" > 
            <br>
            <label for="address">Address</label>
            <br>
            <textarea  name="address" id = "address" type="text" required="true"></textarea>
            <br> 
            <label for="vNumber">Voter Number</label>
            <br>
            <input  name="vNumber" id = "vNumber" type="text" required="true">
            <br> 
            <label for="date">Date of Birth</label>
            <br>
            <input  name="date" id = "date" type="date" required="true">
            <br> 
            <button type="submit">SUBMIT</button>
            <br>
        </form>
    </body>
</html>
