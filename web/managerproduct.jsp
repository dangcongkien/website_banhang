<%-- 
    Document   : managerproduct
    Created on : Jun 17, 2022, 9:08:27 PM
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
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <style>
            table {
                background-color: white;
                border-radius: 10px;
            }

            .btn {
                margin: 2px 0 0 5px;
            }
            .btn:hover {
                opacity: 0.8;
            }
            .btn-delete {
                text-decoration: none;
                color: black;
                padding: 10px;
                border-radius: 5px;
                background-color: red;
            }

            .btn-update {
                text-decoration: none;
                color: black;
                padding: 10px;
                border-radius: 5px;
                background-color: yellow;
            }

            .btn-add {
                text-decoration: none;
                color: white;
                padding: 10px;
                border-radius: 5px;
                background-color: green;
            }

            .btn-back {
                text-decoration: none;
                color: white;
                padding: 10px;
                border-radius: 5px;
                background-color: blue;
            }

            .manager-footer {
                display: flex;
                justify-content: space-between;
                align-items: center;
            }

            .container-manager {
                /*margin-top: 60px;*/
            }

            .manager-heading {
                display: flex;
                justify-content: space-between;
                margin: 30px 0 20px 0;
            }
        </style>

    </head>
    <body>
        <div class="container container-manager">

            <div class="manager-heading">
                <h2>Manager Product</h2>
                <button type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#myModal">
                    Add new product
                </button>
            </div>
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th scope="col">
                            <input type="checkbox" id="id" name="name" value="value">
                        </th>
                        <th scope="col">ID</th>
                        <th scope="col">Name</th>
                        <th scope="col">Image</th>
                        <th scope="col">Price</th>
                        <th scope="col">Action</th>
                    </tr>
                </thead>
                <tbody> 
                    <c:forEach items="${requestScope.listP}" var="p">
                        <c:set var="id" value="${p.id}"/>
                        <tr>
                            <th scope="row">
                                <input type="checkbox" value="value">
                            </th>
                            <td>${id}</td>
                            <td>${p.name}</td>
                            <td>
                                <img src="${p.image}" style="width: 100px; height: 100px" alt="alt"/>
                            </td>
                            <td>${p.price}d</td>
                            <td>
                                <a class="btn btn-update" href="update?pid=${id}">Update</a>
                                <a class="btn btn-delete" href="delete?pid=${id}">Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
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
                                <a class="page-link ${index == e?"active":""}" href="manager?index=${e}">${e}</a>
                            </li>
                        </c:forEach>

                        <li class="page-item">
                            <a class="page-link" href="#">Next</a>
                        </li>
                    </ul>
                </nav>
            </div>

            <!-- Add new product -->
            <form action="add" method="post">
                <!-- The Modal -->
                <div class="modal" id="myModal">
                    <div class="modal-dialog modal-dialog-centered">
                        <div class="modal-content">

                            <!-- Modal Header -->
                            <div class="modal-header">
                                <h4 class="modal-title">Add new product</h4>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                            </div>

                            <!-- Modal body -->
                            <div class="modal-body">
                                <div>
                                    <label>Name</label>
                                    <input class="form-control" type="text" name="name" required/>
                                </div>
                                <div>
                                    <label>Image</label>
                                    <input class="form-control" type="text" name="image" required/>
                                </div>
                                <div>
                                    <label>Price</label>
                                    <input class="form-control" type="text" name="price" required/>
                                </div>
                                <div>
                                    <label>Title</label>
                                    <textarea class="form-control" name="title" required></textarea>
                                </div>
                                <div>
                                    <label>Description</label>
                                    <textarea class="form-control" name="description"></textarea>
                                </div>
                                <div>
                                    <label>Quantity</label>
                                    <input class="form-control" type="text" name="quantity" required/>
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
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                                <button type="submit" class="btn btn-success">Add</button>
                            </div>

                        </div>
                    </div>
                </div>
            </form>
        </div>
    </body>
</html>
