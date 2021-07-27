<%-- 
    Document   : newreg
    Created on : Jun 6, 2019, 9:11:15 AM
    Author     : 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>New Registration</h1>
        <br>
        <form method="post"  action="./RegSubmit">
            <tr>
                <td>Name</td>
                <td><input type="text" name="t2" required autofocus 
                           placeholder="enetr name"/></td>
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
            
            <tr>
                <td>User type</td>
                <td><select name="t3">
                        <option>Faculty</option>
                        <option>Student</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Branch Department</td>
                <td><select type="t4">
                        <option>CSE</option>
                        <option>ME</option>
                        <option>EC</option>
                        <option>CIVIL</option>
                    
                    </select>
                </td>
                
            </tr>
            <tr>
                    <td></td>
                    <td><input type="submit" name=" b1" value ="Submit"/></td>
                </tr>
            
        </form>
        <table>
            
        </table>
    </body>
</html>
