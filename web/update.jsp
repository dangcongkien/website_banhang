<%-- 
    Document   : update
    Created on : Jun 19, 2022, 12:41:21 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sản phẩm</title>
        <link rel="icon" href="avatar/bagbacklogo-removebg-preview.png">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" 
              integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    </head>
    <body>
        <div class="container">
            <form action="update" method="post">

                <div class="modal-header">
                    <h2 class="modal-title">Update product</h2>
                </div>

                <!-- Modal body -->
                <div class="modal-body">
                    <div>
                        <label>ID</label>
                        <input class="form-control" type="text" name="id" value="${detail.id}" readonly required/>
                    </div>
                    <div>
                        <label>Name</label>
                        <input class="form-control" type="text" name="name" value="${detail.name}" required/>
                    </div>
                    <div>
                        <label>Image</label>
                        <input class="form-control" type="text" name="image" value="${detail.image}" required/>
                    </div>
                    <div>
                        <label>Price</label>
                        <input class="form-control" type="text" name="price" value="${detail.price}" required/>
                    </div>
                    <div>
                        <label>Title</label>
                        <textarea class="form-control" name="title" required>${detail.title}</textarea>
                    </div>
                    <div>
                        <label>Description</label>
                        <textarea class="form-control" name="description" ">${detail.description}</textarea>
                    </div>
                    <div>
                        <label>Quantity</label>
                        <input class="form-control" type="text" name="quantity" value="${detail.quantity}" required/>
                    </div>
                    <div>
                        <label>Category</label>
                        <select name="category" class="form-select form-select-sm" aria-label=".form-select-sm example">
                            <c:forEach items="${requestScope.listC}" var="c">
                                <option value="${c.cid}">${c.cname}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>

                <!-- Modal footer -->
                <div class="modal-footer">
                    <button type="submit" class="btn btn-success">Save</button>
                </div>
            </form>
        </div>
    </body>
</html>
