/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import dao.ManagerDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import model.DoctorList;
import model.Slot;

/**
 *
 * @author Dell
 */
@WebServlet(name = "EditDocScheduleControl", urlPatterns = {"/EditSchedule"})
public class EditDocScheduleControl extends HttpServlet {

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
            out.println("<title>Servlet EditDocScheduleControl</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet EditDocScheduleControl at " + request.getContextPath() + "</h1>");
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
        ManagerDAO mdDAO = new ManagerDAO();
        List<Slot> slotTimes = mdDAO.getAllSlot();
        List<DoctorList> dlist = mdDAO.getAllDoctorsForManager();
        request.setAttribute("dlist", dlist);
        request.setAttribute("slotTimes", slotTimes);
        request.getRequestDispatcher("EditDoctorSchedule.jsp").forward(request, response);
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
        String selectedDateStr = request.getParameter("date");
        int docID;
        try {
            docID = Integer.parseInt(request.getParameter("docID"));
        } catch (NumberFormatException e) {
            // Xử lý lỗi khi không thể chuyển đổi docID sang số
            response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
            return;
        }
        System.out.println(docID);
        System.out.println(selectedDateStr);

        ManagerDAO managerDAO = new ManagerDAO();
        // Lấy danh sách các slot đã được chọn từ form
        String[] selectedSlotIDs = request.getParameterValues("slots");

        // Lấy danh sách tất cả các slot IDs cho ngày được chọn
        List<Integer> allSlotIDs = getAllSlotIDs(docID, selectedDateStr);

        if (selectedSlotIDs != null) {
            for (String selectedSlotID : selectedSlotIDs) {
                int slotID = Integer.parseInt(selectedSlotID);
                if (allSlotIDs.contains(slotID)) {
                    // Gọi hàm updateSchedule
                    managerDAO.editSchedule(selectedDateStr, slotID, null, docID);
                } else {
                    // Gọi hàm addSchedule
                    managerDAO.addSchedule(selectedDateStr, slotID, null, docID);
                }
            }
        }

        // Xóa các slot không được chọn
        for (int slotID : allSlotIDs) {
            if (selectedSlotIDs == null || !contains(selectedSlotIDs, String.valueOf(slotID))) {
                // Gọi hàm deleteSchedule
                managerDAO.deleteSchedule(docID,slotID);
            }
        }
        String message = "Save successfully";
        request.setAttribute("message", message);
        request.getRequestDispatcher("EditDoctorSchedule.jsp").forward(request, response);
    }

    private List<Integer> getAllSlotIDs(int docID, String selectedDate) {
        List<Integer> allSlotIDs = new ArrayList<>();
        ManagerDAO managerDAO = new ManagerDAO();
        // Lấy danh sách tất cả các slot cho ngày được chọn
        List<Slot> allSlots = managerDAO.getAllSlotByDay(docID, selectedDate);

        // Lặp qua danh sách các slot và thêm id của mỗi slot vào danh sách allSlotIDs
        for (Slot slot : allSlots) {
            allSlotIDs.add(slot.getSlotID());
        }

        return allSlotIDs;
    }

    private boolean contains(String[] array, String key) {
        for (String item : array) {
            if (item.equals(key)) {
                return true;
            }
        }
        return false;
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
