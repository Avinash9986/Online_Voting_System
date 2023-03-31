<%-- 
    Document   : index
    Created on : 25-Mar-2023, 8:45:38 pm
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>online Voting System </title>
        <link rel="stylesheet" href="style.css?ver=1.1"/>
    </head>
    <%@include file="navbar.jsp" %>
    <body>
        <form action ="Voterlogin" method="post"> 
            <h3>Enter Voter Id: </h3>
            <label for="vNumber">Voter Id</label>
            <br>
            <input name="vNumber" id="vNumber" type="number" > 
            <br>
            <button type="submit">SUBMIT</button>
            <br>   
            <a href="adminlogin.jsp"> Admin</a>
        </form>
    </body>
</html>
