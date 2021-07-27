<%-- 
    Document   : teacherViewQuestion
    Created on : Jun 8, 2019, 9:31:58 AM
    Author     : BHAIJAAN
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="dbutil.DBConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="teacherHeader.jspf"/>
        <h1>view questions</h1>
        <%
            try{
                    String branch=session.getAttribute("branch").toString();
                    String sql="select *from question,reg where"
                    +" question.postbyemail=reg.email"
                    +" and branchdepart='"+branch+"' ";
                    DBConnect x= new DBConnect();
                    ResultSet rs =x.QueryReturner(sql);
                    out.println("<table><tr><td>");
                    out.println("Question no.</td><td>");
                    out.println("Question </td><td>");
                    out.println("posted by</td><td>");
                    out.println("posted date</td><td>");
                    out.println("controls </td></tr>");
                    while(rs.next()){
                        out.println("<tr>");
                        out.println("<td>"+rs.getString(1));
                        out.println("</td><td>"+rs.getString(2));
                        out.println("</td><td>"+rs.getString(3));
                        out.println("</td><td>"+rs.getString(4));
                        out.println("</td><td>"+rs.getString(5)+"</td>");
                        out.println("<td>"+"<a href='teacherAnswer.jsp?qid="+rs.getString(1)+"'>Reply</a>");
                        out.println("</td>");
                        out.println("</tr>");
                    }
                    out.println("</table>");
            }
            catch (Exception e){
                out.println(e);
            }

            %>
    </body>
</html>
