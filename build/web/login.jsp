<%-- 
    Document   : testlogin
    Created on : Jun 10, 2022, 10:11:55 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Đăng nhập</title>
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
                            <div class="card-body p-5 text-center" style="height: 600px">
                                <form action="login" method="post">
                                    <div class="mb-md-5 mt-md-4 pb-5">

                                        <h2 class="fw-bold mb-2 text-uppercase">Login</h2>
                                        <p class="text-white-50 mb-5">Please enter your username and password!</p>
                                        <p style="color: red">${requestScope.ms}</p>
                                        <div class="form-outline form-white mb-4">
                                            <input type="text" value="${requestScope.usernameC}" name="user" class="form-control form-control-lg" placeholder="Enter username"/>
                                        </div>

                                        <div class="form-outline form-white mb-4">
                                            <input type="password" value="${requestScope.passwordC}" name="pass" class="form-control form-control-lg" placeholder="Enter password"/>
                                        </div>
                                        
                                        <div style="display: flex;align-items: baseline;justify-content: space-between;">
                                            
                                                <input type="checkbox" name="remember" value="1">
                                                <label style="margin-right: 206px; font-size: 14px; color: #ffffff80;">Remember me</label>
                                            
                                            <p class="small mb-5 pb-lg-2"><a class="text-white-50" href="#!">Forgot password?</a></p>
                                        </div>
                                                
                                        <button class="btn btn-outline-light btn-lg px-5" type="submit">Login</button>
                                        <p class="mb-0" style="margin-top: 40px;">Don't have an account? <a href="signup.jsp" class="text-white-50 fw-bold">Sign Up</a></p>
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
