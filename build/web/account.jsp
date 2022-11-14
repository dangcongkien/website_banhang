<%-- 
    Document   : account
    Created on : Jun 24, 2022, 2:00:26 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tài khoản</title>
        <link rel="icon" href="avatar/bagbacklogo-removebg-preview.png">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" 
              integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        

        <style>
            .heading {
                margin: 30px 0 20px 0;
            }
            .manager-footer {
                display: flex;
                justify-content: space-between;
                align-items: center;
            }
            .btn-back {
                text-decoration: none;
                color: white;
                padding: 10px;
                border-radius: 5px;
                background-color: blue;
            }
            .btn-back:hover {
                opacity: 0.7;
                color: white;
            }
            .link {
                color: black;
                text-decoration: none;
                
            }
            a.active {
                background-color: #6c757d;
                opacity: 0.5;
                color: white
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h2 class="heading">Account Manager</h2>
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Account</th>
                        <th scope="col">Password</th>
                        <th scope="col">Role</th>
                    </tr>
                </thead>
                <c:forEach items="${requestScope.listA}" var="a">
                    <tbody>
                        <tr>
                            <th scope="row">${a.id}</th>
                            <td>
                                <a class="link" href="profile?uId=${a.id}">${a.username}</a>
                            </td>
                            
                            <td>${a.password}</td>
                            <c:if test="${a.isAdmin == 1}">
                                <td>Admin</td>
                            </c:if>
                            <c:if test="${a.isSell == 1}">
                                <td>Seller</td>
                            </c:if>
                            <c:if test="${a.isSell == 0 && a.isAdmin == 0}">
                                <td>User</td>
                            </c:if>
                        </tr>

                    </tbody>
                </c:forEach>

            </table>
            <div class="manager-footer">
                <a class="btn-back" href="http://localhost:9999/Project_PRJ_WebBanhang/home ${home}">Back to home</a>
                <nav aria-label="Page navigation example" style="margin: 30px 0 30px 0">
                    <ul class="pagination justify-content-center">
                        <li class="page-item disabled">
                            <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
                        </li>
                        <c:forEach begin="1" end="${endPage}" var="e">
                            <li class="page-item">
                                <a class="page-link ${index == e?"active":""}" href="account?index=${e}">${e}</a>
                            </li>
                        </c:forEach>

                        <li class="page-item">
                            <a class="page-link" href="#">Next</a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
    </body>
</html>
