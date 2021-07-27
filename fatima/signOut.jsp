<%-- 
    Document   : signOut
    Created on : Jun 8, 2019, 9:03:42 AM
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
        <% 
            session.removeAttribute("email");
            session.removeAttribute("name");
            session.removeAttribute("branch");
            session.removeAttribute("utype");
            response.sendRedirect("index.html");
            %>
            
            
            
    </body>
</html>
