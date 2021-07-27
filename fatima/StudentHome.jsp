<%-- 
    Document   : StudentHome
    Created on : Jun 7, 2019, 9:21:48 AM
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
        <jsp:include page="studentHeader.jspf"></jsp:include>
      <h2>Welcome Student :<%=session.getAttribute("name") %></h2>
    </body>
</html>
