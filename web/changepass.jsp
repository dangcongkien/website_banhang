<%-- 
    Document   : signup
    Created on : Jun 11, 2022, 9:06:48 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Đăng kí</title>
        <link rel="icon" href="avatar/bagbacklogo-removebg-preview.png">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" 
              integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <section class="vh-100 gradient-custom" style="background-color: royalblue">
            <div class="container py-5 h-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                        <div class="card bg-dark text-white" style="border-radius: 1rem;">
                            <div class="card-body p-5 text-center">
                                <form action="changepassword" method="post">
                                    <div class="mb-md-5 mt-md-4 pb-5">

                                        <h2 class="fw-bold mb-2 text-uppercase" style="margin-top: 20px">Change password</h2>
                                        
                                        <p style="color: red">${requestScope.ms}</p>
                                        <input type="hidden" name="id">
                                        <div class="form-outline form-white mb-4" style="margin-top: 50px">
                                            <input type="password" name="oldpass" class="form-control form-control-lg" placeholder="Enter current password"/>
                                        </div>

                                        <div class="form-outline form-white mb-4">
                                            <input type="password" name="newpass" class="form-control form-control-lg" placeholder="Enter new password"/>
                                        </div>

                                        <div class="form-outline form-white mb-4">
                                            <input type="password" name="repass" class="form-control form-control-lg" placeholder="Confirm your password"/>
                                        </div>

                                        <button class="btn btn-outline-light btn-lg px-5" type="submit" style="margin: 50px 0 -42px 0">Change password</button>


                                    </div>

                                    <div>
                                        <p class="mb-0"><a href="home" class="text-white-50 fw-bold">Back</a>
                                        </p>
                                    </div>
                                </form>


                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>
