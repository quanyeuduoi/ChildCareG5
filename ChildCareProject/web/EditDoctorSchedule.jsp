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
            ChildCare G5
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
        <style>
            /* CSS cho checkbox tùy chỉnh */
            .button-checkbox-group {
                display: flex;
                flex-wrap: wrap;
            }

            .button-checkbox {
                display: inline-block;
                cursor: pointer;
                margin-right: 10px; /* Khoảng cách giữa các checkbox */
                margin-bottom: 10px; /* Khoảng cách giữa các dòng */
                padding: 8px 16px; /* Kích thước của button */
                border: 1px solid #ccc; /* Viền của button */
                border-radius: 4px; /* Độ cong của viền */
            }

            /* Khi checkbox được kiểm tra, thay đổi màu viền của button */
            .button-checkbox input:checked + label {
                border-color: yellow; /* Màu viền của button khi được chọn */
            }

            /* Khi di chuột qua button, thay đổi màu nền của button */
            .button-checkbox:hover {
                background-color: #f0f0f0; /* Màu nền của button khi di chuột qua */
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
                                <a class="navbar-brand" href="#pablo">Edit Doctor's schedule</a>
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
                                    <h5 class="title">Edit</h5>
                                    <a href="ScheduleManager" class="btn btn-primary btn-sm float-right" style="margin-top: -40px;">Back</a>
                                </div>
                                <p style="margin-left: 25px;" class="${messColor}">${message}</p>
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <form action="EditSchedule" method="POST">
                                            <div class="form-group">
                                                <label for="doctor">Choose doctor to edit:</label>
                                                <select id="doctor" class="form-control" name="docID">
                                                    <c:forEach items = "${dlist}" var="o">
                                                        <option value="${o.docID}">${o.fullName}</option>
                                                    </c:forEach>
                                                </select>
                                                <div class="form-group">
                                                    From: <input class="form-control" type="date" id='datepicker' name='date' onchange="getSlotsByDate(this, '${o.docID}')">
                                                </div>
                                                <div class="form-group">
                                                    <label>Select Slots:</label><br>
                                                    <div class="button-checkbox-group">
                                                        <c:forEach items="${slotTimes}" var="o">
                                                            <input type="checkbox" id="${o.slotID}" name="slots" value="${o.slotID}" onchange="changeCheckboxColor(this)">
                                                            <label for="${o.slotID}" class="button-checkbox">${o.timeSlot}</label>
                                                        </c:forEach>
                                                    </div>
                                                </div>
                                            </div><button type="submit" class="btn btn-primary btn-sm">Save</button>
                                        </form>
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
                                function changeCheckboxColor(checkbox) {
                                    // Kiểm tra trạng thái của checkbox
                                    if (checkbox.checked) {
                                        checkbox.parentNode.style.color = "yellow"; // Thay đổi màu chữ của label khi checkbox được kiểm tra
                                    } else {
                                        checkbox.parentNode.style.color = "#000"; // Màu chữ mặc định khi checkbox không được kiểm tra
                                    }
                                }
        </script>

        <script>
            function getSlotsByDate(input) {
                var selectedDate = input.value;
                var docID = document.getElementById("doctor").value; // Lấy giá trị docID từ dropdown
                var xhr = new XMLHttpRequest();
                xhr.open('POST', 'GetSlotsByDate', true);
                xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                xhr.onreadystatechange = function () {
                    if (xhr.readyState === 4 && xhr.status === 200) {
                        var slots = JSON.parse(xhr.responseText);
                        var slotIDs = slots.map(function (slot) {
                            return slot.slotID;
                        });
                        uncheckAllCheckboxes(); // Xóa các checkbox đã chọn từ trước
                        markCheckboxBySlotIDs(slotIDs);
                    }
                };
                xhr.send('selectedDate=' + selectedDate + '&docID=' + docID);
            }
            function uncheckAllCheckboxes() {
                var checkboxes = document.querySelectorAll('input[type="checkbox"]');
                checkboxes.forEach(function (checkbox) {
                    checkbox.checked = false;
                    changeCheckboxColor(checkbox); // Cập nhật màu sắc của checkbox
                });
            }
        </script>
        <script>
            function markCheckboxBySlotIDs(slotIDs) {
                // Lặp qua danh sách slot IDs và đánh dấu các checkbox tương ứng
                slotIDs.forEach(function (slotID) {
                    var checkbox = document.getElementById(slotID);
                    if (checkbox) {
                        checkbox.checked = true; // Đánh dấu checkbox
                        changeCheckboxColor(checkbox); // Thay đổi màu của label đi kèm checkbox
                    }
                });
            }
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
