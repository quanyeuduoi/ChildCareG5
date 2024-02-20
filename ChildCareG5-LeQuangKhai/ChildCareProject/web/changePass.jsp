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
        <link rel="stylesheet" href="style.css">
        <style type="text/css">
            @import url('https://fonts.googleapis.com/css?family=Poppins:400,500,600,700&display=swap');
            *{
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: 'Poppins', sans-serif;
            }
            html,body{
                display: grid;
                height: 100%;
                place-items: center;
                text-align: center;
                background: #f2f2f2;
            }
            .container{
                background: #fff;
                padding: 20px 30px;
                width: 420px;
                border-radius: 5px;
                box-shadow: 0 0 15px rgba(0,0,0,0.2);
            }
            .container header{
                padding-top: 5px;
                font-size: 25px;
                font-weight: 600;
                line-height: 33px;
            }
            .container form{
                margin: 5px 8px;
            }
            .container form .error-text{
                background: #F8D7DA;
                padding: 8px 0;
                border-radius: 5px;
                color: #8B3E46;
                border: 1px solid #F5C6CB;

            }
            .container form .error-text.matched{
                background: #D4EDDA;
                color: #588C64;
                border-color: #C3E6CB;
            }
            .container form .field{
                width: 100%;
                height: 45px;
                display: flex;
                margin: 15px 0;
                position: relative;
            }
            form .field input{
                width: 100%;
                height: 100%;
                border: 1px solid lightgrey;
                padding-left: 15px;
                outline: none;
                border-radius: 5px;
                font-size: 17px;
                transition: all 0.3s;
            }
            form .field input::placeholder{
                font-size: 16px;
            }
            form .field input:focus{
                border-color: #27ae60;
                box-shadow: inset 0 0 3px #2fd072;
            }
            form .field .show{
                position: absolute;
                right: 10px;
                top: 50%;
                transform: translateY(-50%);
                font-size: 14px;
                font-weight: 600;
                user-select: none;
                cursor: pointer;
                display: none;
            }
            form .field .show.active{
                color: #27ae60;
            }
            form button{
                width: 100%;
                height: 45px;
                margin: 3px 0 10px 0;
                border: none;
                outline: none;
                background: #27ae60;
                border-radius: 5px;
                color: #fff;
                font-size: 18px;
                font-weight: 500;
                letter-spacing: 1px;
                text-transform: uppercase;
                cursor: no-drop;
                opacity: 0.7;
            }
            form button{
                cursor: pointer;
                opacity: 1;
                transition: all 0.3s;
            }
            form button:hover{
                background: #219150;
            }
        </style>
    </head>

    <div class="container">
        <header class="card-title text-center">Change New Password</header><br>

        <!--Password must contain one lowercase letter, one number, and be at least 7 characters long.-->
        <form action="change" method="">
            <c:if test="${notification != null}">
                <div class="alert error-text">
                    <strong>Warming! ${notification}</strong>
                    <%session.removeAttribute("notification");%>
                </div>
            </c:if>

            <input type="hidden" name="email" value="${sessionScope.cus.email}">
            <div class="field">
                <input type="password" name="oldPass" placeholder="Enter Old Password">

            </div>

            <div class="field">
                <input type="password" name="newPass" placeholder="Enter New Password">
            </div>

            <div class="field">

                <input type="password" name="newPass" placeholder="Confirm Password">
            </div>
            <button type="submit">Confirm</button>
        </form>

    </div>

</html>

