<%-- 
    Document   : Contact Us
    Created on : 26-Mar-2023, 12:47:38 pm
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>  Contact</title>
        <link rel="stylesheet" href="style.css"/>
        
    </head>
     <%@include file="navbar.jsp" %>

    <body>
        <form action = "contact"  method="post"> 
            <h3>Please Enter the Details</h3>
            <label for="UserName">Name</label>
            <br>
            <input name="UserName" id="UserName" type="text" > 
            <br>
            <label for="PhNumber">Phone Number</label>
            <br>
            <input name="PhNumber" id="phNumber " type="text" > 
            <br>
            <label for="Email">Email ID</label>
            <br>
            <input name="Email" id="Email" type="text" > 
            <br>
            <label for="comment">Comment</label>
            <br>
            <textarea  name="comment" id = "comment" type="text"></textarea>
            <br> 
            <button type="submit">SUBMIT</button>
            <br>
        </form>
    </body>
</html>
