<%-- 
    Document   : TeacherHome
    Created on : Jun 7, 2019, 9:21:32 AM
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
        <jsp:include page="teacherHeader.jspf"/>
        <h2>Welcome Teacher:<%=session.getAttribute("name") %></h2>
    </body>
</html>
