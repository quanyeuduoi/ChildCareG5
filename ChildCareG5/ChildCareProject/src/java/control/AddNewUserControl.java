/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import dao.AccountDAO;
import dao.DAO;
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
public class AddNewUserControl extends HttpServlet {

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
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String fullname = request.getParameter("fullname");
        String role = request.getParameter("role");

        DAO dao = new DAO();
        AccountDAO adao = new AccountDAO();
        ArrayList<Account> account = adao.getAllAccount();
        request.setAttribute("account", account);

        Account acc = dao.CheckAccountExist(email);

        if (acc != null) {
            dao.setNotification(request, "Email have already existed!");
            request.getRequestDispatcher("EAddCustomer.jsp").forward(request, response);
        } else if (!dao.validatePassword(password)) {
            dao.setNotification(request, "At least 8 character, 1 special symbol, 1 uppercase");
            request.getRequestDispatcher("EAddCustomer.jsp").forward(request, response);
        } else {
            adao.addNewUser(email, password, fullname, role);
            dao.setNotification(request, "Add New Account Succesfull!");
            account = adao.getAllAccount();
            request.setAttribute("account", account);
            response.sendRedirect("manageuser");
//            request.getRequestDispatcher("EManagerUser.jsp").forward(request, response);
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
