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
        <form action = "vote"  method="post"> 
            <h3>Please Provide the required details</h3>
            <label for="vNumber">Voter Id</label>
            <br>
            <input name="vNumber" id="vNumber" type="number" required=""true> 
            <br>
            <label for="parties"> Choose a partie</label>
            <br>
            <select name="parties" id="parties" required="true">
                <option value="aap">AAP</option>
                <option value="bjp">BJP</option>
                <option value="bsp">BSP</option>
                <option value="cong">Congress</option>
                <option value="cpi">CPI</option>
            </select>
            <button type="submit">VOTE</button>
            <br>   
<!--            <a href="adminlogin.jsp"> Admin</a>-->
        </form>
    </body>
</html>
   