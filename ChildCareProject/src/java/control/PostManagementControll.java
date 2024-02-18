/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import dao.PostDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletOutputStream;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;
import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import javax.imageio.ImageIO;
import model.Account;
import model.Post;
import dao.ServiceDAO;
import model.Service;

/**
 *
 * @author VINH NINH
 */
@MultipartConfig
public class PostManagementControll extends HttpServlet {

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
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PostDAO pd = new PostDAO();
         ServiceDAO sd = new ServiceDAO();
        Service s = new Service();
        HttpSession session = request.getSession();
        Account m = (Account) session.getAttribute("Marketing");
        ArrayList<Post> postList = pd.getPostList();
        request.setAttribute("postList", postList);
       
        String ptid = request.getParameter("pid");

        if (ptid != null) {
            int id =Integer.parseInt(ptid);
            Post chosenPost = pd.getPostByID(id);
            request.setAttribute("chosenPost", chosenPost);

            ArrayList<Service> slist = sd.getServiceList();
            request.setAttribute("slist", slist);
           request.getRequestDispatcher("EditPost.jsp").forward(request, response);
        }
      

        request.getRequestDispatcher("ManagePost.jsp").forward(request, response);
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
        PostDAO pd = new PostDAO();
       
        HttpSession session = request.getSession();
        Account m = (Account) session.getAttribute("Marketing");
        String ac = request.getParameter("ac");
        
        if (ac != null) {

            request.getRequestDispatcher("CreatePost.jsp").forward(request, response);
        }
        String ptilte = request.getParameter("title");
        String pshort = request.getParameter("short");
        String pdetail = request.getParameter("detail");

        int mid = m.getAccountID();
        Part filePart = request.getPart("file");
        String fileName = filePart.getSubmittedFileName();
        if (filePart != null) {

            String link = "F:/ChildCareG5-LeQuangKhai/ChildCareProject/web/assets/img/post/" + fileName;
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
            String status = pd.createPost(pdetail, ptilte, pshort, fileName, 1, mid);
            request.setAttribute("status", status);
            request.getRequestDispatcher("CreatePost.jsp").forward(request, response);
        } else {
            String status = "null roi kia";
            request.setAttribute("status", status);
            request.getRequestDispatcher("CreatePost.jsp").forward(request, response);
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
