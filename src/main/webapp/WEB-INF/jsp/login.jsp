<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <!-- head tags -->
    <%@ include file="/WEB-INF/jsp/template/head.jsp" %>

    <title>UsersCRUD - login</title>

</head>

<body class="bg-gradient-primary">

    <div class="container">

        <!-- Outer Row -->
        <div class="row justify-content-center">

            <div class="col-xl-10 col-lg-12 col-md-9">

                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0">
                        <!-- Nested Row within Card Body -->
                        <div class="row">
                            <div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
                            <div class="col-lg-6">
                                <div class="p-5">

                                    <!-- Bootstrap Alert for logging -->
                                    <c:if test="${'fail'.equals(sessionScope.login)}">
                                        <c:remove var="edit" scope="session"/>

                                        <div class="alert alert-danger alert-dismissible fade show" role="alert">
                                            <strong>Error</strong> Login failed, try again!
                                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>

                                    </c:if>
                                    <!-- End of Bootstrap Alert -->

                                    <!-- Bootstrap Alert for logging -->
                                    <c:if test="${'logout'.equals(sessionScope.login)}">

                                        <div class="alert alert-success alert-dismissible fade show" role="alert">
                                            <strong>Success</strong> You were successfully logged out!
                                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>

                                    </c:if>
                                    <!-- End of Bootstrap Alert -->

                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-4">Welcome Back!</h1>
                                    </div>
                                    <form class="user" method="post">
                                        <div class="form-group">
                                            <input type="email" class="form-control form-control-user"
                                                   id="exampleInputEmail" name="email" aria-describedby="emailHelp"
                                                   placeholder="Enter Email Address...">
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control form-control-user"
                                                   id="exampleInputPassword" name="password" placeholder="Password">
                                        </div>
                                        <button type="submit" class="btn btn-primary btn-user btn-block">
                                            <span class="text">Login</span>
                                        </button>
                                    </form>
                                    <hr>
                                    <div class="container my-auto">
                                        <div class="copyright text-center my-auto">
                                            <span>Copyright &copy; Bartosz Robakowski 2020</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>

    </div>

    <!-- All used scripts-->
    <%@ include file="/WEB-INF/jsp/template/scripts.jsp" %>

</body>

</html>
