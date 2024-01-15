<%-- 
    Document   : service1
    Created on : Jan 12, 2024, 10:03:55 PM
    Author     : Admin
--%>

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
                        <li><a class="nav-link scrollto" href="#appointment">Make Appointment</a></li>

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
                            <li><a href="department1.jsp">Department</a></li>
                            <li>Service 1</li>
                        </ol>
                    </div>

                </div>
            </section><!-- End Breadcrumbs Section -->

            <section class="inner-page">
                <div class="container">
                    <!-- ======= Departments Section ======= -->
                    <section id="departments" class="departments">
                        <div class="container" data-aos="fade-up">

                            <div class="section-title">
                                <h2>Tên service</h2>
                                <p>Giới thiệu tổng quan</p>
                            </div>

                            <div class="row" data-aos="fade-up" data-aos-delay="100">
                                <div class="col-lg-4 mb-5 mb-lg-0">
                                    <ul class="nav nav-tabs flex-column">
                                        <li class="nav-item">
                                            <a class="nav-link active show" data-bs-toggle="tab" data-bs-target="#tab-1">
                                                <h4>Lịch sử</h4>
                                                <p>Quis excepturi porro totam sint earum quo nulla perspiciatis eius.</p>
                                            </a>
                                        </li>
                                        <li class="nav-item mt-2">
                                            <a class="nav-link" data-bs-toggle="tab" data-bs-target="#tab-2">
                                                <h4>Kỹ thuật điều trị</h4>
                                                <p>Voluptas vel esse repudiandae quo excepturi.</p>
                                            </a>
                                        </li>
                                        <li class="nav-item mt-2">
                                            <a class="nav-link" data-bs-toggle="tab" data-bs-target="#tab-3">
                                                <h4>Cơ sở vật chất</h4>
                                                <p>Velit veniam ipsa sit nihil blanditiis mollitia natus.</p>
                                            </a>
                                        </li>
                                        <li class="nav-item mt-2">
                                            <a class="nav-link" data-bs-toggle="tab" data-bs-target="#tab-4">
                                                <h4>Thành tựu</h4>
                                                <p>Ratione hic sapiente nostrum doloremque illum nulla praesentium id</p>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="col-lg-8">
                                    <div class="tab-content">
                                        <div class="tab-pane active show" id="tab-1">
                                            <h3>Lịch sử</h3>
                                            <p class="fst-italic">Qui laudantium consequatur laborum sit qui ad sapiente dila parde sonata raqer a videna mareta paulona marka</p>
                                            <img src="assets/img/departments-1.jpg" alt="" class="img-fluid">
                                            <p>Et nobis maiores eius. Voluptatibus ut enim blanditiis atque harum sint. Laborum eos ipsum ipsa odit magni. Incidunt hic ut molestiae aut qui. Est repellat minima eveniet eius et quis magni nihil. Consequatur dolorem quaerat quos qui similique accusamus nostrum rem vero</p>
                                        </div>
                                        <div class="tab-pane" id="tab-2">
                                            <h3>Kỹ thuật điều trị</h3>
                                            <p class="fst-italic">Qui laudantium consequatur laborum sit qui ad sapiente dila parde sonata raqer a videna mareta paulona marka</p>
                                            <img src="assets/img/departments-2.jpg" alt="" class="img-fluid">
                                            <p>Et nobis maiores eius. Voluptatibus ut enim blanditiis atque harum sint. Laborum eos ipsum ipsa odit magni. Incidunt hic ut molestiae aut qui. Est repellat minima eveniet eius et quis magni nihil. Consequatur dolorem quaerat quos qui similique accusamus nostrum rem vero</p>
                                        </div>
                                        <div class="tab-pane" id="tab-3">
                                            <h3>Cơ sở vật chất</h3>
                                            <p class="fst-italic">Qui laudantium consequatur laborum sit qui ad sapiente dila parde sonata raqer a videna mareta paulona marka</p>
                                            <img src="assets/img/departments-3.jpg" alt="" class="img-fluid">
                                            <p>Et nobis maiores eius. Voluptatibus ut enim blanditiis atque harum sint. Laborum eos ipsum ipsa odit magni. Incidunt hic ut molestiae aut qui. Est repellat minima eveniet eius et quis magni nihil. Consequatur dolorem quaerat quos qui similique accusamus nostrum rem vero</p>
                                        </div>
                                        <div class="tab-pane" id="tab-4">
                                            <h3>Thành tựu</h3>
                                            <p class="fst-italic">Qui laudantium consequatur laborum sit qui ad sapiente dila parde sonata raqer a videna mareta paulona marka</p>
                                            <img src="assets/img/departments-4.jpg" alt="" class="img-fluid">
                                            <p>Et nobis maiores eius. Voluptatibus ut enim blanditiis atque harum sint. Laborum eos ipsum ipsa odit magni. Incidunt hic ut molestiae aut qui. Est repellat minima eveniet eius et quis magni nihil. Consequatur dolorem quaerat quos qui similique accusamus nostrum rem vero</p>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </section><!-- End Departments Section -->

            </section><!-- End Services Section -->
            
            <!-- ======= Testimonials Section ======= -->
            <section id="testimonials" class="testimonials">
                <div class="container" data-aos="fade-up">

                    <div class="section-title">
                        <h2>Feedback</h2>
                        <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas.</p>
                    </div>

                    <div class="testimonials-slider swiper" data-aos="fade-up" data-aos-delay="100">
                        <div class="swiper-wrapper">

                            <div class="swiper-slide">
                                <div class="testimonial-item">
                                    <p>
                                        <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                                        Proin iaculis purus consequat sem cure digni ssim donec porttitora entum suscipit rhoncus. Accusantium quam, ultricies eget id, aliquam eget nibh et. Maecen aliquam, risus at semper.
                                        <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                                    </p>
                                    <img src="assets/img/testimonials/testimonials-1.jpg" class="testimonial-img" alt="">
                                    <h3>Saul Goodman</h3>
                                    <h4>Ceo &amp; Founder</h4>
                                </div>
                            </div><!-- End testimonial item -->

                            <div class="swiper-slide">
                                <div class="testimonial-item">
                                    <p>
                                        <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                                        Export tempor illum tamen malis malis eram quae irure esse labore quem cillum quid cillum eram malis quorum velit fore eram velit sunt aliqua noster fugiat irure amet legam anim culpa.
                                        <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                                    </p>
                                    <img src="assets/img/testimonials/testimonials-2.jpg" class="testimonial-img" alt="">
                                    <h3>Sara Wilsson</h3>
                                    <h4>Designer</h4>
                                </div>
                            </div><!-- End testimonial item -->

                            <div class="swiper-slide">
                                <div class="testimonial-item">
                                    <p>
                                        <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                                        Enim nisi quem export duis labore cillum quae magna enim sint quorum nulla quem veniam duis minim tempor labore quem eram duis noster aute amet eram fore quis sint minim.
                                        <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                                    </p>
                                    <img src="assets/img/testimonials/testimonials-3.jpg" class="testimonial-img" alt="">
                                    <h3>Jena Karlis</h3>
                                    <h4>Store Owner</h4>
                                </div>
                            </div><!-- End testimonial item -->

                            <div class="swiper-slide">
                                <div class="testimonial-item">
                                    <p>
                                        <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                                        Fugiat enim eram quae cillum dolore dolor amet nulla culpa multos export minim fugiat minim velit minim dolor enim duis veniam ipsum anim magna sunt elit fore quem dolore labore illum veniam.
                                        <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                                    </p>
                                    <img src="assets/img/testimonials/testimonials-4.jpg" class="testimonial-img" alt="">
                                    <h3>Matt Brandon</h3>
                                    <h4>Freelancer</h4>
                                </div>
                            </div><!-- End testimonial item -->

                            <div class="swiper-slide">
                                <div class="testimonial-item">
                                    <p>
                                        <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                                        Quis quorum aliqua sint quem legam fore sunt eram irure aliqua veniam tempor noster veniam enim culpa labore duis sunt culpa nulla illum cillum fugiat legam esse veniam culpa fore nisi cillum quid.
                                        <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                                    </p>
                                    <img src="assets/img/testimonials/testimonials-5.jpg" class="testimonial-img" alt="">
                                    <h3>John Larson</h3>
                                    <h4>Entrepreneur</h4>
                                </div>
                            </div><!-- End testimonial item -->

                        </div>
                        <div class="swiper-pagination"></div>
                    </div>

                </div>
            </section><!-- End Testimonials Section -->

            <!-- ======= Appointment Section ======= -->
            <section id="appointment" class="appointment section-bg">
                <div class="container" data-aos="fade-up">

                    <div class="section-title">
                        <h2>Make an Appointment</h2>
                        <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas.</p>
                    </div>

                    <form action="forms/appointment.php" method="post" role="form" class="php-email-form" data-aos="fade-up" data-aos-delay="100">
                        <div class="row">
                            <div class="col-md-4 form-group">
                                <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" required>
                            </div>
                            <div class="col-md-4 form-group mt-3 mt-md-0">
                                <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" required>
                            </div>
                            <div class="col-md-4 form-group mt-3 mt-md-0">
                                <input type="tel" class="form-control" name="phone" id="phone" placeholder="Your Phone" required>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4 form-group mt-3">
                                <input type="datetime" name="date" class="form-control datepicker" id="date" placeholder="Appointment Date" required>
                            </div>
                            <div class="col-md-4 form-group mt-3">
                                <select name="department" id="department" class="form-select">
                                    <option value="">Chọn thời gian khám</option>
                                    <option value="Department 1">Department 1</option>
                                    <option value="Department 2">Department 2</option>
                                    <option value="Department 3">Department 3</option>
                                </select>
                            </div>
                            <div class="col-md-4 form-group mt-3">
                                <select name="doctor" id="doctor" class="form-select">
                                    <option value="">Chọn bác sĩ</option>
                                    <option value="Doctor 1">Doctor 1</option>
                                    <option value="Doctor 2">Doctor 2</option>
                                    <option value="Doctor 3">Doctor 3</option>
                                </select>
                            </div>
                        </div>

                        <div class="form-group mt-3">
                            <textarea class="form-control" name="message" rows="5" placeholder="Message (Optional)"></textarea>
                        </div>
                        <div class="my-3">
                            <div class="loading">Loading</div>
                            <div class="error-message"></div>
                            <div class="sent-message">Your appointment request has been sent successfully. Thank you!</div>
                        </div>
                        <div class="text-center"><button type="submit">Make an Appointment</button></div>
                    </form>

                </div>
            </section><!-- End Appointment Section -->
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
