package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class PaymentHistoryPage_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("  <meta charset=\"utf-8\">\r\n");
      out.write("  <meta content=\"width=device-width, initial-scale=1.0\" name=\"viewport\">\r\n");
      out.write("\r\n");
      out.write("  <title>Inner Page - Medicio Bootstrap Template</title>\r\n");
      out.write("  <meta content=\"\" name=\"description\">\r\n");
      out.write("  <meta content=\"\" name=\"keywords\">\r\n");
      out.write("\r\n");
      out.write("  <!-- Favicons -->\r\n");
      out.write("  <link href=\"assets/img/favicon.png\" rel=\"icon\">\r\n");
      out.write("  <link href=\"assets/img/apple-touch-icon.png\" rel=\"apple-touch-icon\">\r\n");
      out.write("\r\n");
      out.write("  <!-- Google Fonts -->\r\n");
      out.write("  <link href=\"https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("  <!-- Vendor CSS Files -->\r\n");
      out.write("  <link href=\"assets/vendor/fontawesome-free/css/all.min.css\" rel=\"stylesheet\">\r\n");
      out.write("  <link href=\"assets/vendor/animate.css/animate.min.css\" rel=\"stylesheet\">\r\n");
      out.write("  <link href=\"assets/vendor/aos/aos.css\" rel=\"stylesheet\">\r\n");
      out.write("  <link href=\"assets/vendor/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\">\r\n");
      out.write("  <link href=\"assets/vendor/bootstrap-icons/bootstrap-icons.css\" rel=\"stylesheet\">\r\n");
      out.write("  <link href=\"assets/vendor/boxicons/css/boxicons.min.css\" rel=\"stylesheet\">\r\n");
      out.write("  <link href=\"assets/vendor/glightbox/css/glightbox.min.css\" rel=\"stylesheet\">\r\n");
      out.write("  <link href=\"assets/vendor/swiper/swiper-bundle.min.css\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("  <!-- Template Main CSS File -->\r\n");
      out.write("  <link href=\"assets/css/style.css\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("  <!-- =======================================================\r\n");
      out.write("  * Template Name: Medicio\r\n");
      out.write("  * Updated: Jan 09 2024 with Bootstrap v5.3.2\r\n");
      out.write("  * Template URL: https://bootstrapmade.com/medicio-free-bootstrap-theme/\r\n");
      out.write("  * Author: BootstrapMade.com\r\n");
      out.write("  * License: https://bootstrapmade.com/license/\r\n");
      out.write("  ======================================================== -->\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>");

        String cusID;
           if(request.getAttribute("cusID")!=null){
          cusID = (String)request.getAttribute("cusID");
          }
        
      out.write("\r\n");
      out.write("\r\n");
      out.write("  <!-- ======= Top Bar ======= -->\r\n");
      out.write("  <div id=\"topbar\" class=\"d-flex align-items-center fixed-top\">\r\n");
      out.write("    <div class=\"container d-flex align-items-center justify-content-center justify-content-md-between\">\r\n");
      out.write("      <div class=\"align-items-center d-none d-md-flex\">\r\n");
      out.write("        <i class=\"bi bi-clock\"></i> Monday - Saturday, 8AM to 10PM\r\n");
      out.write("      </div>\r\n");
      out.write("      <div class=\"d-flex align-items-center\">\r\n");
      out.write("        <i class=\"bi bi-phone\"></i> Call us now +1 5589 55488 55\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write("\r\n");
      out.write("  <!-- ======= Header ======= -->\r\n");
      out.write("  <header id=\"header\" class=\"fixed-top\">\r\n");
      out.write("    <div class=\"container d-flex align-items-center\">\r\n");
      out.write("\r\n");
      out.write("      <a href=\"index.html\" class=\"logo me-auto\"><img src=\"assets/img/logo.png\" alt=\"\"></a>\r\n");
      out.write("      <!-- Uncomment below if you prefer to use an image logo -->\r\n");
      out.write("      <!-- <h1 class=\"logo me-auto\"><a href=\"index.html\">Medicio</a></h1> -->\r\n");
      out.write("\r\n");
      out.write("      <nav id=\"navbar\" class=\"navbar order-last order-lg-0\">\r\n");
      out.write("                    <ul>\r\n");
      out.write("                        <li><a class=\"nav-link scrollto \" href=\"homepage.jsp\">Home</a></li>\r\n");
      out.write("                        <li><a class=\"nav-link scrollto \" href=\"homepage.jsp\">Ordered history</a></li>\r\n");
      out.write("                        <li><a class=\"nav-link scrollto\" href=\"doctor.jsp\">Doctors</a></li>\r\n");
      out.write("                        <li class=\"dropdown\"><a href=\"#\"><span>Payment</span> <i class=\"bi bi-chevron-down\"></i></a>\r\n");
      out.write("                            <ul>\r\n");
      out.write("                                <li><a href=\"department1.jsp\">Pay money </a></li>\r\n");
      out.write("                                <li><a href=\"PaymentHistoryPage.jsp\">Payment history</a></li>\r\n");
      out.write("                                \r\n");
      out.write("                            </ul>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li class=\"dropdown\"><a href=\"#\"><span>Service</span> <i class=\"bi bi-chevron-down\"></i></a>\r\n");
      out.write("                            <ul>\r\n");
      out.write("                                <li><a href=\"department1.jsp\">Department 1</a></li>\r\n");
      out.write("                                <li><a href=\"department1.jsp\">Department 2</a></li>\r\n");
      out.write("                                <li><a href=\"department1.jsp\">Department 3</a></li>\r\n");
      out.write("                                <li><a href=\"department1.jsp\">Department 4</a></li>\r\n");
      out.write("                                <li><a href=\"department1.jsp\">Department 5</a></li>\r\n");
      out.write("                            </ul>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li class=\"dropdown\"><a href=\"#\"><span>Profile</span> <i class=\"bi bi-chevron-down\"></i></a>\r\n");
      out.write("                            <ul>\r\n");
      out.write("                                <li><a href=\"department1.jsp\">Profile 1</a></li>\r\n");
      out.write("                                <li><a href=\"department1.jsp\">Profile 2</a></li>\r\n");
      out.write("                                <li><a href=\"department1.jsp\">Profile 3</a></li>\r\n");
      out.write("                                <li><a href=\"department1.jsp\">Profile 4</a></li>\r\n");
      out.write("                                <li><a href=\"department1.jsp\">Profile 5</a></li>\r\n");
      out.write("                            </ul>\r\n");
      out.write("                        </li>\r\n");
      out.write("                    </ul>\r\n");
      out.write("                    <i class=\"bi bi-list mobile-nav-toggle\"></i>\r\n");
      out.write("                </nav><!-- .navbar -->\r\n");
      out.write("\r\n");
      out.write("      <a href=\"#appointment\" class=\"appointment-btn scrollto\"><span class=\"d-none d-md-inline\">Make an</span> Appointment</a>\r\n");
      out.write("\r\n");
      out.write("    </div>\r\n");
      out.write("  </header><!-- End Header -->\r\n");
      out.write("\r\n");
      out.write("  <main id=\"main\">\r\n");
      out.write("\r\n");
      out.write("    <!-- ======= Breadcrumbs Section ======= -->\r\n");
      out.write("    <section class=\"breadcrumbs\">\r\n");
      out.write("      <div class=\"container\">\r\n");
      out.write("\r\n");
      out.write("        <div class=\"d-flex justify-content-between align-items-center\">\r\n");
      out.write("          <h2>Inner Page</h2>\r\n");
      out.write("          <ol>\r\n");
      out.write("            <li><a href=\"index.html\">Home</a></li>\r\n");
      out.write("            <li>Inner Page</li>\r\n");
      out.write("          </ol>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("      </div>\r\n");
      out.write("    </section><!-- End Breadcrumbs Section -->\r\n");
      out.write("\r\n");
      out.write("    <section class=\"inner-page\">\r\n");
      out.write("      <div class=\"container\">\r\n");
      out.write("        <p>\r\n");
      out.write("          <div class=\"form-container sign-up-container\">\r\n");
      out.write("            <form action=\"ForgetPassControl\" method=\"post\">\r\n");
      out.write("                <h1>Confirm your email</h1>\r\n");
      out.write("                <input style=\"margin-bottom: 10px\" type=\"text\" name=\"email\" placeholder=\"Your email\" /><br>\r\n");
      out.write("                <input style=\"margin-bottom: 10px\" type=\"hidden\" name=\"cm\" value=\"1\" />\r\n");
      out.write("                <input style=\"margin-bottom: 10px\" type=\"hidden\" name=\"cOTP\" placeholder=\"Enter OTP here\" />\r\n");
      out.write("                <button>Confirm</button>\r\n");
      out.write("            </form>\r\n");
      out.write("        </div>\r\n");
      out.write("        </p>\r\n");
      out.write("      </div>\r\n");
      out.write("    </section>\r\n");
      out.write("\r\n");
      out.write("  </main><!-- End #main -->\r\n");
      out.write("\r\n");
      out.write("  <!-- ======= Footer ======= -->\r\n");
      out.write("  <footer id=\"footer\">\r\n");
      out.write("    <div class=\"footer-top\">\r\n");
      out.write("      <div class=\"container\">\r\n");
      out.write("        <div class=\"row\">\r\n");
      out.write("\r\n");
      out.write("          <div class=\"col-lg-3 col-md-6\">\r\n");
      out.write("            <div class=\"footer-info\">\r\n");
      out.write("              <h3>Medicio</h3>\r\n");
      out.write("              <p>\r\n");
      out.write("                A108 Adam Street <br>\r\n");
      out.write("                NY 535022, USA<br><br>\r\n");
      out.write("                <strong>Phone:</strong> +1 5589 55488 55<br>\r\n");
      out.write("                <strong>Email:</strong> info@example.com<br>\r\n");
      out.write("              </p>\r\n");
      out.write("              <div class=\"social-links mt-3\">\r\n");
      out.write("                <a href=\"#\" class=\"twitter\"><i class=\"bx bxl-twitter\"></i></a>\r\n");
      out.write("                <a href=\"#\" class=\"facebook\"><i class=\"bx bxl-facebook\"></i></a>\r\n");
      out.write("                <a href=\"#\" class=\"instagram\"><i class=\"bx bxl-instagram\"></i></a>\r\n");
      out.write("                <a href=\"#\" class=\"google-plus\"><i class=\"bx bxl-skype\"></i></a>\r\n");
      out.write("                <a href=\"#\" class=\"linkedin\"><i class=\"bx bxl-linkedin\"></i></a>\r\n");
      out.write("              </div>\r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("\r\n");
      out.write("          <div class=\"col-lg-2 col-md-6 footer-links\">\r\n");
      out.write("            <h4>Useful Links</h4>\r\n");
      out.write("            <ul>\r\n");
      out.write("              <li><i class=\"bx bx-chevron-right\"></i> <a href=\"#\">Home</a></li>\r\n");
      out.write("              <li><i class=\"bx bx-chevron-right\"></i> <a href=\"#\">About us</a></li>\r\n");
      out.write("              <li><i class=\"bx bx-chevron-right\"></i> <a href=\"#\">Services</a></li>\r\n");
      out.write("              <li><i class=\"bx bx-chevron-right\"></i> <a href=\"#\">Terms of service</a></li>\r\n");
      out.write("              <li><i class=\"bx bx-chevron-right\"></i> <a href=\"#\">Privacy policy</a></li>\r\n");
      out.write("            </ul>\r\n");
      out.write("          </div>\r\n");
      out.write("\r\n");
      out.write("          <div class=\"col-lg-3 col-md-6 footer-links\">\r\n");
      out.write("            <h4>Our Services</h4>\r\n");
      out.write("            <ul>\r\n");
      out.write("              <li><i class=\"bx bx-chevron-right\"></i> <a href=\"#\">Web Design</a></li>\r\n");
      out.write("              <li><i class=\"bx bx-chevron-right\"></i> <a href=\"#\">Web Development</a></li>\r\n");
      out.write("              <li><i class=\"bx bx-chevron-right\"></i> <a href=\"#\">Product Management</a></li>\r\n");
      out.write("              <li><i class=\"bx bx-chevron-right\"></i> <a href=\"#\">Marketing</a></li>\r\n");
      out.write("              <li><i class=\"bx bx-chevron-right\"></i> <a href=\"#\">Graphic Design</a></li>\r\n");
      out.write("            </ul>\r\n");
      out.write("          </div>\r\n");
      out.write("\r\n");
      out.write("          <div class=\"col-lg-4 col-md-6 footer-newsletter\">\r\n");
      out.write("            <h4>Our Newsletter</h4>\r\n");
      out.write("            <p>Tamen quem nulla quae legam multos aute sint culpa legam noster magna</p>\r\n");
      out.write("            <form action=\"\" method=\"post\">\r\n");
      out.write("              <input type=\"email\" name=\"email\"><input type=\"submit\" value=\"Subscribe\">\r\n");
      out.write("            </form>\r\n");
      out.write("\r\n");
      out.write("          </div>\r\n");
      out.write("\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("      <div class=\"copyright\">\r\n");
      out.write("        &copy; Copyright <strong><span>Medicio</span></strong>. All Rights Reserved\r\n");
      out.write("      </div>\r\n");
      out.write("      <div class=\"credits\">\r\n");
      out.write("        <!-- All the links in the footer should remain intact. -->\r\n");
      out.write("        <!-- You can delete the links only if you purchased the pro version. -->\r\n");
      out.write("        <!-- Licensing information: https://bootstrapmade.com/license/ -->\r\n");
      out.write("        <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/medicio-free-bootstrap-theme/ -->\r\n");
      out.write("        Designed by <a href=\"https://bootstrapmade.com/\">BootstrapMade</a>\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("  </footer><!-- End Footer -->\r\n");
      out.write("\r\n");
      out.write("  <div id=\"preloader\"></div>\r\n");
      out.write("  <a href=\"#\" class=\"back-to-top d-flex align-items-center justify-content-center\"><i class=\"bi bi-arrow-up-short\"></i></a>\r\n");
      out.write("\r\n");
      out.write("  <!-- Vendor JS Files -->\r\n");
      out.write("  <script src=\"assets/vendor/purecounter/purecounter_vanilla.js\"></script>\r\n");
      out.write("  <script src=\"assets/vendor/aos/aos.js\"></script>\r\n");
      out.write("  <script src=\"assets/vendor/bootstrap/js/bootstrap.bundle.min.js\"></script>\r\n");
      out.write("  <script src=\"assets/vendor/glightbox/js/glightbox.min.js\"></script>\r\n");
      out.write("  <script src=\"assets/vendor/swiper/swiper-bundle.min.js\"></script>\r\n");
      out.write("  <script src=\"assets/vendor/php-email-form/validate.js\"></script>\r\n");
      out.write("\r\n");
      out.write("  <!-- Template Main JS File -->\r\n");
      out.write("  <script src=\"assets/js/main.js\"></script>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
      out.write("</html>\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
