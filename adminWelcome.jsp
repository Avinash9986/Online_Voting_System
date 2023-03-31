<%-- 
    Document   : adminWelcome
    Created on : 29-Mar-2023, 11:29:26 am
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome Admin</title>
        <link rel="stylesheet" href="style.css"/>
    </head>
    <%@include file="adminnavbar.jsp" %>
    <body>
          <form> 
            <h2>Welcome Admin !</h2>
            <a href="Register.jsp">Register</a>
            <a href="checkResults.jsp">Check Results</a>
        </form>
    </body>
</html>
