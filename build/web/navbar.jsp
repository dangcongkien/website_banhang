
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<style>
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
</style>

<nav class="navbar navbar-light navbar-bg">
    <div class="container-fluid">
        <div style="display: flex;align-items: end;">
            <a class="navbar-brand nav-title" href="http://localhost:9999/Project_PRJ_WebBanhang/home ${home}" style="color: #000"><h3>Home</h3></a>
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <c:if test="${sessionScope.account != null}">
                        <li class="breadcrumb-item"><a class="navbar__item-link" href="#">Welcome ${sessionScope.account.username}</a></li>
                        <li class="breadcrumb-item"><a class="navbar__item-link" href="logout">Logout</a></li>
                        </c:if>

                    <c:if test="${sessionScope.account == null}">
                        <li class="breadcrumb-item"><a class="navbar__item-link" href="login.jsp">Login</a></li>
                        </c:if>  

                    <c:if test="${sessionScope.account.isAdmin == 1}">
                        <li class="breadcrumb-item"><a class="navbar__item-link" href="#">Manager Account</a></li>
                        </c:if>

                    <c:if test="${sessionScope.account.isSell == 1}">
                        <li class="breadcrumb-item"><a class="navbar__item-link" href="#">Manager Product</a></li> 
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