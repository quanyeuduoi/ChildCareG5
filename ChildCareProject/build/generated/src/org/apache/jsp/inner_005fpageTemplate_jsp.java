package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class inner_005fpageTemplate_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta content=\"width=device-width, initial-scale=1.0\" name=\"viewport\">\n");
      out.write("\n");
      out.write("        <title>Inner Page - Medicio Bootstrap Template</title>\n");
      out.write("        <meta content=\"\" name=\"description\">\n");
      out.write("        <meta content=\"\" name=\"keywords\">\n");
      out.write("\n");
      out.write("        <!-- Favicons -->\n");
      out.write("        <link href=\"assets/img/favicon.png\" rel=\"icon\">\n");
      out.write("        <link href=\"assets/img/apple-touch-icon.png\" rel=\"apple-touch-icon\">\n");
      out.write("\n");
      out.write("        <!-- Google Fonts -->\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <!-- Vendor CSS Files -->\n");
      out.write("        <link href=\"assets/vendor/fontawesome-free/css/all.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"assets/vendor/animate.css/animate.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"assets/vendor/aos/aos.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"assets/vendor/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"assets/vendor/bootstrap-icons/bootstrap-icons.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"assets/vendor/boxicons/css/boxicons.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"assets/vendor/glightbox/css/glightbox.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"assets/vendor/swiper/swiper-bundle.min.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- Template Main CSS File -->\n");
      out.write("        <link href=\"assets/css/style.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"assets/css/form.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <!-- =======================================================\n");
      out.write("        * Template Name: Medicio\n");
      out.write("        * Updated: Jan 09 2024 with Bootstrap v5.3.2\n");
      out.write("        * Template URL: https://bootstrapmade.com/medicio-free-bootstrap-theme/\n");
      out.write("        * Author: BootstrapMade.com\n");
      out.write("        * License: https://bootstrapmade.com/license/\n");
      out.write("        ======================================================== -->\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        <!-- ======= Top Bar ======= -->\n");
      out.write("        <div id=\"topbar\" class=\"d-flex align-items-center fixed-top\">\n");
      out.write("            <div class=\"container d-flex align-items-center justify-content-center justify-content-md-between\">\n");
      out.write("                <div class=\"align-items-center d-none d-md-flex\">\n");
      out.write("                    <i class=\"bi bi-clock\"></i> Monday - Saturday, 8AM to 10PM\n");
      out.write("                </div>\n");
      out.write("                <div class=\"d-flex align-items-center\">\n");
      out.write("                    <i class=\"bi bi-phone\"></i> Call us now +1 5589 55488 55\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <!-- ======= Header ======= -->\n");
      out.write("        <header id=\"header\" class=\"fixed-top\">\n");
      out.write("            <div class=\"container d-flex align-items-center\">\n");
      out.write("\n");
      out.write("                <a href=\"homepage.jsp\" class=\"logo me-auto\"><img src=\"assets/img/logo.png\" alt=\"\"></a>\n");
      out.write("                <!-- Uncomment below if you prefer to use an image logo -->\n");
      out.write("                <!-- <h1 class=\"logo me-auto\"><a href=\"index.html\">Medicio</a></h1> -->\n");
      out.write("\n");
      out.write("                <nav id=\"navbar\" class=\"navbar order-last order-lg-0\">\n");
      out.write("                    <ul>\n");
      out.write("                        <li><a class=\"nav-link scrollto \" href=\"homepage.jsp\">Home</a></li>\n");
      out.write("                        <li><a class=\"nav-link scrollto\" href=\"#about\">Order History</a></li>\n");
      out.write("                        <li><a class=\"nav-link scrollto\" href=\"doctor.jsp\">Doctors</a></li>\n");
      out.write("                        <li class=\"dropdown\"><a href=\"#\"><span>Service</span> <i class=\"bi bi-chevron-down\"></i></a>\n");
      out.write("                            <ul>\n");
      out.write("                                <li><a href=\"department1.jsp\">Department 1</a></li>\n");
      out.write("                                <li><a href=\"department1.jsp\">Department 2</a></li>\n");
      out.write("                                <li><a href=\"department1.jsp\">Department 3</a></li>\n");
      out.write("                                <li><a href=\"department1.jsp\">Department 4</a></li>\n");
      out.write("                                <li><a href=\"department1.jsp\">Department 5</a></li>\n");
      out.write("                            </ul>\n");
      out.write("                        </li>\n");
      out.write("\n");
      out.write("                    </ul>\n");
      out.write("                    <i class=\"bi bi-list mobile-nav-toggle\"></i>\n");
      out.write("                </nav><!-- .navbar -->\n");
      out.write("\n");
      out.write("                <a href=\"LoginRegister.jsp\" class=\"appointment-btn scrollto\"><span class=\"d-none d-md-inline\">Login</span></a>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </header><!-- End Header -->\n");
      out.write("\n");
      out.write("        <main id=\"main\">\n");
      out.write("\n");
      out.write("            <!-- ======= Breadcrumbs Section ======= -->\n");
      out.write("            <section class=\"breadcrumbs\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("\n");
      out.write("                    <div class=\"d-flex justify-content-between align-items-center\">\n");
      out.write("                        <h2>Inner Page</h2>\n");
      out.write("                        <ol>\n");
      out.write("                            <li><a href=\"index.html\">Home</a></li>\n");
      out.write("                            <li>Inner Page</li>\n");
      out.write("                        </ol>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("            </section><!-- End Breadcrumbs Section -->\n");
      out.write("\n");
      out.write("            <section class=\"inner-page\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <p>\n");
      out.write("                        Example inner page template\n");
      out.write("                    </p>\n");
      out.write("                </div>\n");
      out.write("            </section>\n");
      out.write("\n");
      out.write("        </main><!-- End #main -->\n");
      out.write("\n");
      out.write("        <!-- ======= Footer ======= -->\n");
      out.write("        <footer id=\"footer\">\n");
      out.write("            <div class=\"footer-top\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("\n");
      out.write("                        <div class=\"col-lg-3 col-md-6\">\n");
      out.write("                            <div class=\"footer-info\">\n");
      out.write("                                <h3>Medicio</h3>\n");
      out.write("                                <p>\n");
      out.write("                                    A108 Adam Street <br>\n");
      out.write("                                    NY 535022, USA<br><br>\n");
      out.write("                                    <strong>Phone:</strong> +1 5589 55488 55<br>\n");
      out.write("                                    <strong>Email:</strong> info@example.com<br>\n");
      out.write("                                </p>\n");
      out.write("                                <div class=\"social-links mt-3\">\n");
      out.write("                                    <a href=\"#\" class=\"twitter\"><i class=\"bx bxl-twitter\"></i></a>\n");
      out.write("                                    <a href=\"#\" class=\"facebook\"><i class=\"bx bxl-facebook\"></i></a>\n");
      out.write("                                    <a href=\"#\" class=\"instagram\"><i class=\"bx bxl-instagram\"></i></a>\n");
      out.write("                                    <a href=\"#\" class=\"google-plus\"><i class=\"bx bxl-skype\"></i></a>\n");
      out.write("                                    <a href=\"#\" class=\"linkedin\"><i class=\"bx bxl-linkedin\"></i></a>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"col-lg-2 col-md-6 footer-links\">\n");
      out.write("                            <h4>Useful Links</h4>\n");
      out.write("                            <ul>\n");
      out.write("                                <li><i class=\"bx bx-chevron-right\"></i> <a href=\"#\">Home</a></li>\n");
      out.write("                                <li><i class=\"bx bx-chevron-right\"></i> <a href=\"#\">About us</a></li>\n");
      out.write("                                <li><i class=\"bx bx-chevron-right\"></i> <a href=\"#\">Services</a></li>\n");
      out.write("                                <li><i class=\"bx bx-chevron-right\"></i> <a href=\"#\">Terms of service</a></li>\n");
      out.write("                                <li><i class=\"bx bx-chevron-right\"></i> <a href=\"#\">Privacy policy</a></li>\n");
      out.write("                            </ul>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"col-lg-3 col-md-6 footer-links\">\n");
      out.write("                            <h4>Our Services</h4>\n");
      out.write("                            <ul>\n");
      out.write("                                <li><i class=\"bx bx-chevron-right\"></i> <a href=\"#\">Web Design</a></li>\n");
      out.write("                                <li><i class=\"bx bx-chevron-right\"></i> <a href=\"#\">Web Development</a></li>\n");
      out.write("                                <li><i class=\"bx bx-chevron-right\"></i> <a href=\"#\">Product Management</a></li>\n");
      out.write("                                <li><i class=\"bx bx-chevron-right\"></i> <a href=\"#\">Marketing</a></li>\n");
      out.write("                                <li><i class=\"bx bx-chevron-right\"></i> <a href=\"#\">Graphic Design</a></li>\n");
      out.write("                            </ul>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"col-lg-4 col-md-6 footer-newsletter\">\n");
      out.write("                            <h4>Our Newsletter</h4>\n");
      out.write("                            <p>Tamen quem nulla quae legam multos aute sint culpa legam noster magna</p>\n");
      out.write("                            <form action=\"\" method=\"post\">\n");
      out.write("                                <input type=\"email\" name=\"email\"><input type=\"submit\" value=\"Subscribe\">\n");
      out.write("                            </form>\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"copyright\">\n");
      out.write("                    &copy; Copyright <strong><span>Medicio</span></strong>. All Rights Reserved\n");
      out.write("                </div>\n");
      out.write("                <div class=\"credits\">\n");
      out.write("                    <!-- All the links in the footer should remain intact. -->\n");
      out.write("                    <!-- You can delete the links only if you purchased the pro version. -->\n");
      out.write("                    <!-- Licensing information: https://bootstrapmade.com/license/ -->\n");
      out.write("                    <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/medicio-free-bootstrap-theme/ -->\n");
      out.write("                    Designed by <a href=\"https://bootstrapmade.com/\">BootstrapMade</a>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </footer><!-- End Footer -->\n");
      out.write("\n");
      out.write("        <div id=\"preloader\"></div>\n");
      out.write("        <a href=\"#\" class=\"back-to-top d-flex align-items-center justify-content-center\"><i class=\"bi bi-arrow-up-short\"></i></a>\n");
      out.write("\n");
      out.write("        <!-- Vendor JS Files -->\n");
      out.write("        <script src=\"assets/vendor/purecounter/purecounter_vanilla.js\"></script>\n");
      out.write("        <script src=\"assets/vendor/aos/aos.js\"></script>\n");
      out.write("        <script src=\"assets/vendor/bootstrap/js/bootstrap.bundle.min.js\"></script>\n");
      out.write("        <script src=\"assets/vendor/glightbox/js/glightbox.min.js\"></script>\n");
      out.write("        <script src=\"assets/vendor/swiper/swiper-bundle.min.js\"></script>\n");
      out.write("        <script src=\"assets/vendor/php-email-form/validate.js\"></script>\n");
      out.write("\n");
      out.write("        <!-- Template Main JS File -->\n");
      out.write("        <script src=\"assets/js/main.js\"></script>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("\n");
      out.write("</html>\n");
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
