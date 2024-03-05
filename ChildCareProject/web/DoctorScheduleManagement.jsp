<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <link rel="apple-touch-icon" sizes="76x76" href="dash/assets/img/apple-icon.png">
        <link rel="icon" type="image/png" href="dash/assets/img/favicon.png">
        <link rel="icon" type="image/png" href="dash/assets/img/favicon.png">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <title>
            ChildCare G5
        </title>
        <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
        <!--     Fonts and icons     -->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
        <!-- CSS Files -->
        <link href="dash/assets/css/bootstrap.min.css" rel="stylesheet" />
        <link href="dash/assets/css/now-ui-dashboard.css?v=1.5.0" rel="stylesheet" />

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
                                <a class="navbar-brand" href="#pablo">Doctor's schedule management</a>
                            </div>
                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
                                <span class="navbar-toggler-bar navbar-kebab"></span>
                                <span class="navbar-toggler-bar navbar-kebab"></span>
                                <span class="navbar-toggler-bar navbar-kebab"></span>
                            </button>
                            <div class="collapse navbar-collapse justify-content-end" id="navigation">
                                <form action="SearchSliderManager" method="POST">
                                    <div class="input-group no-border">
                                        <input name="txtSearch" type="text" value="${requestScope.txtSearch}" class="form-control" placeholder="Search...">
                                    <div class="input-group-append">
                                        <button type="submit" class="input-group-text" style="background-color: transparent; border: none;">
                                            <i class="now-ui-icons ui-1_zoom-bold"></i>
                                        </button>
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
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <i class="now-ui-icons users_single-02"></i>
                                        <p>
                                            <span class="d-lg-none d-md-block">Account</span>
                                        </p>
                                    </a>
                                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                                        <a class="dropdown-item" href="#">Profile</a>
                                        <a class="dropdown-item" href="LoginRegister.jsp">Login</a>
                                        <a class="dropdown-item" href="#">Logout</a>
                                    </div>
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
                                    <h5 class="title">Doctor's schedule Information</h5>
                                </div>
                                <p style="margin-left: 25px;" class="${messColor}">${message}</p>
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table">
                                            <thead class="text-primary">
                                            <th>ID</th>
                                            <th>Doctor's name</th>
                                            <th>Department</th>
                                            <th>Picture</th>
                                            <th>Date</th>
                                            <th>Slot</th>
                                            <th>Actions</th>
                                            </thead>
                                            <tbody>
                                                <!-- Dữ liệu của người dùng sẽ được điền ở đây -->
                                                <c:forEach items = "${dlist}" var = "o">
                                                    <tr>
                                                        <td>${o.docID}</td>
                                                        <td>${o.fullName}</td>
                                                        <td>${o.departName}</td>
                                                        <td><img src="Image/DoctorAvatar/${o.doctorPicture}" alt="Not found image" style="max-width: 250px; "></td>
                                                        <td><input type="date" id='datepicker' name='date' onchange="getSlotsByDate(this, '${o.docID}')"></td>
                                                        <td>
                                                            <div id="result_${o.docID}"></div>
                                                        </td>
                                                        <td>
                                                            <a href="EditSlider?sliderID=${o.getDocID()}" class="btn btn-success btn-sm">Edit</a>
                                                        </td>
                                                    </tr>
                                                </c:forEach>
                                                <!--Thêm dữ liệu người dùng khác ở đây -->
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
        <script>
                                // Hàm xử lý khi thay đổi ngày
                                function getSlotsByDate(input, docID) {
                                    var selectedDate = input.value;
                                    var xhr = new XMLHttpRequest();
                                    xhr.open('POST', 'GetSlotsByDate', true);
                                    xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                                    xhr.onreadystatechange = function () {
                                        if (xhr.readyState === 4 && xhr.status === 200) {
                                            var slots = JSON.parse(xhr.responseText); // Parse JSON response
                                            var slotsHtml = ""; // Biến để lưu HTML cho slots
                                            // Duyệt qua danh sách slots và tạo HTML tương ứng
                                            for (var i = 0; i < slots.length; i++) {
                                                slotsHtml += "<p id='slot'>" + slots[i] + "</p>";
                                            }
                                            // Hiển thị HTML vào slot
                                            document.getElementById("result_" + docID).innerHTML = slotsHtml;
                                        }
                                    };
                                    event.preventDefault();
                                    xhr.send('selectedDate=' + selectedDate + '&docID=' + docID);
                                }
        </script>
<script>
    // Hàm tự động gọi getSlotsByDate với ngày hiện tại khi trang được tải
    window.onload = function() {
        // Lấy ngày hiện tại
        var today = new Date();
        // Định dạng ngày tháng theo yyyy-MM-dd
        var dd = String(today.getDate()).padStart(2, '0');
        var mm = String(today.getMonth() + 1).padStart(2, '0'); // Tháng bắt đầu từ 0
        var yyyy = today.getFullYear();
        var currentDate = yyyy + '-' + mm + '-' + dd;
        document.getElementById("datepicker").value = currentDate;
        // Gọi hàm getSlotsByDate với ngày hiện tại và mỗi docID trong dlist
        var dlist = ${dlist}; // Lấy danh sách dlist từ requestScope
        dlist.forEach(function(o) {
            getSlotsByDate(document.querySelector('input[name="date"]'), '${o.docID}');
        });
    };
</script>

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