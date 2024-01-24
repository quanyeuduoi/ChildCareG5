<%-- 
    Document   : loginForm
    Created on : Jan 13, 2024, 12:14:54 PM
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
                                        <li><a href="department1.jsp">Department 1</a></li>
                                        <li><a href="department1.jsp">Department 2</a></li>
                                        <li><a href="department1.jsp">Department 3</a></li>
                                        <li><a href="department1.jsp">Department 4</a></li>
                                        <li><a href="department1.jsp">Department 5</a></li>
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
                        <h2>User Detail</h2>
                        <ol>
                            <li><a href="homepage.jsp">Home</a></li>
                            <li>User Detail</li>
                        </ol>
                    </div>

                </div>
            </section><!-- End Breadcrumbs Section -->

            <section class="inner-page">
                <div class="container">
                    <div class="container bootstrap snippets bootdey">
                        <h1 class="text-primary">Edit Profile</h1>
                        <hr>
                        <div class="row">

                            <div class="col-md-3">
                                <div class="text-center">
                                    <img src="https://bootdey.com/img/Content/avatar/avatar7.png" class="avatar img-circle img-thumbnail" alt="avatar">
                                    <h6>Upload a different photo...</h6>
                                    <input type="file" class="form-control">
                                </div>
                            </div>

                            <div class="col-md-9 personal-info">
                                <div class="alert alert-info alert-dismissable">
                                    <a class="panel-close close" data-dismiss="alert">×</a>
                                    <i class="fa fa-coffee"></i>
                                    This is an <strong>.alert</strong>. Use this to show important messages to the user.
                                </div>
                                <h3>Personal info</h3>
                                <form class="form-horizontal" action="userDetail?email=${cus.getEmail()}" method="post" role="form" id="userForm">
                                    <div class="form-group">
                                        <label class="col-lg-3 control-label">Full name:</label>
                                        <div class="col-lg-8">
                                            <input class="form-control" type="text" name="fullName" pattern="[A-Za-zÀ-ỹ ]+" value="${cus.getFullName()}" readonly>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-lg-3 control-label">Address</label>
                                        <div class="col-lg-8">
                                            <input class="form-control" type="text" name="address" value="${cus.getAddress()}" readonly>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-lg-3 control-label">Email:</label>
                                        <div class="col-lg-8">
                                            <input class="form-control" type="email" disabled value="${cus.getEmail()}">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-lg-3 control-label">Phone: </label>
                                        <div class="col-lg-8">
                                            <input class="form-control" type="text" name="phone" pattern="[0-9]+" value="${cus.getPhoneNumber()}" readonly>
                                        </div>
                                    </div>
                                    <button type="button" onclick="toggleEditSave()">Edit</button>
                                    <a href="<%= request.getRequestURI() %>" style="display:none;">BACK</a>
                                    <button type="submit" style="display:none;">Save</button>
                                </form>

                                <script>
                                    function toggleEditSave() {
                                        var editButton = document.querySelector('#userForm button:nth-of-type(1)');
                                        var backButton = document.querySelector('#userForm a');
                                        var saveButton = document.querySelector('#userForm button:nth-of-type(2)');
                                        var readOnlyInputs = document.querySelectorAll('#userForm input[readonly]');

                                        if (editButton.textContent.trim() === 'Edit') {
                                            // Switch to edit mode
                                            editButton.style.display = 'none';
                                            saveButton.style.display = 'inline-block';
                                            backButton.style.display = 'inline-block';
                                            for (var i = 0; i < readOnlyInputs.length; i++) {
                                                readOnlyInputs[i].removeAttribute('readonly');
                                            }
                                        } else {
                                            // Switch back to view mode
                                            editButton.textContent = 'Edit';
                                            saveButton.style.display = 'none';
                                            backButton.style.display = 'none';
                                            for (var i = 0; i < readOnlyInputs.length; i++) {
                                                readOnlyInputs[i].setAttribute('readonly', 'readonly');
                                            }
                                        }
                                    }

                                </script>




                            </div>
                        </div>
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
