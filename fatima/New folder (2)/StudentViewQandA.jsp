<%-- 
    Document   : StudentViewQandA
    Created on : 8 Jun, 2019, 9:04:00 AM
    Author     : SHIMONI
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="dbutil.DBConnet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>   <jsp:include page="StudentHeader.jspf" />
         <h2>View Questions!!</h2>
        <%
            
            try{
            String email=session.getAttribute("email").toString();
            
            String sql="select * from question,reg where "
                    +"question.postbyemail=reg.email"
                    +" and postbyemail='"+email+"'";
            DBConnet x=new DBConnet();
            ResultSet rs=x.QueryReturner(sql);
            out.println("<table border=3 bordercolor=Blue>"+
                    "<tr>"
                    + "<td> <b>Question No. :</b></td>"
                    + "<td><b>Question :       <b></td>"
                    
                    + "<td><b>Posted Date : </b></td>"
                    + "<td>Controls :</td></tr>");
             while(rs.next())
             {
                
             out.println("<tr>");
             out.println("<td>"+rs.getString(1)+"</td>");
             out.println("<td>"+rs.getString(2)+"</td>");
             out.println("<td>"+rs.getString(5)+"</td>");
             out.println("<td>"+"<a href='studentViewAns.jsp?qid="+rs.getString(1)+"'>View Answer</a>"+"</td></tr>");
             }
             out.println("</table>");
            }
            catch(Exception e)
            {
                out.println(e);
            }
             
             
             
             
             
    
        %>
    
    </body>
</html>
