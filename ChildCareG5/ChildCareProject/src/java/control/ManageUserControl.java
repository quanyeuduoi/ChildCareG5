/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package control;

import dao.AccountDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import model.Account;

/**
 *
 * @author ACER NQC0821
 */
public class ManageUserControl extends HttpServlet {
   
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
            out.println("<title>Servlet ManageUserControl</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ManageUserControl at " + request.getContextPath () + "</h1>");
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
                //        String searchtxt = request.getParameter("searchText") == null ? "" : request.getParameter("searchText");
//        String role = request.getParameter("roleFilter") == null ? "" : request.getParameter("roleFilter");
//        String status = request.getParameter("statusFilter") == null ? "" : request.getParameter("statusFilter");
//        ArrayList<Account> account = new ArrayList<>();
        AccountDAO adao = new AccountDAO();
//        if (searchtxt.isEmpty() && role.isEmpty() && status.isEmpty()
//                || searchtxt.isEmpty() && role.equals("All") && status.equals("All")) {
//            account = adao.getAllAccount();
//        } else {
//            account = adao.getByFilter(searchtxt, role, status);
//        }
        ArrayList<Account> account = adao.getAllAccount();
//        System.out.println("GEt all acc");
//        for(Account acc: account){
//            System.out.println(acc);
//        }
        request.setAttribute("account", account);
        request.getRequestDispatcher("testaccountmanage.jsp").forward(request, response);
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
        processRequest(request, response);
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
