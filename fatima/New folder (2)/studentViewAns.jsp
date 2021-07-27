<%-- 
    Document   : studentViewAns
    Created on : 15 Jun, 2019, 8:50:56 AM
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
    <body>
        <jsp:include page="StudentHeader.jspf" />
         <h3>
            Welcome <%= session.getAttribute("name") %>
        </h3>
        <p>Reply
            <hr>
            <%! String qid=""; %>
            <%! String q=""; %>
            <%! String askbyemail=""; %>
            <%! String qdate=""; %>
            <%! String studentname=""; %>
            <%
            try{
            qid=request.getParameter("qid");
            String sql="select * from question where qid="+qid;
            DBConnet x=new DBConnet();
            ResultSet rs=x.QueryReturner(sql);
            rs.next();
            q=rs.getString(2);
            askbyemail=rs.getString(3);
            studentname=rs.getString(4);
            qdate=rs.getString(5);
            }
            catch(Exception ex)
            {
                out.println(ex);
            }
            
            %>
            <article>
                <header>
                    <h1>Question No - <%= qid%></h1>
                    <p>Published at : <span style="color: red">
                            <time pubdate
                                  datetime=<%= qdate%>><%= qdate%></time>
                        </span>
                    </p>      
                </header>
                        <p>Description :<span style="color: background"><%= q%></span></p>
                        <section>
                            post by : <span style="color: background"><%= studentname%>
                            </span>
                        </section>
            </article>  
                            <%
                            DBConnet x=new DBConnet();
                            String sql="select * from teacherans where qid="+qid;
                            ResultSet rs1=x.QueryReturner(sql);
                            while(rs1.next())
                            {
                                %>
                                   <article>
                <header>
                    <h3>Answer Posted - </h3>
                    <p>Published at : <span style="color: red">
                            <time pubdate
                                  datetime=<%= rs1.getString(7)%>><%= rs1.getString(7)%></time>
                        </span>
                    </p>      
                </header>
                        <p>Answer :<span style="color: background"><%= rs1.getString(6)%></span></p>
                        <section>
                            post by : <span style="color: background"><%= rs1.getString(4)%>
                            </span>
                        </section>
            </article>  
                                
                                
                                
                                <%
                            }
                            %>
       
    </body>
</html>
