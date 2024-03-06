/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import com.google.gson.Gson;
import dao.ManagerDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;
import model.Slot;

/**
 *
 * @author Dell
 */
@WebServlet(name = "GetSlotsByDate", urlPatterns = {"/GetSlotsByDate"})
public class GetSlotsByDate extends HttpServlet {

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
            out.println("<title>Servlet GetSlotsByDate</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet GetSlotsByDate at " + request.getContextPath() + "</h1>");
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
        // Lấy ngày và docID từ yêu cầu
        String selectedDateStr = request.getParameter("selectedDate");
        int docID;
        try {
            docID = Integer.parseInt(request.getParameter("docID"));
        } catch (NumberFormatException e) {
            // Xử lý lỗi khi không thể chuyển đổi docID sang số
            response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
            return;
        }
        System.out.println(selectedDateStr);
        System.out.println(docID);
        ManagerDAO mdDAO = new ManagerDAO();
        // Gọi phương thức trong DAO để lấy danh sách các khe trống
        List<Slot> slots = mdDAO.getAllSlotByDay(docID, selectedDateStr);

        // Chuyển danh sách khe trống thành định dạng JSON
        Gson gson = new Gson();
        String jsonSlots = gson.toJson(slots);

        // Gửi dữ liệu JSON về cho trình duyệt
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(jsonSlots);

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
