/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.RegModel;
/**
 *
 * @author BHAIJAAN
 */
@WebServlet(urlPatterns = {"/RegSubmit"})
public class RegSubmit extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet RegSubmit</title>");            
            out.println("</head>");
            out.println("<body>");
            String email= request.getParameter("t1");
            String name=  request.getParameter("t2");
            String pass=  request.getParameter("p1");
            String cpass= request.getParameter("p2");
            String utype= request.getParameter("t3");
            String branch=request.getParameter("t4");
            String mobile=request.getParameter("mob");
            try{
                RegModel r=new RegModel(email,name,pass,mobile,utype,branch);
                if(pass.equals(cpass))
                {
                    r.submit();
                    HttpSession session=request.getSession();
                    session.setAttribute("email", email);
                    session.setAttribute("name", name);
                    session.setAttribute("branch",branch);
                    session.setAttribute("utype",utype);
                    if(utype.equals("Student")){
                        response.sendRedirect("StudentHome.jsp");
                    }
                    if(utype.equals("Faculty")){
                        response.sendRedirect("TeacherHome.jsp");
                    }
                     else
                    {
                        out.println("Password not match");
                    }
                }
            
            }
            catch(Exception e){
                
            }
            
            out.println("<h1>Servlet RegSubmit at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
