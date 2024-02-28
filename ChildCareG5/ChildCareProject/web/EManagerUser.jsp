<%-- 
    Document   : EManagerUser
    Created on : Sep 26, 2023, 12:35:20 PM
    Author     : Dell
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <link rel="apple-touch-icon" sizes="76x76" href="dash/assets/img/apple-icon.png">
        <link rel="icon" type="image/png" href="dash/assets/img/favicon.png">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <title>
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
            .table-filter .filter-group {
                float: right;
                margin-left: 15px;
            }
            .table-filter input, .table-filter select {
                height: 34px;
                border-radius: 3px;
                border-color: #ddd;
                box-shadow: none;
            }
            .table-filter {
                padding: 5px 0 15px;
                border-bottom: 1px solid #e9e9e9;
                margin-bottom: 5px;
            }
            .table-filter .btn {
                height: 34px;
                width: 34px;
                padding: 0;
            }
            .table-filter label {
                font-weight: normal;
                margin-left: 10px;
            }
            .table-filter select, .table-filter input {
                display: inline-block;
                margin-left: 5px;

            }
            .table-filter input {
                width: 200px;
                display: inline-block;
            }
            .filter-group select.form-control {
                width: 110px;
            }

            .dropdown {
                position: relative;
                display: inline-block;
            }

            .dropdown-content {
                display: none;
                position: absolute;
                z-index: 1;
                background-color: #f9f9f9;
            }

            .dropdown:hover .dropdown-content {
                display: block;
                background-color: #e5e5e5;
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
                                <a class="navbar-brand" href="#pablo">Manager Account</a>
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
                                        <h5 class="title">Account Information</h5>
                                        <a href="EAddCustomer.jsp" class="btn btn-primary btn-sm float-right" style="margin-top: -40px;">Add Account</a>
                                    </div>

                                    <div class="table-filter">
                                        <form action="manageuser" method="">
                                            <div class="row">                                     
                                                <div class="col-sm-10 d-flex justify-content-end align-items-center">
                                                    <div class="filter-group">
                                                        <label>Name</label>
                                                        <input class="form-control" type="text" name="searchText" value="${param.searchText}">
                                                </div>
                                                <div class="filter-group">
                                                    <label>Location</label>   
                                                    <select class="form-control" name="roleFilter"> 
                                                <!-- <div><c:if test="${param.roleFilter != 'All'}">selected</c:if></div>-->
                                                            <option value="">Any</option>
                                                            <option value="Customer">Customer</option>
                                                            <option value="Manager">Manager</option>
                                                            <option value="Marketing">Marketing</option>
                                                            <option value="Doctor">Doctor</option>								
                                                        </select>
                                                    </div>
                                                    <div class="filter-group">
                                                        <label>Status</label>
                                                        <select class="form-control" name="statusFilter">
                                                            <option value="">Any</option>
                                                            <option value="Active">Active</option>
                                                            <option value="Idle">Idle</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-sm-2">
                                                    <button type="submit" class="btn btn-primary"><i class="fa fa-search"></i></button>
                                                </div>
                                            </div>
                                        </form>                    
                                    </div>
                                    <div class="card-body">
                                        <div class="table-responsive">
                                            <table class="table">
                                                <thead class="text-primary">           
                                                <th>Email</th>
                                                <th>Name</th>
                                                <th>Role</th>
                                                <th>Status</th>
                                                <th>Actions</th>
                                                </thead>
                                                <tbody>

                                                <c:forEach items = "${account}" var = "a">
                                                    <tr>
                                                        <td>${a.email}</td>
                                                        <td>${a.fullName}</td>
                                                        <td>${a.role}</td>
                                                        <td>${a.status}</td>
                                                        <td>
                                                            <button class="btn btn-success btn-sm">Sửa</button>
                                                            <button class="btn btn-danger btn-sm">Xóa</button>
                                                            <div class="dropdown">
                                                                <button class="btn btn-sm btn-icon dropdown-toggle hide-arrow" type="button" id="dropdownMenuButton">
                                                                    <i class="bx bx-dots-vertical-rounded me-2"></i>
                                                                </button>
                                                                <div class="dropdown-content">
                                                                    <a class="dropdown-item" href="#">Suspend</a>
                                                                    <a class="dropdown-item" href="#">Active</a>
                                                                </div>
                                                            </div>
                                                    </tr>
                                                </c:forEach>

                                            </tbody>
                                        </table>
                                    </div>
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
                                document.getElementById('copyright').appendChild(document.createTextNode(new Date().getFullYear()))
                            </script>, Designed by <a href="https://www.invisionapp.com" target="_blank">Invision</a>. Coded by <a href="https://www.creative-tim.com" target="_blank">Creative Tim</a>.
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="dash/assets/js/core/jquery.min.js"></script>
        <script src="dash/assets/js/core/popper.min.js"></script>
        <script src="dash/assets/js/core/bootstrap.min.js"></script>
        <script src="dash/assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
        <!-- Google Maps Plugin -->
        <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
        <!-- Chart JS -->
        <script src="dash/assets/js/plugins/chartjs.min.js"></script>
        <!-- Notifications Plugin -->
        <script src="dash/assets/js/plugins/bootstrap-notify.js"></script>
        <!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
        <script src="dash/assets/js/now-ui-dashboard.min.js?v=1.5.0" type="text/javascript"></script><!-- Now Ui Dashboard DEMO methods, don't include it in your project! -->
        <script src="dash/assets/demo/demo.js"></script>    </body>
</html>
