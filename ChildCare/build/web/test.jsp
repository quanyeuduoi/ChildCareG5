<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="assets/css/style_1.css" rel="stylesheet">
    </head>
    <body>
    <%
     String email="";
       
           if(request.getAttribute("email")!=null){
          email = (String)request.getAttribute("email");
          }
          
            String err="";
       
           if(request.getAttribute("err")!=null){
          err = (String)request.getAttribute("err");
          }
          
String sc="";
       
           if(request.getAttribute("sc")!=null){
          sc = (String)request.getAttribute("sc");
          }
%>
    
<div class="card login-form">
        <div class="card-body">
            <h3 class="card-title text-center">Change password</h3>

            <!--Password must contain one lowercase letter, one number, and be at least 7 characters long.-->

            <div class="card-text">
                <form action="ForgetPassControl" method="post">
                    <div class="alert alert-danger alert-dismissible fade show" role="alert">
                        <strong>Warming!</strong> <%=err%><%=sc%>
                        <a class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </a>
                    </div>
                    <input type="hidden" name="email" value="email"> 


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
                    </body>
</html>