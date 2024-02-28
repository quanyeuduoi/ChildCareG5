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

/**
 *
 * @author Dell
 */
@MultipartConfig
@WebServlet(name="AddSliderControl", urlPatterns={"/AddSlider"})
public class AddSliderControl extends HttpServlet {
   
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
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet PostManagementControll</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet PostManagementControll at " + request.getContextPath() + "</h1>");
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
        HttpSession session = request.getSession();
        Account account = (Account) session.getAttribute("Marketing");
        SliderDAO sliderDAO = new SliderDAO();
        
        List<Post> postTitles = sliderDAO.getListPostTitle();
        request.setAttribute("postTitles",postTitles);
        request.getRequestDispatcher("AddSlider.jsp").forward(request, response);
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
        HttpSession session = request.getSession();
        Account account = (Account) session.getAttribute("Marketing");
        SliderDAO sliderDAO = new SliderDAO();

        String title = request.getParameter("title");
        int marketingID = account.getAccountID();
        Post post = sliderDAO.getPostIDByTitle(title);
        int postID = post.getPostID();
        
        Part filePart = request.getPart("file");
        String fileName = filePart.getSubmittedFileName();
        if (filePart != null) {
            String pathToFile = getServletContext().getRealPath("/") + "Image/SliderImage/"+ fileName;
            System.out.println("pathToFile: " + pathToFile);
            String currentDirectory = System.getProperty("user.dir");
            System.out.println("user.dir: " + currentDirectory);
            String link = pathToFile = getServletContext().getRealPath("/") + "Image/SliderImage/"+ fileName;
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
            sliderDAO.addSlider(fileName, marketingID, postID);
            String message = "Add new slider succssefully.";
            request.setAttribute("message", message);
            request.getRequestDispatcher("AddSlider.jsp").forward(request, response);
            response.sendRedirect("SliderManagement");
        } else {
            String message = "Null image";
            request.setAttribute("message", message);
            request.getRequestDispatcher("AddSlider.jsp").forward(request, response);
        }
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
