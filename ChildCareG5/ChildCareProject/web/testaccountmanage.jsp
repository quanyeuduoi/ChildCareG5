<%-- 
    Document   : testaccountmanage
    Created on : Feb 22, 2024, 11:29:46 PM
    Author     : ACER NQC0821
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<!DOCTYPE html>
<html>
    <head>
        <title>Account List</title>
    </head>
    <body>
        <h1>Account List</h1>
        <table border="1">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Email</th>
                    <th>Name</th>
                    <th>Role</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="acc" items="${account}" >
                    <tr>
                        <td><${acc.accountID}></td>
                        <td><${acc.email}</td>
                        <td><${acc.fullName}</td>
                        <td><${acc.role}</td>
                        <td><${acc.status}</td>
                    </tr>     
                </c:forEach>    
            </tbody>
        </table>
    </body>
</html>

