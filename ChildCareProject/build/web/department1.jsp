<%-- 
    Document   : inner-page
    Created on : Jan 12, 2024, 9:52:27 PM
    Author     : Admin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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

        <c:choose>
            <c:when test="${sessionScope.cus ne null}">
                <!-- ======= Header ======= -->
                <header id="header" class="fixed-top">
                    <div class="container d-flex align-items-center">

                        <a href="homepage.jsp" class="logo me-auto"><img src="assets/img/logo.png" alt=""></a>
                        <!-- Uncomment below if you prefer to use an image logo -->
                        <!-- <h1 class="logo me-auto"><a href="index.html">Medicio</a></h1> -->

                        <nav id="navbar" class="navbar order-last order-lg-0">
                            <ul>
                                <li><a class="nav-link scrollto " href="homepage.jsp">Home</a></li>
                                <li><a class="nav-link scrollto " href="post?index=1">Post</a></li>
                                <li><a class="nav-link scrollto" href="#about">Order History</a></li>
                                <li><a class="nav-link scrollto" href="doctor.jsp">Doctors</a></li>
                                <li class="dropdown"><a href="#"><span>Service</span> <i class="bi bi-chevron-down"></i></a>
                                    <ul>
                                        <c:forEach var="dep" items="${sessionScope.departmentList}">
                                            <li><a href="department1.jsp">${dep.departmentName}</a></li>   
                                            </c:forEach>
                                    </ul>
                                </li>
                                <li class="dropdown"><a href="#"><span>${cus.getFullName()}</span> <i class="bi bi-chevron-down"></i></a>
                                    <ul>
                                        <li><a href="userDetail?email=${cus.getEmail()}">My Account</a></li>
                                        <li><a href="logout">Log out</a></li>
                                    </ul>
                                </li>

                            </ul>
                            <i class="bi bi-list mobile-nav-toggle"></i>
                        </nav><!-- .navbar -->


                    </div>
                </header><!-- End Header -->
            </c:when>
            <c:otherwise>
                <!-- ======= Header ======= -->
                <header id="header" class="fixed-top">
                    <div class="container d-flex align-items-center">

                        <a href="homepage.jsp" class="logo me-auto"><img src="assets/img/logo.png" alt=""></a>
                        <!-- Uncomment below if you prefer to use an image logo -->
                        <!-- <h1 class="logo me-auto"><a href="index.html">Medicio</a></h1> -->

                        <nav id="navbar" class="navbar order-last order-lg-0">
                            <ul>
                                <li><a class="nav-link scrollto " href="homepage.jsp">Home</a></li>
                                <li><a class="nav-link scrollto " href="post?index=1">Post</a></li>
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
            </c:otherwise>
        </c:choose>


        <main id="main">


            <!-- ======= Breadcrumbs Section ======= -->
            <section class="breadcrumbs">
                <div class="container">

                    <div class="d-flex justify-content-between align-items-center">
                        <h2>Service</h2>
                        <ol>
                            <li><a href="homepage.jsp">Home</a></li>
                            <li>Department 1</li>
                        </ol>
                    </div>

                </div>
            </section><!-- End Breadcrumbs Section -->



            <section class="inner-page">
                <div class="container">
                    <form action="searchService" method="post" novalidate="novalidate">
                        <div class="row justify-content-center">
                            <div class="col-lg-6 col-md-8 col-sm-10">
                                <div class="row">
                                    <div class="col-6 col-sm-5 p-0">
                                        <input type="text" class="form-control form-control-sm search-slt" placeholder="Search" value="${txtNameService}" name="txtNameService">
                                    </div>
                                    <div class="col-6 col-sm-5 p-0">
                                        <div class="d-flex">
                                            <select id="department" name="department" class="form-control form-control-sm search-slt">
                                                <option>Department</option>
                                                <c:forEach var="dept" items="${sessionScope.departmentList}">
                                                    <option value="${dept.departmentID}">${dept.departmentName}</option>
                                                </c:forEach>
                                            </select>
                                                <button type="button" class="btn btn-sm btn-danger wrn-btn ml-2" background-color:#3FBBC0
                                                        color: #fff>Search</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                    <!-- ======= Featured Services Section ======= -->
                    <section id="featured-services" class="featured-services">
                        <div class="container" data-aos="fade-up">
                            <div class="row">

                                <c:forEach var="service" items="${serviceList}">
                                    <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">
                                        <div class="icon-box" data-aos="fade-up" data-aos-delay="100">
                                            <div class="icon"><i class="fas fa-heartbeat"></i></div>
                                            <h4 class="title"><a href="#">${service.serviceName}</a></h4>
                                            <p class="description">${service.serviceDescription}</p>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </section>  <!-- End Featured Services Section -->

                    <div class="pagination-wrap">
                        <!--                            <nav aria-label="Page navigation example">
                                                        <ul class="pagination">
                                                            <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                        <c:forEach begin="1" end="${end}" var="i">
                            <li class="page-item"><a class="page-link" href="post?index=${i}">${i}</a></li>
                        </c:forEach>
                        <li class="page-item"><a class="page-link" href="#">Next</a></li>
                    </ul>
                </nav>-->
                        <!-- ======= Hien thi phan trang phia frontend ======= -->
                        <nav aria-label="Page navigation example">
                            <ul class="pagination">
                                <c:if test="${empty index or index eq 1}"> <!-- CONSIDER INDEX EQUAL 1 ==> DISABLE PREVIOUS -->
                                    <li class="page-item disabled">
                                        <a class="page-link" href="#">Previous</a>
                                    </li>
                                </c:if>
                                <c:if test="${not (empty index or index eq 1)}"> 
                                    <li class="page-item">
                                        <a class="page-link" href="departmentDetail?index=${index - 1}">Previous</a>
                                    </li>
                                </c:if>

                                <c:forEach begin="1" end="${end}" var="i">
                                    <c:set var="activeClass" value="${(not empty index and index eq i) ? 'active' : ''}"/>
                                    <li class="page-item ${activeClass}">
                                        <a class="page-link" href="departmentDetail?index=${i}">${i}</a>
                                    </li>
                                </c:forEach>

                                <c:if test="${empty index or index eq end}"> <!-- CONSIDER INDEX EQUAL ENDP ==> DISABLE NEXT -->
                                    <li class="page-item disabled">
                                        <a class="page-link" href="#">Next</a>
                                    </li>
                                </c:if>

                                <c:if test="${index < end}">
                                    <li class="page-item">
                                        <a class="page-link" href="departmentDetail?index=${index + 1}">Next</a>
                                    </li>
                                </c:if>
                            </ul>
                        </nav>

                    </div>

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
