<%-- 
    Document   : changePass
    Created on : Jan 21, 2024, 5:56:58 PM
    Author     : ACER NQC0821
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="assets/css/style_1.css" rel="stylesheet">
    </head>
    <div class="card login-form">
        <div class="card-body">
            <h3 class="card-title text-center">Change password</h3>

            <!--Password must contain one lowercase letter, one number, and be at least 7 characters long.-->

            <div class="card-text">
                <form action="change" method="post">
<!--                    <div class="alert alert-danger alert-dismissible fade show" role="alert">
                        <strong>Holy guacamole!</strong> You should check in on some of those fields below.
                        <a class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </a>
                    </div>-->
                    <input type="hidden" name="email" value="${sessionScope.cus.email}"> 
<!--                    <input type="hidden" name="oldPass" value="${sessionScope.customer.password}">-->
                    <div class="form-group">
                        <label for="exampleInputEmail1">Your old password</label>
                        <input type="password" class="form-control form-control-sm" name="oldPass">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Your new password</label>
                        <input type="password" class="form-control form-control-sm" name="newPass">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Confirm your password</label>
                        <input type="password" class="form-control form-control-sm" name="conPass">
                    </div>
                    <button type="submit" class="btn btn-primary btn-block submit-btn">Confirm</button>
                </form>
            </div>
        </div>
    </div>
</html>

