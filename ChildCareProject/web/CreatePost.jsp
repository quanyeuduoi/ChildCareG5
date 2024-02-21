<%-- 
    Document   : dashboard
    Created on : Sep 25, 2023, 11:26:46 PM
    Author     : admin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8" />
        <link rel="apple-touch-icon" sizes="76x76" href="./dash/assets/img/apple-icon.png">
        <link rel="icon" type="image/png" href="./dash/assets/img/favicon.png">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <title>
            Now UI Dashboard by Creative Tim
        </title>
        <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
        <!--     Fonts and icons     -->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
        <!-- CSS Files -->
        <link href="./dash/assets/css/bootstrap.min.css" rel="stylesheet" />
        <link href="./dash/assets/css/now-ui-dashboard.css?v=1.5.0" rel="stylesheet" />
        <!-- CSS Just for demo purpose, don't include it in your project -->
        <link href="./dash/assets/demo/demo.css" rel="stylesheet" />
    </head>
    <%
            String status="";
       
               if(request.getAttribute("status")!=null){
              status = (String)request.getAttribute("status");
              }%>
    <body class="">
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
                                <a class="navbar-brand" href="#pablo">Post List</a>
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
                    <div class="panel-header panel-header-lg">

                    </div>
                    <div class="container" style="">
                        <div class="row">

                            <div class="col-md-8 col-md-offset-2">

                                <h1>Create post</h1>

                                <form action="ManagePost" method="post" enctype="multipart/form-data">
                                    Service:<select name="service">
                                        
                                    <c:forEach items="${slist}" var="item">
                                        <c:choose>
                                            <c:when test="${item.getServiceID() eq chosenPost.getServiceID()}">
                                                <option value="${item.getServiceID()}" selected>${item.getServiceName()}</option>
                                            </c:when>
                                            <c:otherwise>
                                                <option value="${item.getServiceID()}">${item.getServiceName()}</option>
                                            </c:otherwise>
                                        </c:choose>

                                    </c:forEach>
                                </select>

                                    <div class="form-group has-error">
                                        <label for="slug" >Post Title  </label>
                                        <input type="text" required class="form-control" name="title" style="background-color: #E3E3E3" />

                                    </div>

                                    <div class="form-group">
                                        <label for="title">Post Short <span class="require">*</span></label>
                                        <input type="text" required class="form-control" name="short" style="background-color: #E3E3E3" />
                                    </div>

                                    <div class="form-group">
                                        <label for="description">Post Detail</label>
                                        <textarea rows="5" class="form-control" name="detail"style="background-color: #E3E3E3" ></textarea>
                                    </div>
                                    <div >
                                        Add Image<br>
                                        <input type="file" name="file" accept=".jpg,.png" onchange="loadFile(event)"><br>
                                        <img id="preview-img" src="#">
                                    </div>


                                    <div class="form-group">
                                        <button type="submit" class="btn btn-primary">
                                            Create
                                        </button>
                                        <button class="btn btn-default">
                                            Cancel
                                        </button>
                                    <%=status%>
                                </div>

                            </form>
                        </div>

                    </div>
                </div>
                <div class="content">

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
            <script>
                                    $(document).ready(function () {
                                        // Javascript method's body can be found in assets/js/demos.js
                                        demo.initDashboardPageCharts();

                                    });

                                    function loadFile(event) {
                                        var reader = new FileReader();
                                        reader.onload = function () {
                                            var img = document.getElementById('preview-img');
                                            img.src = reader.result;
                                        };
                                        reader.readAsDataURL(event.target.files[0]);
                                    }
            </script>


    </body>

</html>
