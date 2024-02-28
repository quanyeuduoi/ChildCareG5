<%-- 
    Document   : doctor
    Created on : Jan 12, 2024, 11:18:13 PM
    Author     : Admin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dao.DepartmentDAO" %>
<%@page import="model.Department" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

        <title>Inner Page - Medicio Bootstrap Template</title>
        <meta content="" name="description">
        <meta content="" name="keywords">

        <!-- Favicons -->
        <link href="assets/img/favicon.png" rel="icon">
        <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

        <!-- Vendor CSS Files -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.18.0/font/bootstrap-icons.css" rel="stylesheet">
        <link href="assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
        <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
        <link href="assets/vendor/aos/aos.css" rel="stylesheet">
        <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
        <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
        <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
        <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

        <!-- Template Main CSS File -->
        <link href="assets/css/style.css" rel="stylesheet">

        <!-- =======================================================
        * Template Name: Medicio
        * Updated: Jan 09 2024 with Bootstrap v5.3.2
        * Template URL: https://bootstrapmade.com/medicio-free-bootstrap-theme/
        * Author: BootstrapMade.com
        * License: https://bootstrapmade.com/license/
        ======================================================== -->
    </head>

    <body>

        <!-- ======= Top Bar ======= -->
        <div id="topbar" class="d-flex align-items-center fixed-top">
            <div class="container d-flex align-items-center justify-content-center justify-content-md-between">
                <div class="align-items-center d-none d-md-flex">
                    <i class="bi bi-clock"></i> Monday - Saturday, 8AM to 10PM
                </div>
                <div class="d-flex align-items-center">
                    <i class="bi bi-phone"></i> Call us now +1 5589 55488 55
                </div>
            </div>
        </div>

        <!-- ======= Header ======= -->
        <header id="header" class="fixed-top">
            <div class="container d-flex align-items-center">

                <a href="homepage.jsp" class="logo me-auto"><img src="assets/img/logo.png" alt=""></a>
                <!-- Uncomment below if you prefer to use an image logo -->
                <!-- <h1 class="logo me-auto"><a href="index.html">Medicio</a></h1> -->

                <nav id="navbar" class="navbar order-last order-lg-0">
                    <ul>
                        <li><a class="nav-link scrollto " href="homepage.jsp">Home</a></li>
                        <li><a class="nav-link scrollto" href="#about">Order History</a></li>
                        <li><a class="nav-link scrollto" href="doctor.jsp">Doctors</a></li>
                        <li class="dropdown"><a href="#"><span>Service</span> <i class="bi bi-chevron-down"></i></a>
                            <ul>
                                <li><a href="department1.jsp">Department 1</a></li>
                                <li><a href="department1.jsp">Department 2</a></li>
                                <li><a href="department1.jsp">Department 3</a></li>
                                <li><a href="department1.jsp">Department 4</a></li>
                                <li><a href="department1.jsp">Department 5</a></li>
                            </ul>
                        </li>

                    </ul>
                    <i class="bi bi-list mobile-nav-toggle"></i>
                </nav><!-- .navbar -->

                <a href="LoginRegister.jsp" class="appointment-btn scrollto"><span class="d-none d-md-inline">Login</span></a>

            </div>
        </header><!-- End Header -->

        <main id="main">

            <!-- ======= Breadcrumbs Section ======= -->
            <section class="breadcrumbs">
                <div class="container">

                    <div class="d-flex justify-content-between align-items-center">
                        <h2>Inner Page</h2>
                        <ol>
                            <li><a href="homepage.jsp">Home</a></li>
                            <li>Doctor</li>
                        </ol>
                    </div>

                </div>
            </section><!-- End Breadcrumbs Section -->

            <section class="inner-page">
                <div class="container">
                    <!-- ======= Doctors Section ======= -->
                    <section id="doctors" class="doctors section-bg">
                        <div class="container" data-aos="fade-up">

                            <div class="section-title">
                                <h2>Doctors</h2>
                                <p>Tứ đại hào kiệt lăn lội quấy động giang hồ đã qua nhiều năm. Kẻ chết thì vô số còn kẻ sống thì chỉ đếm trên đầu ngón tay</p>
                            </div>
                            <!-- Search Bar and Button -->
                            <div class="row">
                                <div class="col-lg-6 offset-lg-3">
                                    <form action="searchDoctor" method="POST">
                                        <div class="input-group mb-3">
                                            <input type="text" class="form-control" placeholder="Input Doctor's name you want to find here." value="${requestScope.txtFullnameSearch}" name="txtFullnameSearch">
                                            <button class="appointment-btn scrollto" type="submit">
                                                <span class="d-none d-md-inline"><i class="bi bi-search"></i></span>
                                            </button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="row">
                                <c:forEach items = "${dlist}" var="o" >         
                                    <div class="col-lg-3 col-md-6 d-flex align-items-stretch">
                                        <div class="member" data-aos="fade-up" data-aos-delay="100">
                                            <div class="member-img">
                                                <img src="assets/img/doctors/doctors-1.jpg" class="img-fluid" alt="">
                                                <div class="social">
                                                    <a href=""><i class="bi bi-twitter"></i></a>
                                                    <a href=""><i class="bi bi-facebook"></i></a>
                                                    <a href=""><i class="bi bi-instagram"></i></a>
                                                    <a href=""><i class="bi bi-linkedin"></i></a>
                                                </div>
                                            </div>
                                            <div class="member-info">
                                                <h4>${o.fullName}</h4>
                                                <span>Age: ${o.age}</span>
                                                <span>Email: ${o.email}</span>
                                                <span>Department: ${o.departName}</span>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>

                        </div>
                    </section><!-- End Doctors Section -->
                </div>
            </section>

        </main><!-- End #main -->

        <!-- ======= Footer ======= -->
        <footer id="footer">
            <div class="footer-top">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-3 col-md-6">
                            <div class="footer-info">
                                <h3>Medicio</h3>
                                <p>
                                    A108 Adam Street <br>
                                    NY 535022, USA<br><br>
                                    <strong>Phone:</strong> +1 5589 55488 55<br>
                                    <strong>Email:</strong> info@example.com<br>
                                </p>
                                <div class="social-links mt-3">
                                    <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
                                    <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
                                    <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
                                    <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
                                    <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-2 col-md-6 footer-links">
                            <h4>Useful Links</h4>
                            <ul>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">Home</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">About us</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">Services</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">Terms of service</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">Privacy policy</a></li>
                            </ul>
                        </div>

                        <div class="col-lg-3 col-md-6 footer-links">
                            <h4>Our Services</h4>
                            <ul>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">Web Design</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">Web Development</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">Product Management</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">Marketing</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">Graphic Design</a></li>
                            </ul>
                        </div>

                        <div class="col-lg-4 col-md-6 footer-newsletter">
                            <h4>Our Newsletter</h4>
                            <p>Tamen quem nulla quae legam multos aute sint culpa legam noster magna</p>
                            <form action="" method="post">
                                <input type="email" name="email"><input type="submit" value="Subscribe">
                            </form>

                        </div>

                    </div>
                </div>
            </div>

            <div class="container">
                <div class="copyright">
                    &copy; Copyright <strong><span>Medicio</span></strong>. All Rights Reserved
                </div>
                <div class="credits">
                    <!-- All the links in the footer should remain intact. -->
                    <!-- You can delete the links only if you purchased the pro version. -->
                    <!-- Licensing information: https://bootstrapmade.com/license/ -->
                    <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/medicio-free-bootstrap-theme/ -->
                    Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
                </div>
            </div>
        </footer><!-- End Footer -->

        <div id="preloader"></div>
        <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

        <!-- Vendor JS Files -->
        <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
        <script src="assets/vendor/aos/aos.js"></script>
        <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
        <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
        <script src="assets/vendor/php-email-form/validate.js"></script>

        <!-- Template Main JS File -->
        <script src="assets/js/main.js"></script>

    </body>

</html>
