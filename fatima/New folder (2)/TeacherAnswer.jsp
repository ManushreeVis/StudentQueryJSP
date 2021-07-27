<%-- 
    Document   : TeacherAnswer
    Created on : 8 Jun, 2019, 9:31:47 AM
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
    <body>
        <jsp:include page="TeacherHeader.jspf" />
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
               <article>
                <header>
                    <h1>Post Answer - <%= qid%></h1>
                   
                  </header>
                     <form method="post">
                         <table >
                             <tr>
                                 <td>Enter your answer here :<br> 
                                 <textarea name="ans" rows="5" cols="20" placeholder="type here..... ">
                                     </textarea>  
                                     </td>
                             </tr>
                             <tr>
                                 
                                 <td style="text-align: left;">
                                     <p><b>NOTE : Your name and answer will be displayed, <br>but we will not<br>
                                             show your email address.</b></p>
                                 </td>
                             </tr>
                             <tr>
                                 <td>Submit</td>
                                 <td><input type="submit"
                                            value="Submit Answer"
                                            name="b2"></td>
                             </tr>
                         </table>
                    </form>
            </article>      
                    <%
                  if(request.getParameter("b2")!=null)
                  {
                      try{
                          DBConnet q=new DBConnet();
                          String sql1="insert into teacherans(qid,qdata,studentname,"
                                  + "teachername ,teacheremail"
                                  + ",teacherans)"
                                  + "values("+qid+",'"+q+"','"+
                                  studentname+"','"+
                                  session.getAttribute("name")+"','"+
                                  session.getAttribute("email")+"','"+
                                  request.getParameter("ans")+"')";
                          q.QueryExecuter(sql1);
                          out.println("Your answer is posted successfully...");
                      }
                      catch(Exception e)
                      {
                          out.println(e);
                      }
                  }

    

%>        
                    
                            
                            
    </body>
</html>
