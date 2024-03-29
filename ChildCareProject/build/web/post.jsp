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
        <style type="text/css">
            body{
                margin-top:20px;
                background:#DCDCDC;
            }
            .content {
                padding: 35px 0px;
            }

            .post-list {
                padding: 90px 0px;
            }

            .post-detail {
                padding: 40px 0px;
                margin-top: 120px;
            }

            .post {
                width: 100%;
                float: left;
                -webkit-box-shadow: 0px 1px 3px rgba(0, 0, 0, 0.4);
                -moz-box-shadow: 0px 1px 3px rgba(0, 0, 0, 0.4);
                box-shadow: 0px 1px 3px rgba(0, 0, 0, 0.4);
                background: #fff;
                margin-bottom: 40px;
                border-radius: 3px;
            }

            .feature-post .thumbnail .author-info {
                padding: 20px 5px 20px 40px;
                text-align: left;
                min-height: 80px;
                background: #2c3840;
                float: left;
                width: 100%;
            }

            .post .post-type {
                float: left;
                width: 100%;
            }

            .post iframe {
                padding: 0px;
                margin: 0px;
            }

            .post .mejs-container {
                border-radius: 3px 3px 0px 0px;
                width: 100% !important;
            }

            .post .post-video {
                border-radius: 3px 3px 0px 0px;
            }

            .post .post-video iframe {
                width: 100%;
            }

            .post .post-video video {
                border-radius: 3px 3px 0px 0px;
            }

            .post .post-multiple-img a img {
                -webkit-transition: all 0.2s ease-in-out;
                -moz-transition: all 0.2s ease-in-out;
                -o-transition: all 0.2s ease-in-out;
                transition: all 0.2s ease-in-out;
                width: 100%;
                height: auto;
                display: block;
                min-height: 160px;
            }

            .post .post-multiple-img a {
                float: left;
                width: 100%;
                display: block;
            }

            .post .post-multiple-img a:hover img {
                opacity: 0.7;
            }

            .post .post-audio {
                height: auto;
            }

            .post .post-audio ._SMB-widget {
                width: 100%;
            }

            .post .post-quote blockquote {
                text-align: center;
                margin: 0px;
                padding: 25px 15px;
            }

            .post .post-quote blockquote h3 {
                color: #e74c3c;
                font-size: 36px;
                margin: 0px 0px 10px 0px;
            }

            .post .post-quote blockquote p {
                color: #333;
                font-size: 24px;
                font-weight: 300;
            }

            .post .post-img a {
                display: block;
            }

            .post .post-img:hover a img {
                opacity: 0.7;
            }

            .post .post-img a img {
                -webkit-transition: all 0.5s ease-in-out;
                -moz-transition: all 0.5s ease-in-out;
                -o-transition: all 0.5s ease-in-out;
                transition: all 0.5s ease-in-out;
                width: 100%;
                height: auto;
                border-radius: 3px 3px 0px 0px;
            }

            .post-detail .post .caption {
                padding: 55px 45px 0px 45px;
            }

            .post .caption {
                float: left;
                width: 100%;
                text-align: left;
                padding: 25px 25px;
            }

            .post .caption h3 {
                margin: 0px 0px 20px 0px;
                color: #36a0e7;
                font-weight: 300;
                font-size: 34px;
                line-height: 42px;
            }

            .post .caption p {
                line-height: 28px;
                margin-bottom: 20px;
                font-size: 16px;
            }

            .post .author-info {
                padding: 15px 15px 15px 15px;
                text-align: left;
                min-height: 60px;
                border-bottom: 1px solid #ddd;
                background: #fcfcfc;
                float: left;
                width: 100%;
            }

            .post .author-info .list-inline {
                margin: 0px;
            }

            .post .author-info ul li:first-child {
                border-left: none;
                padding-left: 0px;
            }

            .post .author-info ul li {
                float: left;
                border-left: 1px solid #ddd;
                padding-left: 20px;
                padding-right: 20px;
            }

            .post .author-info ul li p {
                line-height: 16px;
                color: #3b4952;
                font-weight: 300;
                font-size: 14px;
                margin: 0px;
            }

            .post .author-info ul li strong {
                color: #3b4952;
            }

            .post .author-info ul li a {
                color: #3b4952;
                font-weight: 700;
                font-size: 16px;
                line-height: 20px;
            }

            .post .author-info ul li a:hover {
                color: #e74c3c;
                text-decoration: none;
            }

            .post .author-info ul li .icon-box {
                margin-right: 15px;
                width: 36px;
                text-align: center;
                line-height: 36px;
                font-size: 30px;
                height: 36px;
                float: left;
                background: transparent;
                color: #aebbc5;
            }

            .post .author-info ul li .icon-box img {
                border-radius: 3px;
                width: 100%;
            }

            .post .author-info ul li .info {
                float: left;
            }

            .post .author-info.author-info-2 ul li:first-child {
                border-left: none;
                padding-left: 0px;
            }

            .post .author-info.author-info-2 ul li .icon-box {
                font-size: 28px;
            }

            .post .post-category {
                float: left;
                width: 100%;
                text-align: left;
                margin-bottom: 20px;
            }

            .post .post-category a {
                margin: 0px;
                font-size: 18px;
                font-weight: 300;
                color: #3b4952;
            }

            .post .post-category span {
                width: 12px;
                height: 12px;
                display: inline-block;
                background: #3b4952;
                vertical-align: middle;
                margin-right: 10px;
            }

            .post .post-category a:hover span {
                background: #e74c3c;
                color: #e74c3c;
            }

            .post .post-category a:hover {
                color: #e74c3c;
            }

            .post .tags {
                float: left;
                width: 100%;
                margin-bottom: 20px;
            }

            .post .tags li {
                margin-bottom: 8px;
                padding: 0px 2px;
            }

            .post .tags li a {
                background: #ebf1f4;
                font-size: 14px;
                font-weight: 300;
                border-radius: 3px;
                padding: 4px 8px;
                color: #3b4952;
            }

            .post .tags li a:hover {
                background: #3b4952;
                color: #fff;
            }

            .img-grid {
                float: left;
                margin-bottom: 40px;
            }

            .img-grid li {
                margin: 0px;
                float: left;
            }

            .post .caption h5 {
                text-decoration: underline;
                margin: 0px 0px 20px 0px;
                color: #3b4952;
                font-weight: 300;
                font-size: 24px;
                line-height: 30px;
            }

            .post .list-unstyled {
                margin-bottom: 40px;
            }

            .post .list-unstyled li {
                font-size: 16px;
                line-height: 28px;
                font-weight: 500;
                color: #49545b;
            }

            .post .list-unstyled li i {
                color: #a0b9ca;
                margin-right: 15px;
            }

            blockquote {
                background: #f2f6f8;
                border: 1px solid #e5e5e5;
                line-height: 28px;
                margin-bottom: 40px;
                font-size: 16px;
                font-weight: 500;
                color: #49545b;
            }

            .line-block {
                padding: 20px 45px;
                border-top: 1px solid #eef3f6;
                border-bottom: 1px solid #eef3f6;
                float: left;
                width: 100%;
            }

            .post .line-block .tags {
                margin-bottom: 0px;
            }

            .share-this {
                padding: 20px 45px;
                border-bottom: 1px solid #eef3f6;
                float: left;
                width: 100%;
            }

            .share-this p,
            .share-this ul {
                margin-bottom: 0px;
            }

            .share-this li a {
                background: #2c3840;
                line-height: 34px;
                text-align: center;
                color: #fff;
                width: 32px;
                height: 32px;
                display: block;
                border-radius: 50%;
            }

            .share-this li a.pinterest {
                background: #d91c1c;
            }

            .share-this li a.google-plus {
                background: #f25353;
            }

            .share-this li a.facebook {
                background: #2b77be;
            }

            .share-this li a.twitter {
                background: #62bfef;
            }

            .related-post {
                padding: 40px 45px;
                border-bottom: 1px solid #eef3f6;
                float: left;
                width: 100%;
            }

            .related-post .thumbnail {
                padding: 0px;
                border: none;
            }

            .related-post .thumbnail .caption {
                padding: 30px 0px 0px 0px;
            }

            .related-post .thumbnail .caption a {
                font-size: 18px;
                line-height: 28px;
                font-weight: 300;
                color: #49545b;
            }

            .related-post .thumbnail .caption a:hover {
                color: #36a0e7;
            }

            .related-post .thumbnail:hover a img {
                opacity: 0.7;
            }

            .related-post h4 {
                color: #49545b;
                font-weight: 700;
                font-size: 18px;
                margin: 0px 0px 20px 0px;
            }

            .comment-count {
                padding: 45px 45px;
                border-bottom: 1px solid #eef3f6;
                float: left;
                width: 100%;
            }

            .comment-count h4 {
                font-weight: 500;
                font-size: 24px;
                color: #3b4952;
            }

            .comment-count p {
                margin-bottom: 0px;
            }

            .comment-list {
                float: left;
                width: 100%;
            }

            .comment-list .media:first-child {
                margin-top: 0px;
                border-bottom: 1px solid #eef3f6;
            }

            .comment-list .media {
                padding: 30px 45px;
                margin-top: 0px;
            }

            .comment-list .media .media-body .media {
                padding-top: 30px;
                padding-bottom: 30px;
                padding-left: 30px;
                padding-right: 30px;
                margin-left: -80px;
                border-left: 1px solid #eef3f6;
                border-bottom: 1px solid #eef3f6;
            }

            .comment-list .media .media-body {
                position: relative;
            }

            .comment-list .media .media-left {
                padding-right: 20px;
            }

            .comment-list .media .nested-first {
                margin-top: 30px;
                border-top: 1px solid #eef3f6;
            }

            .comment-list .media .nested-first:before {
                position: absolute;
                left: -80px;
                top: 90px;
                content: '';
                width: 1px;
                background: #eef3f6;
                height: 170px;
            }

            .comment-list .media,
            .comment-list .media-body {
                overflow: visible;
                zoom: 1;
            }

            .comment-list .media .media-body ul {
                margin-bottom: 0px;
            }

            .comment-list .media .media-body ul li a {
                color: #919ea8;
                font-size: 18px;
                font-weight: 500;
            }

            .comment-list .media .media-body ul li a:hover {
                color: #36a0e7;
            }

            .comment-list .media .media-body ul li a.reply-btn {
                color: #49545b;
                text-decoration: underline;
            }

            .comment-list .media .media-body ul li a.reply-btn:hover {
                color: #36a0e7;
            }

            .comment-list .media .media-body ul li {
                font-size: 18px;
                padding-right: 15px;
                color: #919ea8;
                font-weight: 500;
            }

            .comment-form {
                float: left;
                width: 100%;
                padding: 30px 45px;
            }

            .comment-form h4 {
                font-weight: 300;
                font-size: 28px;
                color: #3b4952;
                margin-bottom: 40px;
            }

            .comment-form .form-control {
                border-radius: 0px;
                background: #f1f4f6;
                border: none;
                height: 50px;
                color: #4a555c;
                font-size: 16px;
            }

            .comment-form .form-control::-webkit-input-placeholder {
                color: #4a555c;
            }

            .comment-form .form-control:-moz-placeholder {
                color: #4a555c;
            }

            .comment-form .form-control::-moz-placeholder {
                color: #4a555c;
            }

            .comment-form .form-control:-ms-input-placeholder {
                color: #4a555c;
            }

            .comment-form textarea.form-control {
                height: auto;
                min-height: 200px;
                resize: none;
            }

            .comment-form form {
                margin-bottom: 40px;
            }

            .vt-post.post .author-info ul li {
                padding-left: 15px;
                padding-right: 15px;
                float: none;
            }

            .vt-post.post .author-info {
                border-radius: 0px 0px 0px 3px;
                border-bottom: none;
                border-right: 1px solid #ddd;
                padding: 15px 12px 15px 12px;
            }

            .vt-post.post .post-img a img {
                border-radius: 3px 0px 0px 0px;
            }

            .vt-post.post .caption {
                padding: 25px 0px;
            }

            .post .caption h3 {
                margin: 0px 0px 20px 0px;
                color: #36a0e7;
                font-weight: 300;
                font-size: 34px;
                line-height: 42px;
            }
            .md-heading {
                font-size: 24px !important;
                line-height: 36px !important;
                margin-bottom: 15px !important;
            }

            .pagination>.active>a,
            .pagination>.active>a:focus,
            .pagination>.active>a:hover,
            .pagination>.active>span,
            .pagination>.active>span:focus,
            .pagination>.active>span:hover {
                background-color: #3b4952;
                border-color: #3b4952;
            }

            .pagination>li>a,
            .pagination>li>span {
                color: #2c3840;
                margin: 0px 5px;
                border-radius: 3px;
                -webkit-box-shadow: 0px 1px 3px 0px rgba(44, 56, 64, 0.2);
                -moz-box-shadow: 0px 1px 3px 0px rgba(44, 56, 64, 0.2);
                box-shadow: 0px 1px 3px 0px rgba(44, 56, 64, 0.2);
                border: none;
                font-size: 16px;
            }

            .pagination>li>a:focus,
            .pagination>li>a:hover,
            .pagination>li>span:focus,
            .pagination>li>span:hover {
                background-color: #e74c3c;
                border-color: #e74c3c;
                color: #fff;
            }

            .pagination-wrap {
                width: 100%;
                float: left;
                margin-bottom: 35px;
            }

            .pagination {
                margin: 0px;
            }
            .page-link.active {
                background-color: #e74c3c;
                border-color: #e74c3c;
                color: #fff;
            }
        </style>

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
                        <div>
                            <form action="post?index=1" method="post">
                                <div class="input-group mb-3">
                                    <input type="text" class="form-control" placeholder="Search Post" name="searchText">
                                    <button class="appointment-btn scrollto" type="submit">
                                        <span class="d-none d-md-inline"><i class="bi bi-search"></i></span>
                                    </button>
                                </div>
                            </form>
                        </div>

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

                        <div>
                            <form action="search.do" method="GET">
                                <div class="input-group mb-3">
                                    <input type="text" class="form-control" placeholder="Search Post" name="searchText">
                                    <button class="appointment-btn scrollto" type="submit">
                                        <span class="d-none d-md-inline"><i class="bi bi-search"></i></span>
                                    </button>
                                </div>
                            </form>
                        </div>
                            
                        
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
                        <h2>Post</h2>
                        <ol>
                            <li><a href="homepage.jsp">Home</a></li>
                            <li>Post</li>
                        </ol>
                    </div>

                </div>
            </section><!-- End Breadcrumbs Section -->
            <section class="inner-page">
                <div class="container">
                    <div class="col-md-12 col-lg-12">
                        <c:forEach var = "post" items="${postList}">
                            <article class="post vt-post">
                                <div class="row">
                                    <div class="col-xs-12 col-sm-5 col-md-5 col-lg-4">
                                        <div class="post-type post-img">
                                            <a href="#"><img src="https://bootdey.com/img/Content/avatar/avatar1.png" class="img-responsive" alt="image post"></a>
                                        </div>
                                        <div class="author-info author-info-2">
                                            <ul class="list-inline">
                                                <li>
                                                    <div class="info">
                                                        <p>Posted on:</p>
                                                        <strong>Mar 21, 2015</strong></div>
                                                </li>
                                                <li>
                                                    <div class="info">
                                                        <p>Comments:</p>
                                                        <strong>127</strong></div>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-7 col-md-7 col-lg-8">
                                        <div class="caption">
                                            <h3 class="md-heading"><a href="postDetail?id=${post.getPostID()}">${post.getPostTitle()}</a></h3>
                                            <p> ${post.getPostShort()} </p>
                                            <a class="btn btn-default" href="#" role="button">Read More</a> </div>
                                    </div>
                                </div>
                            </article>

                        </c:forEach>

                        <div class="pagination-wrap">
                            <!--                            <nav aria-label="Page navigation example">
                                                            <ul class="pagination">
                                                                <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                            <c:forEach begin="1" end="${endP}" var="i">
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
                                            <a class="page-link" href="post?index=${index - 1}">Previous</a>
                                        </li>
                                    </c:if>

                                    <c:forEach begin="1" end="${endP}" var="i">
                                        <c:set var="activeClass" value="${(not empty index and index eq i) ? 'active' : ''}"/>
                                        <li class="page-item ${activeClass}">
                                            <a class="page-link" href="post?index=${i}">${i}</a>
                                        </li>
                                    </c:forEach>

                                    <c:if test="${empty index or index eq endP}"> <!-- CONSIDER INDEX EQUAL ENDP ==> DISABLE NEXT -->
                                        <li class="page-item disabled">
                                            <a class="page-link" href="#">Next</a>
                                        </li>
                                    </c:if>

                                    <c:if test="${index < endP}">
                                        <li class="page-item">
                                            <a class="page-link" href="post?index=${index + 1}">Next</a>
                                        </li>
                                    </c:if>
                                </ul>
                            </nav>




                        </div>
                        <div class="clearfix"></div>
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
