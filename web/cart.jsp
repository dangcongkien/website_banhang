<%-- 
    Document   : Cart
    Created on : Oct 31, 2020, 9:42:21 PM
    Author     : trinh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Giỏ hàng</title>
        <link rel="icon" href="avatar/bagbacklogo-removebg-preview.png">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" 
              integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <link href="font/fontawesome-free-5.15.4-web/css/all.min.css" rel="stylesheet" type="text/css"/>
        <style>

/*            .buy-btn {
                text-decoration: none;
                color: white;
            }

            .buy-btn:hover {
                color: white;
            }*/

            .btn-checkout {
                width: 100%;
            }
            

            input[type="text"]:focus {
                outline: none;
                box-shadow: 0px 0px 5px #61C5FA;
                border:1px solid #5AB0DB;
            }
            input[type="text"]:focus:hover {
                outline: none;
                box-shadow: 0px 0px 5px #61C5FA;
                border:1px solid #5AB0DB;
                border-radius:0;
            }
            a {
                text-decoration: none;
                color: black;
            }
            
            .gift-icon {
                margin-right: 5px;
            }
        </style>
    </head>

    <body>
        <div class="container">
            <jsp:include page="navbar.jsp"></jsp:include>
                <div class="shopping-cart">
                    <div class="px-4 px-lg-0">

                        <div class="pb-5">
                            <div class="container">
                                <div class="row">
                                    <div class="col-lg-12 p-5 bg-white rounded shadow-sm mb-5">

                                        <!-- Shopping cart table -->
                                        <div class="table-responsive">
                                            <table class="table">
                                                <thead>
                                                    <tr>
                                                        <th scope="col" class="border-0 bg-light">
                                                            <div class="p-2 px-3 text-uppercase">Stt</div>
                                                        </th>
                                                        <th scope="col" class="border-0 bg-light">
                                                            <div class="p-2 px-3 text-uppercase">Sản Phẩm</div>
                                                        </th>
                                                        <th scope="col" class="border-0 bg-light">
                                                            <div class="py-2 text-uppercase">Đơn Giá</div>
                                                        </th>
                                                        <th scope="col" class="border-0 bg-light">
                                                            <div class="py-2 text-uppercase">Số Lượng</div>
                                                        </th>
                                                        <th scope="col" class="border-0 bg-light">
                                                            <div class="py-2 text-uppercase">Tổng tiền hàng</div>
                                                        </th>
                                                        <th scope="col" class="border-0 bg-light">
                                                            <div class="py-2 text-uppercase">Hủy đơn hàng</div>
                                                        </th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                <c:set var="c" value="${requestScope.cart}"/>
                                                <c:set var="tt" value="0"/>
                                                <c:forEach items="${c.items}" var="i">
                                                    <c:set var="tt" value="${tt+1}"/>
                                                    <tr>
                                                        <td class="align-middle"><strong>${tt}</strong></td>
                                                        <th scope="row">
                                                            <div class="p-2">
                                                                <img src="${i.product.image}" alt="" width="70" class="img-fluid rounded shadow-sm">
                                                                <div class="ml-3 d-inline-block align-middle">
                                                                    <h5 class="mb-0">${i.product.name}</h5>
                                                                </div>
                                                            </div>
                                                        </th>
                                                        <td class="align-middle">
                                                            <strong>
                                                                <fmt:formatNumber pattern="##.#" value="${i.price}"/>
                                                            </strong>
                                                        </td>
                                                        <td class="align-middle">
                                                            <button><a href="process?num=-1&id=${i.product.id}">-</a></button>
                                                            <strong>${i.quantity}</strong>
                                                            <button><a href="process?num=1&id=${i.product.id}">+</a></button>
                                                        </td>
                                                        <td class="align-middle">
                                                            <strong>
                                                                <fmt:formatNumber pattern="##.#" value="${i.price * i.quantity}"/>
                                                            </strong>
                                                        </td>
                                                        <td class="align-middle">
                                                            <form action="process" method="post">
                                                                <input type="hidden" name="id" value="${i.product.id}"/>
                                                                <button type="submit" class="btn btn-danger">Hủy đơn hàng</button>
                                                            </form>
                                                        </td>
                                                    </tr> 
                                                </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                    <!-- End -->
                                </div>
                            </div>

                            <div class="row py-5 p-4 bg-white rounded shadow-sm">
                                <div class="col-lg-6">
                                    <div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold"><strong class="text-muted">Voucher</strong></div>
                                    <div class="p-4">
                                        <div class="input-group mb-4 border rounded-pill p-2">
                                            <input type="text" placeholder="Nhập Voucher" aria-describedby="button-addon3" class="form-control border-0">
                                            <div class="input-group-append border-0">
                                                <button id="button-addon3" type="button" class="btn btn-dark px-4 rounded-pill"><i class="fa fa-gift mr-2 gift-icon"></i>Sử dụng</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold"><strong class="text-muted">Thành tiền</strong></div>
                                    <div class="p-4">
                                        <ul class="list-unstyled mb-4">
                                            <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Phí vận chuyển</strong><strong>Free ship</strong></li>
                                            <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">VAT</strong><strong>${vat}</strong></li>
                                            <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Tổng thanh toán</strong>
                                                <h5 class="font-weight-bold">
                                                    <fmt:formatNumber pattern="##.#" value="${c.totalMoney}"/>₫
                                                </h5>
                                            </li>
                                        </ul>
                                        <div class="d-grid gap-2">
                                            <form action="checkout" method="post">
                                                <button class="btn btn-dark btn-checkout" type="submit">
                                                    Mua hàng
                                                </button>
                                            </form>
                                            <a style="text-decoration: underline; color: blue" href="login">${requestScope.error}</a>
                                        </div>

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
