<%-- 
    Document   : EDashUser
    Created on : Sep 26, 2023, 4:06:26 AM
    Author     : Dell
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--

=========================================================
* Now UI Dashboard - v1.5.0
=========================================================

* Product Page: https://www.creative-tim.com/product/now-ui-dashboard
* Copyright 2019 Creative Tim (http://www.creative-tim.com)

* Designed by www.invisionapp.com Coded by www.creative-tim.com

=========================================================

* The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

-->
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8" />
        <link rel="apple-touch-icon" sizes="76x76" href="dash/assets/img/apple-icon.png">
        <link rel="icon" type="image/png" href="dash/assets/img/favicon.png">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <title>
            G2 Banking
        </title>
        <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
        <!--     Fonts and icons     -->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
        <!-- CSS Files -->
        <link href="dash/assets/css/bootstrap.min.css" rel="stylesheet" />
        <link href="dash/assets/css/now-ui-dashboard.css?v=1.5.0" rel="stylesheet" />
        <!-- CSS Just for demo purpose, don't include it in your project -->
        <link href="dash/assets/demo/demo.css" rel="stylesheet" />
        <style type="text/css">
            #customerInfo{
                display:none;
            }
            #doctorInfo{
                display:none;
            }
            .error-text{
                background: #F8D7DA;
                padding: 8px 0;
                border-radius: 5px;
                color: #8B3E46;
                border: 1px solid #F5C6CB;
                display: none;
            }
            .error-text.matched{
                background: #D4EDDA;
                color: #588C64;
                border-color: #C3E6CB;
            }
        </style>
    </head>

    <body class="user-profile">
        <div class="wrapper ">
            <jsp:include page="Menu.jsp"></jsp:include>
                <div class="main-panel" id="main-panel">
                    <!-- Navbar -->
                    <nav class="navbar navbar-expand-lg navbar-transparent  bg-primary  navbar-absolute">
                        <div class="container-fluid">
                            <div class="navbar-wrapper">
                                <div class="navbar-toggle">
                                    <button type="button" class="navbar-toggler">
                                        <span class="navbar-toggler-bar bar1"></span>
                                        <span class="navbar-toggler-bar bar2"></span>
                                        <span class="navbar-toggler-bar bar3"></span>
                                    </button>
                                </div>
                                <a class="navbar-brand" href="#pablo">Add Customer</a>
                            </div>
                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
                                <span class="navbar-toggler-bar navbar-kebab"></span>
                                <span class="navbar-toggler-bar navbar-kebab"></span>
                                <span class="navbar-toggler-bar navbar-kebab"></span>
                            </button>
                            <div class="collapse navbar-collapse justify-content-end" id="navigation">
                                <form>
                                    <div class="input-group no-border">
                                        <input type="text" value="" class="form-control" placeholder="Search...">
                                        <div class="input-group-append">
                                            <div class="input-group-text">
                                                <i class="now-ui-icons ui-1_zoom-bold"></i>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                                <ul class="navbar-nav">
                                    <li class="nav-item">
                                        <a class="nav-link" href="#pablo">
                                            <i class="now-ui-icons media-2_sound-wave"></i>
                                            <p>
                                                <span class="d-lg-none d-md-block">Stats</span>
                                            </p>
                                        </a>
                                    </li>
                                    <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <i class="now-ui-icons location_world"></i>
                                            <p>
                                                <span class="d-lg-none d-md-block">Some Actions</span>
                                            </p>
                                        </a>
                                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                                            <a class="dropdown-item" href="#">Action</a>
                                            <a class="dropdown-item" href="#">Another action</a>
                                            <a class="dropdown-item" href="#">Something else here</a>
                                        </div>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#pablo">
                                            <i class="now-ui-icons users_single-02"></i>
                                            <p>
                                                <span class="d-lg-none d-md-block">Account</span>
                                            </p>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </nav>
                    <!-- End Navbar -->
                    <div class="panel-header panel-header-sm">
                    </div>
                    <div class="content">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="card">
                                    <div class="card-header">
                                        <h5 class="title">Add Customer</h5>
                                </div>      
                                <div class="card-body">
                                    <script>
//                                        document.addEventListener("DOMContentLoaded", function () {
//                                            var selectElement = document.getElementById("selectC");
//                                            selectElement.addEventListener("change", function () {
//                                                var customerInfo = document.getElementById("customerInfo");
//                                                customerInfo.style.display = (this.value === "1") ? "block" : "none";
//                                            });
//                                        });
//                                        var el = document.getElementById("selectC");
//                                        el.addEventListener("change", function () {
//                                            var elems = document.querySelectorAll('#customerInfo,#doctorInfo');
//                                            for (var i = 0; i < elems.length; i++) {
//                                                elems[i].style.display = 'none';
//                                            }
//                                            if (this.selectedIndex === 0) {
//                                                document.querySelector('#customerInfo').style.display = 'block';
//                                            } else if (this.selectedIndex === 1) {
//                                                document.querySelector('#doctorInfo').style.display = 'block';
//                                            } 
//                                        }, false);
                                        document.addEventListener("DOMContentLoaded", function () {
                                            var selectElement = document.getElementById("selectC");
                                            selectElement.addEventListener("change", function () {
                                                var customerInfo = document.getElementById("customerInfo");
                                                var doctorInfo = document.getElementById("doctorInfo");
                                                customerInfo.style.display = "none";
                                                doctorInfo.style.display = "none";
                                                if (this.selectedIndex === 1) {
                                                    customerInfo.style.display = "block";
                                                } else if (this.selectedIndex === 2) {
                                                    doctorInfo.style.display = "block";
                                                }
                                            });
                                        });
                                    </script>
                                    <script>
                                        function cancelForm() {
                                            document.getElementById("myForm").reset();
                                        }
                                    </script>
                                    <!--form action start from here-->
                                    <form id="myForm" action="addNewUser" method="">
                                        <c:if test="${notification != null}">
                                         <div class="alert ">
                                            <strong>Warming! ${notification}</strong>
                                            <%session.removeAttribute("notification");%>
                                         </div>
                                        </c:if>
                                        <div class="row">
                                            <div class="col-md-2 pr-1">
                                                <div class="form-group">
                                                    <label>Role</label><br>
                                                    <select class="form-control" name="role" id="selectC">
                                                        <option value="" disabled selected>Role</option>
                                                        <option value="Customer">Customer</option>
                                                        <option value="Doctor">Doctor</option>
                                                        <option value="Manager">Manager</option>
                                                        <option value="Marketing">Marketing</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-4 pr-1">
                                                <div class="form-group">
                                                    <label>Email Address</label>
                                                    <input type="text" class="form-control" placeholder="Email" name="email" required>
                                                </div>
                                            </div>
                                            <div class="col-md-4 pl-1">
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">Password</label>
                                                    <input type="email" class="form-control" placeholder="Password" name="password" required>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-4 pr-1">
                                                <div class="form-group">
                                                    <label>Name</label>
                                                    <input type="text" class="form-control" placeholder="Full Name" name="fullname" required>
                                                </div>
                                            </div>
                                            <!--                                            <div class="col-md-4 pl-1">
                                                                                            <div class="form-group">
                                                                                                <label>Phone</label>
                                                                                                <input type="text" class="form-control" placeholder="Phone" name="phoneNumber" required>
                                                                                            </div>
                                                                                        </div>-->
                                        </div>
                                        <!--                                        <div class="row" id="customerInfo">
                                                                                    <div class="col-md-4 ">
                                                                                        <div class="form-group">
                                                                                            <label>Address</label>
                                                                                            <input type="text" class="form-control" placeholder="Home Address" name="address" required>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="col-md-4 ">
                                                                                        <div class="form-group">
                                                                                            <label>Phone number</label>
                                                                                            <input type="text" class="form-control" placeholder="Your CitizenID" name="citizenID" required>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                        
                                                                                <div class="col-md-2 pl-1" id="doctorInfo">
                                                                                    <div class="form-group">
                                                                                        <label>Department</label><br>
                                                                                        <select class="form-control" name="department" id="selectC">
                                                                                            <option>Department</option>
                                                                                            <option value="0">Tai-Mui-Hong</option>
                                                                                            <option value="0">Tim</option>
                                                                                            <option value="0">Mat</option>
                                                                                        </select>
                                                                                    </div>
                                                                                </div>-->

                                        <button type="submit" class="btn btn-primary btn-sm">Save</button>
                                        <button type="button" class="btn btn-primary btn-sm" onclick="cancelForm()">Cancel</button>
                                    </form>
                                    <!--form action end-->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <footer class="footer">
                    <div class=" container-fluid ">
                        <nav>
                            <ul>
                                <li>
                                    <a href="https://www.creative-tim.com">
                                        Creative Tim
                                    </a>
                                </li>
                                <li>
                                    <a href="http://presentation.creative-tim.com">
                                        About Us
                                    </a>
                                </li>
                                <li>
                                    <a href="http://blog.creative-tim.com">
                                        Blog
                                    </a>
                                </li>
                            </ul>
                        </nav>
                        <div class="copyright" id="copyright">
                            &copy; <script>
                                document.getElementById('copyright').appendChild(document.createTextNode(new Date().getFullYear()));
                            </script>, Designed by <a href="https://www.invisionapp.com" target="_blank">Invision</a>. Coded by <a href="https://www.creative-tim.com" target="_blank">Creative Tim</a>.
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <!--   Core JS Files   -->
        <script src="dash/assets/js/core/jquery.min.js"></script>
        <script src="dash/assets/js/core/popper.min.js"></script>
        <script src="dash/assets/js/core/bootstrap.min.js"></script>
        <script src="dash/assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
        <!--  Google Maps Plugin    -->
        <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
        <!-- Chart JS -->
        <script src="dash/assets/js/plugins/chartjs.min.js"></script>
        <!--  Notifications Plugin    -->
        <script src="dash/assets/js/plugins/bootstrap-notify.js"></script>
        <!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
        <script src="dash/assets/js/now-ui-dashboard.min.js?v=1.5.0" type="text/javascript"></script><!-- Now Ui Dashboard DEMO methods, don't include it in your project! -->
        <script src="dash/assets/demo/demo.js"></script>
    </body>

</html>