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
    </head>
    <body class="user-profile">
        <div class="wrapper ">
            <jsp:include page="Left.jsp"></jsp:include>
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
                                <a class="navbar-brand" href="#pablo">Manager News</a>
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
                                        <h5 class="title">News Information</h5>
                                        <a href="AddNews.jsp" class="btn btn-primary btn-sm float-right" style="margin-top: -40px;">Add News</a>
                                    </div>
                                    <div class="card-body">
                                        <div class="table-responsive">
                                            <table class="table">
                                                <thead class="text-primary">
                                                <th>ID</th>
                                                <th>Date</th>
                                                <th>Creater</th>
                                                <th>Modified By</th>
                                                <th>Modified On</th>
                                                <th>News</th>
                                                </thead>
                                                <tbody>
                                                <c:forEach items = "${Nlist}" var = "o">
                                                    <tr>
                                                        <td>${o.newID}</td>
                                                        <td>${o.date}</td>
                                                        <td>${o.eid}</td>
                                                        <td>${o.modifiedBy}</td>
                                                        <td>${o.modifiedOn}</td>
                                                        <td>${o.title}</td>
                                                        <td>${o.image}</td>
                                                        <td>
                                                            <a href="loadNews?Nid=${o.newID}" class="btn btn-success btn-sm">Edit</a>
                                                            <a href="deleteNews?Nid=${o.newID}" class="btn btn-danger btn-sm">Delete</a>
                                                        </td>
                                                    </tr>
                                                </c:forEach>

                                                <!--Thêm dữ liệu người dùng khác ở đây -->
                                            </tbody>
                                        </table>
                                        <c:forEach begin="1" end="${endP}" var="pageNum">
                                            <c:choose>
                                                <c:when test="${param.page == pageNum}">
                                                    <span class="current">${pageNum}</span>
                                                </c:when>
                                                <c:otherwise>
                                                    <a href="${pageContext.request.contextPath}/ManagerNews?page=${pageNum}">${pageNum}</a>
                                                </c:otherwise>
                                            </c:choose>
                                        </c:forEach>
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