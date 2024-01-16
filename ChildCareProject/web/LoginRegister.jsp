<%-- 
    Document   : LoginRegister
    Created on : Jan 13, 2024, 12:48:04 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dao.DAO"%>
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
            <form action="#">
                <h1>Create Account</h1>
                <input type="text" name="fullName" placeholder="Name" />
                <div class="email-container">
                    <input name="email" type="email" id="email" placeholder="Email" />
                    <button class="small-button" onclick="sendOTP()">Send OTP</button>
                </div>
                <input type="password" name="password" placeholder="Password" />
                <input type="rePassword" name="rePassword" placeholder="Re-Password" />
                <input type="otp" name="cOTP" placeholder="Enter OTP here" />
                <button>Sign Up</button>
            </form>
        </div>
        <div class="form-container sign-in-container">
            <form action="#">
                <h1>Sign in</h1>
                <input type="email" placeholder="Email" />
                <input type="password" placeholder="Password" />
                <a href="#">Forgot your password?</a>
                <button>Sign In</button>
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
        <%
            String emailToCheck = request.getParameter("email");
            DAO dao = new DAO();
            Customer customer = dao.CheckCustomerExist(emailToCheck);

            if (customer != null) {
        %>
                alert("Email already exists!");
        <%
            } else {
        %>
                // Call other functions 
                var subject = "Here is your OTP.";
                var otp = generateOTP();
                updatcOTPinDatabase(emailToCheck, otp);
                sendOTPEmail(subject, emailToCheck, otp);
        <%
            }
        %>
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
