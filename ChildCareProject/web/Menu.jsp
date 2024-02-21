<%-- 
    Document   : Left
    Created on : Sep 25, 2023, 11:24:43 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <div class="sidebar" data-color="#1273eb">
        <!--
          Tip 1: You can change the color of the sidebar using: data-color="blue | green | orange | red | yellow"
        -->
        <div class="logo">
            <a href="" class="simple-text logo-normal">
                G2 Banking
            </a>
        </div>
        <div class="sidebar-wrapper" id="sidebar-wrapper">
            <ul class="nav">
                <li>
                    <a href="./Dashboard.jsp">
                        <i class="now-ui-icons design_app"></i>
                        <p>Dashboard</p>
                    </a>
                </li>

                <!--                Admin-->
                <% 
                String role = (String) session.getAttribute("role");
                if (role != null && role.equals("Admin")) {
                %>
                <li>
                    <a href="cManager">
                        <i class="now-ui-icons design_bullet-list-67"></i>
                        <p>Customer managemt</p>
                    </a>
                </li>
                <li>
                    <a href="./dashmap.html">
                        <i class="now-ui-icons location_map-big"></i>
                        <p>Doctor management</p>
                    </a>
                </li>
                <li>
                    <a href="./dashnotifications.html">
                        <i class="now-ui-icons ui-1_bell-53"></i>
                        <p>Settings</p>
                    </a>
                </li>
                <% } else if (role != null && role.equals("Marketing")) { %>
                <!--Marketing-->
                <li>
                    <a href="ManagerPost">
                        <i class="now-ui-icons design_bullet-list-67"></i>
                        <p>Manager Post</p>
                    </a>
                </li>
                <li>
                    <a href="SliderManagement">
                        <i class="now-ui-icons design_bullet-list-67"></i>
                        <p>Manager Slider</p>
                    </a>
                </li>
                <li>
                    <a href="ManagerQA">
                        <i class="now-ui-icons arrows-1_cloud-download-93"></i>
                        <p>Manager Q&A</p>
                    </a>
                </li>
                
                <% } else if (role != null && role.equals("Manager")) { %>
                <!--Manager-->
                <li>
                    <a href="ScheduleManager">
                        <i class="now-ui-icons arrows-1_cloud-download-93"></i>
                        <p>Schedule Management</p>
                    </a>
                </li>
                <li>
                    <a href="ServiceManager">
                        <i class="now-ui-icons arrows-1_cloud-download-93"></i>
                        <p>Service Management</p>
                    </a>
                </li>

                <% } else if (role != null && role.equals("Doctor")) { %>
                <!--Doctor-->
                <li>
                    <a href="Schedule">
                        <i class="now-ui-icons arrows-1_cloud-download-93"></i>
                        <p>Schedule</p>
                    </a>
                </li>
                <li>
                    <a href="ExaminationHistory">
                        <i class="now-ui-icons arrows-1_cloud-download-93"></i>
                        <p>Examination History</p>
                    </a>
                </li>
                <% } %>
            </ul>
        </div>
    </div>
</html>
