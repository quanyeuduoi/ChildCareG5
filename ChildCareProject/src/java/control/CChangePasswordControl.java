/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package control;

import dao.CustomerDAO;
import dao.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Customer;

/**
 *
 * @author ACER NQC0821
 */

public class CChangePasswordControl extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {      
//        String email = (String) request.getSession().getAttribute("email");
//        String oldPass = (String) request.getSession().getAttribute("password");
	 String email = request.getParameter("email");
	 String oldPass = request.getParameter("oldPass");
	 String newPass = request.getParameter("newPass");
         String conPass = request.getParameter("conPass");
	 CustomerDAO dao = new CustomerDAO();
	 Customer cus = dao.CheckCustomerExist(email, oldPass);
	 if( cus == null){
            request.setAttribute("message","Information is incorrect!");
            request.getRequestDispatcher("changePass.jsp").forward(request,response);
	 }else{
             if(!newPass.equals(conPass)){
                request.setAttribute("message","New password do not match!");
                request.getRequestDispatcher("changePass.jsp").forward(request,response);
             }else{
                 Customer customer1 = new Customer(cus.getCustomerID(), email, newPass, cus.getFullName(), cus.getPhoneNumber(), cus.getAddress(), cus.getcOTP());
                 dao.UpdatePassword(customer1);
                 request.getSession().setAttribute("customer", customer1); 
//                 response.sendRedirect("homepage.jsp");
             }//Ok
             request.getRequestDispatcher("homepage.jsp").forward(request,response);
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
        processRequest(request, response);  
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
