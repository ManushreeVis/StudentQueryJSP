<%-- 
    Document   : TeacherViewQuestions
    Created on : 8 Jun, 2019, 9:31:23 AM
    Author     : SHIMONI
--%>
<%@page import="java.sql.*" %>
<%@page import="dbutil.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body> <jsp:include page="TeacherHeader.jspf" />
        <h2>View Questions!!</h2>
        <%
            
            try{
            String branch=session.getAttribute("branch").toString();
            
            String sql="select * from question,reg where "
                    +"question.postbyemail=reg.email"
                    +" and Branch='"+branch+"'";
            DBConnet x=new DBConnet();
            ResultSet rs=x.QueryReturner(sql);
            out.println("<table border=3 bordercolor=Blue>"+
                    "<tr>"
                    + "<td> <b>Question No. :</b></td>"
                    + "<td><b>Question :       <b></td>"
                    + "<td><b>Posted by :</b></td>"
                    + "<td><b>Posted Date : </b></td>"
                    + "<td>Controls :</td></tr>");
             while(rs.next())
             {
                
             out.println("<tr>");
             out.println("<td>"+rs.getString(1)+"</td>");
             out.println("<td>"+rs.getString(2)+"</td>");
             out.println("<td>"+rs.getString(4)+"</td>");
             out.println("<td>"+rs.getString(5)+"</td>");
             out.println("<td>"+"<a href='TeacherAnswer.jsp?qid="+rs.getString(1)+"'>Reply</a>"+"</td></tr>");
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
