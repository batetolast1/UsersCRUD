<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <!-- head tags -->
    <%@ include file="/WEB-INF/jsp/template/head.jsp" %>

    <title>UsersCRUD - edit user data</title>

</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <%@ include file="/WEB-INF/jsp/template/sidebar.jsp" %>

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <%@ include file="/WEB-INF/jsp/template/topbar.jsp" %>

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <%@ include file="/WEB-INF/jsp/template/pageHeading.jsp" %>

                    <!-- Bootstrap Alert for updating user -->
                    <c:if test="${'fail'.equals(sessionScope.edit)}">
                        <c:remove var="edit" scope="session"/>

                        <div class="alert alert-danger alert-dismissible fade show" role="alert">
                            <strong>Error</strong> User data was not updated!
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>

                    </c:if>
                    <!-- End of Bootstrap Alert -->

                    <!-- Content Card -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Edit user</h6>
                        </div>
                        <div class="card-body">

                            <!-- Content goes here! -->

                            <%--@elvariable id="user" type="pl.coderslab.jeeusercrud.entity.User"--%>
                            <form method="post">
                                <input type="hidden" name="id" value="${user.id}"/>
                                <div class="form-group">
                                    <label for="username">Username</label>
                                    <input type="text" class="form-control" name="username" id="username"
                                           value="${user.userName}" required>
                                </div>
                                <div class="form-group">
                                    <label for="email">Email address</label>
                                    <input type="email" class="form-control" name="email" id="email"
                                           value="${user.email}" required>
                                </div>
                                <div class="form-group">
                                    <label for="password">Password</label>
                                    <input type="password" class="form-control" name="password" id="password"
                                           placeholder="Enter new password" required>
                                </div>
                                <button type="submit" class="btn btn-success btn-icon-split">
                                    <span class="icon text-white-50"><i class="fas fa-edit"></i></span>
                                    <span class="text">Edit</span>
                                </button>
                                <a href="<c:url value="/user/list"/>" class="btn btn-light btn-icon-split">
                                    <span class="icon text-white-50"><i class="fas fa-arrow-circle-left"></i></span>
                                    <span class="text">Cancel</span>
                                </a>
                            </form>
                            <!-- End of Content -->

                        </div>
                    </div>
                    <!-- End of Content tab -->

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <%@ include file="/WEB-INF/jsp/template/footer.jsp" %>

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <%@ include file="/WEB-INF/jsp/template/scrollToTop.jsp" %>

    <!-- All used scripts-->
    <%@ include file="/WEB-INF/jsp/template/scripts.jsp" %>

</body>

</html>
