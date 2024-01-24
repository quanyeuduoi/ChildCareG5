<%-- 
    Document   : LoginRegister
    Created on : Jan 13, 2024, 12:48:04 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dao.DAO"%>
<%@page import="model.Customer" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="assets/css/form.css" rel="stylesheet">
    </head>
    <h2>Welcome to Child Care</h2>
    <div class="container" id="container">
        <div class="form-container sign-up-container">
            <form action="register" method="post">
                <h1>Create Account</h1>
                <input type="text" name="fullName" placeholder="Name" />
<!--                <input type="email" name="email" placeholder="Your email" />-->
                <!--                    Send OTP button-->
                <div class="email-container">
                    <input name="email" type="email" id="email" placeholder="Email" />
                    <button type="button" class="small-button" onclick="sendOTP(); startCountdown();"  id="sendOTPButton">Send OTP</button>
                </div>
                <input type="password" name="password" placeholder="Password" />
                <input type="password" name="rePassword" placeholder="Re-Password" />
                <input type="text" name="cOTP" placeholder="Enter OTP here" />
                <button tyoe="submit">Sign Up</button>
            </form>
        </div>
        <div class="form-container sign-in-container">
             <form action="login" method="post">
                <h1>Sign in</h1>
                <input type="email" name="email" value="${requestScope.email}" placeholder="Email" />
                <input type="password" name="password" value="${requestScope.password}" placeholder="Password" />
                <a href="ForgetPassControl">Forgot your password?</a>
                <button tyoe="submit">Sign In</button>
            </form>
        </div>
        <div class="overlay-container">
            <div class="overlay">
                <div class="overlay-panel overlay-left">
                    <h1>Welcome Back!</h1>
                    <p>To keep connected with us please login with your personal info</p>
                    <button class="ghost" id="signIn">Sign In</button>
                </div>
                <div class="overlay-panel overlay-right">
                    <h1>Hello, Friend!</h1>
                    <p>Enter your personal details and start journey with us</p>
                    <button class="ghost" id="signUp">Sign Up</button>
                </div>
            </div>
        </div>
    </div>


    <!-- Vendor JS Files -->
    <script src="assets/js/login.js"></script>
    <script>
                        function sendOTP() {

                            var email = document.getElementById("email").value;

                            var xhr = new XMLHttpRequest();
                            xhr.open("GET", "sendRegisterOTP?email=" + email, true);
                            xhr.onreadystatechange = function () {
                                if (xhr.readyState === 4 && xhr.status === 200) {
                                    alert(xhr.responseText);
                                }
                            };
                            xhr.send();
                        }
    </script>
    <script>
    function startCountdown() {
        var sendOTPButton = document.getElementById("sendOTPButton");
        var countdown = 60; // Số giây đếm ngược
        sendOTPButton.disabled = true;

        // Cập nhật text trên nút sendotp
        sendOTPButton.textContent = countdown + "s";
        var countdownInterval = setInterval(function () {
            countdown--;

            if (countdown <= 0) {
                clearInterval(countdownInterval);
                sendOTPButton.textContent = "Send OTP";
                sendOTPButton.disabled = false;
            } else {
                // Cập nhật thời gian đếm ngược
                sendOTPButton.textContent = countdown + "s";
            }
        }, 1000); // Mỗi 1 giây (1000 milliseconds)
    }
</script>

    <script>
        // Function to show popup message
        function showMessage(message) {
            alert(message);
        }

        // Check if there is a popup message in request attribute and show it
        var popupMessage = "<%= request.getAttribute("message") %>";
        if (popupMessage !== null) {
            showMessage(popupMessage);
        }
    </script>

    <style>
        .email-container {
            display: flex;
            align-items: center;
        }

        .email-container input {
            margin-right: 10px;
            width: 90%;
        }

        .small-button {
            font-size: 10px;
            width: 10%;
            align-items: center;
        }
    </style>



</body>
</html>
