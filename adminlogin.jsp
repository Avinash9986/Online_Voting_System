

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
        <link rel="stylesheet" href="style.css"/>
    </head>
     <%@include file="navbar.jsp" %>
    <body>
        <form action = "adminLogin"  method="post"> 
            <h3>Please Fill the Required Details</h3>
            <label for="adminName">Name</label>
            <br>
            <input name="adminName" id="adminName" type="text" > 
            <br>
            <label for="password">Password</label>
            <br>
            <input name="password" id="password" type="password" > 
            <br>
            <button type="submit">Login</button> 
        </form>
    </body>
</html>
