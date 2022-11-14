<%-- 
    Document   : home.jsp
    Created on : Jun 3, 2022, 8:39:10 PM
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
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <link href="font/fontawesome-free-5.15.4-web/css/all.min.css" rel="stylesheet" type="text/css"/>
        <style>
            a.active {
                background-color: #6c757d;
                opacity: 0.5;
                color: white
            }

            .cart-wrap {
                position: relative;
                margin: 8px 8px 0 0;
                display: inline-block;
                padding: 0 12px;
                cursor: pointer;
                -webkit-tap-highlight-color: transparent;
            }

            .cart-icon {
                font-size: 20px;
            }

            .header__cart-notice {
                position: absolute;
                top: -5px;
                right: -3px;
                padding: 1px 7px;
                font-size: 14px;
                line-height: 14px;
                background-color: black;
                color: white;
                border-radius: 10px;
                border: 2px solid white;
            }

            .cart-btn, input[type="submit"], input[type="reset"] {
                background: none;
                color: inherit;
                border: none;
                padding: 0;
                font: inherit;
                cursor: pointer;
                outline: inherit;
            }

            .cart-link {
                color: black;
            }

            .cart-link:hover {
                color: black;
            }

            .nav-right {
                display: flex;
                align-items: center;
            }

            .home-filter {
                background-color: rgba(0, 0, 0, 0.04);
                display: flex;
                align-items: center;
                padding: 12px 22px;
                border-radius: 2px;
                margin-bottom: 10px;
            }

            .home-filter-title {
                font-size: 14px;
                color: #555;
                margin-right: 16px;
            }

            .btn-filter {
                margin-right: 12px;
            }

            .home-filter__page {
                display: flex;
                align-items: center;
                margin-left: auto;
            }

            .home-filter__page-num {
                font-size: 14px;
                color: #333;
                margin-right: 22px;
            }

            .home-filter__page-current {
                color: blue;
            }

            .home-filter__page-control {
                border-radius: 2px;
                overflow: hidden;
                width: 72px;
                height: 36px;
                display: flex;
                box-shadow: 0 1px 2px rgba(153, 153, 153, 0.2);
            }

            .home-filter__page-btn {
                display: flex;
                flex: 1;
                background-color: white;
                text-decoration: none;
            }

            .home-filter__page-btn--disable {
                background-color: #f9f9f9;
                cursor: default;
            }

            .home-filter__page-btn--disable .home-filter__page-icon {
                color: #ccc;
            }

            .home-filter__page-btn:first-child {
                border-right: 1px solid #eee;
            }

            .home-filter__page-icon {
                font-size: 14px;
                margin: auto;
                color: #555;
            }

            .select-option {
                position: relative;
                min-width: 200px;
                height: 34px;
                background-color: white;
                padding: 0 12px;
                border-radius: 2px;
                display: flex;
                justify-content: space-between;
                align-items: center;
                box-shadow: 0 1px 2px rgba(153, 153, 153, 0.2);
            }

            .select-option__title {
                font-size: 14px;
            }

            .select-option__icon {
                font-size: 14px;
                color: #ccc;
                position: relative;
                top: 1px;
            }

            .select-option__list {
                position: absolute;
                top: 25px;
                left: 0;
                right: 0;
                background-color: white;
                padding: 12px 16px;
                box-shadow: 0 1px 2px #e0e0e0;
                list-style: none;
                display: none;
                z-index: 1;
            }

            .select-option:hover .select-option__list {
                display: block;
            }

            .select-option__item-link {
                font-size: 14px;
                color: #212529;
                text-decoration: none;
                display: block;
                padding: 6px 0;
            }

            .select-option__item-link:hover {
                color: blue;
                opacity: 0.7;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <nav class="navbar navbar-light navbar-bg">

                <div class="container-fluid">
                    <div style="display: flex;align-items: end;">
                        <a class="navbar-brand nav-title" href="http://localhost:9999/Project_PRJ_WebBanhang/home ${home}" style="color: #000"><h3>Home</h3></a>

                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <c:if test="${sessionScope.account != null}">
                                    <li class="breadcrumb-item"><a class="navbar__item-link" href="profileU?uId=${sessionScope.account.id}">Welcome ${sessionScope.account.username}</a></li>
                                    <li class="breadcrumb-item"><a class="navbar__item-link" href="logout">Logout</a></li>
                                    </c:if>

                                <c:if test="${sessionScope.account == null}">
                                    <li class="breadcrumb-item"><a class="navbar__item-link" href="login">Login</a></li>
                                    </c:if>  

                                <c:if test="${sessionScope.account.isAdmin == 1}">
                                    <li class="breadcrumb-item"><a class="navbar__item-link" href="account">Manager Account</a></li>
                                    </c:if>

                                <c:if test="${sessionScope.account.isSell == 1}">
                                    <li class="breadcrumb-item"><a class="navbar__item-link" href="manager">Manager Product</a></li> 
                                    </c:if>

                            </ol>
                        </nav>    
                    </div>

                    <div class="nav-right">
                        <a class="cart-link" href="show">
                            <div class="cart-wrap">
                                <li class="cart-icon fas fa-shopping-cart"></li>  
                                <span class="header__cart-notice">${requestScope.size}</span>
                            </div>
                        </a>

                        <form class="d-flex" action="search" method="post">
                            <input value="${requestScope.search}" name="text" class="form-control me-2" type="text" placeholder="Search" aria-label="Search">
                            <button type="submit" class="btn btn-primary">Search</button>
                        </form> 
                    </div>

                </div>
            </nav>
        </div>
        <jsp:include page="headpage.jsp"></jsp:include>
            <div class="container">
                <!-- Begin hot product --> 
                <h3 class="new-product-title">New product <span class="badge bg-secondary">New</span></h3>

                <div class="row" style="margin-bottom: 30px">
                <c:forEach items="${requestScope.newP}" var="n">
                    <div class="col-md-3">
                        <div class="card" style="width: 18rem;">
                            <img src="${n.image}" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title card-heading__text">
                                    <a href="detail?id=${n.id}" class="card-name">${n.name}</a>
                                </h5>
                                <p class="card-text card-title__text">${n.title}</p>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
            <!-- End hot product -->

            <div class="row">
                <jsp:include page="category.jsp"></jsp:include>

                    <div class="home-product col-md-10">

                        <!-- Order by -->
                        <div class="home-filter hide-on-tablet-mobile">
                            <span class="home-filter-title">Sắp xếp theo</span>
                            <button type="button" class="btn btn-light btn-filter">Phổ biến</button>
                            <button type="button" class="btn btn-secondary btn-filter">Mới nhất</button>
                            <button type="button" class="btn btn-light btn-filter">Bán chạy</button>

                            <div class="select-option">
                                <span class="select-option__title">Giá</span>
                                <i class="select-option__icon fas fa-angle-down"></i>
                                <!-- List option prices -->
                                <ul class="select-option__list">
                                    <li class="select-option__item">
                                        <a href="sortasc" class="select-option__item-link">Giá: Thấp đến cao</a>
                                    </li>
                                    <li class="select-option__item">
                                        <a href="sortdesc" class="select-option__item-link">Giá: Cao đến thấp</a>
                                    </li>

                                </ul>
                            </div>

                            <div class="home-filter__page">
                                <span class="home-filter__page-num">
                                    <span class="home-filter__page-current">1</span>/14
                                </span>

                                <div class="home-filter__page-control">
                                    <a href="#" class="home-filter__page-btn home-filter__page-btn--disable">
                                        <i class="home-filter__page-icon fas fa-angle-left"></i>
                                    </a>
                                    <a href="#" class="home-filter__page-btn">
                                        <i class="home-filter__page-icon fas fa-angle-right"></i>
                                    </a>
                                </div>
                            </div>
                        </div>

                        <form name="f" action="" method="post">
                            <input type="hidden" name="num" value="1"/>
                            <div class="row">
                            <c:forEach var="p" items="${requestScope.listP}">
                                <c:set var="id" value="${p.id}"/>
                                <div class="col-md-4">
                                    <div class="card" style="width: 18rem;">
                                        <img src="${p.image}" class="card-img-top" alt="...">
                                        <div class="card-body">
                                            <h5 class="card-title card-heading__text">
                                                <a href="detail?id=${p.id}" class="card-name">${p.name}</a>
                                            </h5>
                                            <p class="card-text card-title__text">${p.title}</p>
                                            <div class="product-btn">
                                                <p class="current-price"><fmt:formatNumber pattern="##.#" value="${p.price}"/>₫</p>
                                                <button type="button" onclick="buy('${id}')" class="btn btn-success">
                                                    Add to cart
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </form>
                </div>
            </div>

            <nav aria-label="Page navigation example" style="margin: 30px 0 30px 0">
                <ul class="pagination justify-content-center">
                    <li class="page-item disabled">
                        <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
                    </li>
                    <c:forEach begin="1" end="${endPage}" var="e">
                        <li class="page-item">
                            <a class="page-link ${index == e?"active":""}" href="home?index=${e}">${e}</a>
                        </li>
                    </c:forEach>

                    <li class="page-item">
                        <a class="page-link" href="#">Next</a>
                    </li>
                </ul>
            </nav>

        </div>
    </div>
    <jsp:include page="footer.jsp"></jsp:include>

</body>
</html>
<script type="text/javascript">
    function buy(id) {
        var m = document.f.num.value;
        document.f.action = "buy?id=" + id + "&num=" + m;
        document.f.submit();
    }
</script>