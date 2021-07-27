<%-- 
    Document   : studentPostQuestion
    Created on : Jun 8, 2019, 9:02:58 AM
    Author     : BHAIJAAN
--%>

<%@page import="dbutil.DBConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <jsp:include page="studentHeader.jspf"></jsp:include>
    
    </head>
    <body>
    <h1>Ask a Question</h1>          
              <form>
                  <table>
                  <tr>
                      <td>Questions</td>
                          <br>
                          <textarea name="text1" rows="4" cols="20">
                          </textarea>

                      
                  </tr>  
                  <tr>
                      <td><input type="submit" value="submit" name="b1"/></td>
                  </tr>
              </table>
                  </form>
              <%
                  if(request.getParameter("b1")!=null){
                  try{
                      String question=request.getParameter("text1");
                      String email=session.getAttribute("email").toString();
                      String name= session.getAttribute("name").toString();
                      DBConnect x=new DBConnect();
                      String sql= "insert into question"
                              +"(qdata,postbyemail,postbyname)"
                              +"values ('"+question+"','"+email+"','"+name+"')";
                      x.QueryExecuter(sql);
                      out.println("query successfully saved..");
                  }
catch(Exception e){
    out.println("Error :"+e);
}
                  }
                  %>
    </body>
</html>
