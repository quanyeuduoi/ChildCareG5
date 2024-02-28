/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import dao.SliderDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.List;
import model.Account;
import model.Post;
import model.SliderList;

/**
 *
 * @author Dell
 */
@MultipartConfig
@WebServlet(name = "EditSliderControl", urlPatterns = {"/EditSlider"})
public class EditSliderControl extends HttpServlet {

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
            out.println("<title>Servlet EditSliderControl</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet EditSliderControl at " + request.getContextPath() + "</h1>");
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
        String sliderIDString = request.getParameter("sliderID");
        int sliderID = Integer.parseInt(sliderIDString);
        SliderDAO sliderDAO = new SliderDAO();
        SliderList slider = sliderDAO.getSliderByID(sliderID);
        List<Post> postTitles = sliderDAO.getListPostTitle();
        String sid = String.valueOf(sliderID);
        System.out.println(sid);

        request.setAttribute("sid", sid);
        request.setAttribute("postTitles", postTitles);
        request.setAttribute("sliderInfo", slider);
        request.getRequestDispatcher("EditSlider.jsp").forward(request, response);
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
        HttpSession session = request.getSession();
        Account account = (Account) session.getAttribute("Marketing");
        SliderDAO sliderDAO = new SliderDAO();

        String sliderID = request.getParameter("sID");
        System.out.println(sliderID);
        if (sliderID != null && !sliderID.isEmpty()) {
            try {
                int dsliderID = Integer.parseInt(sliderID);
                String title = request.getParameter("title");
                int marketingID = account.getAccountID();
                Post post = sliderDAO.getPostIDByTitle(title);
                int postID = post.getPostID();

                Part filePart = request.getPart("file");
                String fileName = filePart.getSubmittedFileName();
                if (filePart != null) {
                    String pathToFile = getServletContext().getRealPath("/") + "Image/SliderImage/" + fileName;
                    System.out.println("pathToFile: " + pathToFile);
                    String currentDirectory = System.getProperty("user.dir");
                    System.out.println("user.dir: " + currentDirectory);
                    String link = pathToFile = getServletContext().getRealPath("/") + "Image/SliderImage/" + fileName;
                    System.out.println(link + " " + fileName);
                    try {
                        FileOutputStream fos = new FileOutputStream(link);
                        InputStream is = filePart.getInputStream();
                        byte[] data = new byte[is.available()];
                        is.read(data);
                        fos.write(data);
                        fos.close();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    sliderDAO.editSlider(fileName, marketingID, postID, dsliderID);
//                    String message = "Edit successfully";
//                    request.setAttribute("message", message);
//                    request.getRequestDispatcher("SliderManagement.jsp").forward(request, response);
                    response.sendRedirect("SliderManagement");
                } else {
                    String message = "Null image";
                    request.setAttribute("message", message);
                    request.getRequestDispatcher("EditSlider.jsp").forward(request, response);
                }
            } catch (NumberFormatException e) {
                String message = "Cannot convert";
                e.printStackTrace();
                request.setAttribute("message", message);
                request.getRequestDispatcher("EditSlider.jsp").forward(request, response);
                return;
            }
        } else {
            String message = "Null sliderID";
            request.setAttribute("message", message);
            request.getRequestDispatcher("EditSlider.jsp").forward(request, response);
            return;
        }
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
