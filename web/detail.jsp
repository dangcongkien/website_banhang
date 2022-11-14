<%-- 
    Document   : detail
    Created on : Jun 6, 2022, 9:21:17 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trang chủ</title>
        <link rel="icon" href="avatar/bagbacklogo-removebg-preview.png">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" 
              integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <link href="font/fontawesome-free-5.15.4-web/css/all.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        
        <div class="container">
            <jsp:include page="navbar.jsp"></jsp:include>
        </div>
        <jsp:include page="headpage.jsp"></jsp:include>
        <div class="container">

                <div class="row"  style="height: 533px;">
                    <div class="col-md-2">
                        <nav class="category">
                            <h3 class="category__heading">Danh mục</h3>

                            <ul class="category-list">
                                <li class="category-item category-item--active">
                                    <a href="#" class="category-item__link">Sản phẩm</a>
                                </li>
                            <c:forEach items="${requestScope.listC}" var="c">
                                <li class="category-item">
                                    <a href="category?cid=${c.cid}" class="category-item__link">${c.cname}</a>
                                </li>
                            </c:forEach>

                        </ul>
                    </nav>
                </div>

                <div class="home-product col-md-10">
                    <div class="row">
                        <div class="card mb-3 col-md-6" style="max-width: 540px;">
                            <div class="row g-0">
                                <div class="col-md-4">
                                    <img src="${detail.image}" class="img-fluid rounded-start" alt="...">
                                </div>
                                <div class="col-md-8">
                                    <div class="card-body">
                                        <h5 class="card-title">${detail.name}</h5>
                                        <p class="current-price"><fmt:formatNumber pattern="##.#" value="${detail.price}"/>₫</p>
                                        <p class="card-text">${detail.description}</p>
                                        <div class="product-btn product-btn-detail">
                                            <a>
                                                <button type="button" class="btn btn-primary">Buy now</button>
                                            </a>
                                            <a>
                                                <button type="button" class="btn btn-success">Add to cart</button>
                                            </a>

                                        </div>
                                        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <jsp:include page="footer.jsp"></jsp:include>
                               
    </body>
</html>
