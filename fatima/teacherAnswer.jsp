<%-- 
    Document   : teacherAnswer
    Created on : Jun 8, 2019, 9:31:07 AM
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
        
        <h3>Welcome <%=session.getAttribute("name")%></h3>
        
        <p>
            Reply
        <hr>
        <%! String qid=""; %>
        <%! String q="";%>
        <%! String askbyemail="";%>
        <%! String qdate="";%>
        <%! String studentName="";%>
        
        <%
            try{
              
                qid=request.getParameter("qid");
                String sql="select* from question where  qid="+qid;
                DBConnect x=new DBConnect();
                ResultSet rs=x.QueryReturner(sql);
                rs.next();
                q=rs.getString(2);
                askbyemail=rs.getString(3);
                studentName=rs.getString(4);
                qdate=rs.getString(5);
                
            }
            catch(Exception e){
        out.println(e);
            }
            %>
            <article>
                <header>
                    <h1>
                        Question no.-<%=qid%>
                    </h1>
                    <p>Published:<span style="color:red">
                     <time pubdate
                           datetime=<%=qdate%><%=qdate%></time>
                        </span></p>
                </header>
                           <p> Description- <span style="color:blue"><%=q%>
                            </span></p>
                            <section>
                                post by-<span style="color:blue"><%=studentName%></span>
                            </section>
    
                            
                 </article>
                            <h3>POst Answer</h3>
                            <form method="post">
                                <table class="table a comment">
                                    <tr>
                                        <th>Answer:</th>
                                        <td>
                                            <textarea></textarea>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>Submit</th>
                                        <td style ='text-align:left'>
                                            <p>Please note:Your name and answer will 
                                                be displayed,but we will not show your 
                                                email address.</p>
                                            <input type='submit'
                                                   value='submit Comment'
                                                   anme="b2"/>
                                            
                                        </td>
                                    </tr>
                                </table>
                            </form>
        
       
</body>
</html>
