<%-- 
    Document   : studentProfile
    Created on : Jun 8, 2019, 9:02:34 AM
    Author     : BHAIJAAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
               <jsp:include page="studentHeader.jspf"></jsp:include>
               <table>       
    <tr>
                <td>Name</td>
                <td><input type="text" name="t2" required autofocus 
                           /></td>
            </tr>
            <tr>
                <td>Email</td>
                <td><input type="email" name="t1" required></td>
                
            </tr>
            <tr>
                <td>Password</td>
                <td><input  type="password" name="p1" required></td>
            </tr>
            <tr>
                <td>Confirm Password</td>
                <td><input type="password" name="p2" required></td>
            </tr>
            <tr>
                <td>Mobile</td>
                <td><input type="number" name="mob"></td>
            </tr>
            
            
                
            </tr>
            <tr>
                    <td></td>
                    <td><input type="submit" name=" b1" value ="Update"/></td>
                </tr>
            
</table> 
    </body>
</html>
