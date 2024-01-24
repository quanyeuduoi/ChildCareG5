/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import context.DBContext;
import dao.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.Connection;
import model.Customer;

/**
 *
 * @author Dell
 */
@WebServlet(name = "CRegisterControl", urlPatterns = {"/register"})
public class CRegisterControl extends HttpServlet {

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
        String fullName = request.getParameter("fullName");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String rePassword = request.getParameter("rePassword");
        String address = null;
        String phoneNumber = null;
        String cOTP = request.getParameter("cOTP");

        DAO dao = new DAO();
        HttpSession session = request.getSession();

        String sessionOTP = (String) session.getAttribute("otp");

        if (!dao.validatePassword(password)) {
            request.setAttribute("message", "Password must be at least 8 characters, with at least 1 uppercase letter, 1 lowercase letter, 1 digit, and 1 special character.");
            request.getRequestDispatcher("LoginRegister.jsp").forward(request, response);
            return;
        }
        if (!password.equals(rePassword)) {
            // Display an error message or handle the error
            request.setAttribute("message", "Password and confirm password do not match.");
            request.getRequestDispatcher("LoginRegister.jsp").forward(request, response);
            return;
        }

        if (!cOTP.equals(sessionOTP)) {
            request.setAttribute("message", "Your OTP is incorrect.");
            request.getRequestDispatcher("LoginRegister.jsp").forward(request, response);
            return;
        }

        Customer cus = dao.CheckCustomerExist(email);
        if (cus != null) {
            request.setAttribute("message", "Register failed. Emal existed.");
            request.getRequestDispatcher("LoginRegister.jsp").forward(request, response);
//        if (!isCOTPValid) {
//        request.setAttribute("message", "Your OTP is incorrect.");
//        request.getRequestDispatcher("LoginRegister.jsp").forward(request, response);
        } else {
            dao.addCustomer(email, password, fullName, phoneNumber, address, null);
            request.setAttribute("message", "Register successfully.");
            session.removeAttribute("otp");
            request.getRequestDispatcher("LoginRegister.jsp").forward(request, response);
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
