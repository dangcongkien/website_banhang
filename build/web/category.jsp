
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
