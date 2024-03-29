/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package control;

import dao.DAO;
import dao.PostDAO;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import model.Post;

/**
 *
 * @author Admin
 */
public class PostControl extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
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
            out.println("<title>Servlet PostControl</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet PostControl at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        PostDAO dao = new PostDAO();
        String indexPage = request.getParameter("index");
        int index = Integer.parseInt(indexPage); // get the index page want to see
        int countPost = dao.getTotalPost(); //count the total post in database
        int endPage = countPost / 5; //calculate the number of page , 5 is number of post you want to display per page(in condition per page has full 5 posts
        if (endPage % 5 != 0){
            endPage++; //if the posts in the last page has less than 5, +1 page to include these post
        }
        ArrayList<Post> postList = dao.pagingList(index);
        request.setAttribute("index", index);
        request.setAttribute("postList", postList);
        request.setAttribute("endP", endPage);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("post.jsp");
        requestDispatcher.forward(request, response);
//        request.getRequestDispatcher("post.jsp").forward(request, response);
        
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String searchText = request.getParameter("searchText");
        String indexPage = request.getParameter("index");
        int index = Integer.parseInt(indexPage); // get the index page want to see
        PostDAO dao = new PostDAO();
        ArrayList<Post> postList = dao.findPostByName(searchText,index);
        
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
