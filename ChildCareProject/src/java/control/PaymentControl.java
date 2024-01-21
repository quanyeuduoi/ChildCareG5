/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import model.Customer;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import model.Payment;
import dao.PaymentDAO;

/**
 *
 * @author VINH NINH
 */
public class PaymentControl extends HttpServlet {

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
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet PaymentControl</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet PaymentControl at " + request.getContextPath() + "</h1>");
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
        String mod = request.getParameter("mod");
        String ac = request.getParameter("ac");
        PaymentDAO p = new PaymentDAO();
        HttpSession session = request.getSession();
        Customer c = (Customer) session.getAttribute("cus");
        
        if (mod != null) {
            int id = c.getCustomerID();
            String name = c.getFullName();
            ArrayList<Payment> data1 = p.unpaidList(id);
            request.setAttribute("name", name);
            request.setAttribute("data1", data1);
            request.getRequestDispatcher("Chosepaymeth.jsp").forward(request, response);
        }
        if(ac!=null){
            int pid = Integer.parseInt(request.getParameter("id")) ;
            p.updatePaymentList(pid);
            request.getRequestDispatcher("Chosepaymeth.jsp").forward(request, response);
        }
        else{
            if (c != null) {
            int id = c.getCustomerID();
                System.out.println(id);
            String name = c.getFullName();
                System.out.println(name);
            ArrayList<Payment> data = p.paymentList(id);
            request.setAttribute("name", name);
            request.setAttribute("data", data);
            request.getRequestDispatcher("PaymentHistoryPage.jsp").forward(request, response);
        }
        }
        

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
