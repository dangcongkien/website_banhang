<%-- 
    Document   : profile
    Created on : Jun 26, 2022, 2:18:09 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hồ sơ</title>
        <link rel="icon" href="avatar/bagbacklogo-removebg-preview.png">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" 
              integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <link href="font/fontawesome-free-5.15.4-web/css/all.min.css" rel="stylesheet" type="text/css"/>
        <style>
            .item-icon {
                border-radius: 50%;
                font-size: 20px;

            }
            .change-pass{
                display: block;
                margin: -20px 0 20px 0;
            }
        </style>
    </head>
    <body>
        <section class="vh-100" style="background-color: #eee;">
            <div class="container py-5 h-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col-md-12 col-xl-4">

                        <div class="card" style="border-radius: 15px;">
                            <div class="card-body text-center">
                                <div class="mt-3 mb-4">
                                    <img src="avatar/OIP (1).jpg"
                                         class="rounded-circle img-fluid" style="width: 100px;" />
                                </div>
                                <h4 class="mb-2">${detailA.username}</h4>
                                <c:if test="${detailA.isSell==1}">
                                    <p class="text-muted mb-4">Seller</p>
                                </c:if>
                                <c:if test="${detailA.isAdmin==1}">
                                    <p class="text-muted mb-4">Admin</p>
                                </c:if>
                                <c:if test="${detailA.isSell == 0 && detailA.isAdmin == 0}">
                                    <p class="text-muted mb-4">User</p>
                                </c:if>
                                <div class="mb-4 pb-2">
                                    <button type="button" class="btn btn-outline-primary btn-floating item-icon">

                                        <i class="fab fa-facebook"></i>
                                    </button>
                                    <button type="button" class="btn btn-outline-primary btn-floating item-icon">
                                        <i class="fab fa-instagram"></i>
                                    </button>
                                    <button type="button" class="btn btn-outline-primary btn-floating item-icon">
                                        <i class="fab fa-linkedin"></i>
                                    </button>
                                </div>

                                <a class="change-pass" href="changepassword?uId=${detailA.id}">Change password</a>

                                <button type="button" class="btn btn-primary btn-rounded btn-lg">
                                    Message now
                                </button>
                                <div class="d-flex justify-content-between text-center mt-5 mb-2">

                                    <c:if test="${detailA.isSell==1}">
                                        <div>
                                            <p class="mb-2 h5">${totalP}.0</p>
                                            <p class="text-muted mb-0">Total product</p>
                                        </div>
                                        <div class="px-3">
                                            <p class="mb-2 h5"><fmt:formatNumber pattern="##.#" value="${detailA.amount}"/>₫</p>
                                            <p class="text-muted mb-0">Account balance</p>
                                        </div>
                                        <div>
                                            <p class="mb-2 h5">${Math.floor(Math.random()* ((5000-1000)+1) + 1000)}</p>
                                            <p class="text-muted mb-0">Total follower</p>
                                        </div>
                                    </c:if>
                                    <c:if test="${detailA.isSell==0 && detailA.isAdmin == 0}">
                                        <div class="px-3 text-center" style="margin-left: 30%">
                                            <p class="mb-2 h5"><fmt:formatNumber pattern="##.#" value="${detailA.amount}"/>₫</p>
                                            <p class="text-muted mb-0">Account balance</p>
                                        </div>
                                    </c:if>

                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </section>
    </body>
</html>
