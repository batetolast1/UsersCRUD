<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <!-- head tags -->
    <%@ include file="/WEB-INF/jsp/template/head.jsp" %>

    <title>UsersCRUD - all users</title>

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

                    <!-- Bootstrap Alert for creating new user -->
                    <c:if test="${'success'.equals(sessionScope.add)}">
                        <c:remove var="add" scope="session"/>

                        <div class="alert alert-success alert-dismissible fade show" role="alert">
                            <strong>Success</strong> New user added to database!
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>

                    </c:if>
                    <!-- End of Bootstrap Alert -->

                    <!-- Bootstrap Alert for updating user -->
                    <c:if test="${'success'.equals(sessionScope.edit)}">
                        <c:remove var="edit" scope="session"/>

                        <div class="alert alert-success alert-dismissible fade show" role="alert">
                            <strong>Success</strong> User data updated!
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>

                    </c:if>
                    <!-- End of Bootstrap Alert -->

                    <!-- Bootstrap Alert for deleting user -->
                    <c:if test="${'success'.equals(sessionScope.delete)}">
                        <c:remove var="delete" scope="session"/>

                        <div class="alert alert-success alert-dismissible fade show" role="alert">
                            <strong>Success</strong> User was deleted!
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>

                    </c:if>
                    <!-- End of Bootstrap Alert -->

                    <!-- Users Card -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">All users</h6>
                        </div>
                        <div class="card-body">

                            <!-- Content goes here! -->

                            <table class="table">
                                <thead>
                                <tr>
                                    <th scope="col">ID</th>
                                    <th scope="col">Username</th>
                                    <th scope="col">E-mail</th>
                                    <th scope="col">Actions</th>
                                </tr>
                                </thead>

                                <tbody>
                                <%--@elvariable id="users" type="java.util.Arrays[User]"--%>
                                    <c:forEach var="user" items="${users}">
                                        <tr>
                                            <th scope="row">${user.id}</th>
                                            <td>${user.userName}</td>
                                            <td>${user.email}</td>
                                            <td>
                                                <a href="<c:url value="/user/delete?id=${user.id}"/>" class="btn btn-warning btn-icon-split">
                                                    <span class="icon text-white-50">
                                                        <i class="fas fa-flag"></i>
                                                    </span>
                                                    <span class="text">Delete</span>
                                                </a>
                                                <a href="<c:url value="/user/edit?id=${user.id}"/>" class="btn btn-primary btn-icon-split">
                                                    <span class="icon text-white-50">
                                                        <i class="fas fa-flag"></i>
                                                    </span>
                                                    <span class="text">Edit</span>
                                                </a>
                                                <a href="<c:url value="/user/show?id=${user.id}"/>" class="btn btn-info btn-icon-split">
                                                    <span class="icon text-white-50">
                                                        <i class="fas fa-flag"></i>
                                                    </span>
                                                    <span class="text">Details</span>
                                                </a>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                            <!-- End of Content -->

                        </div>
                    </div>
                    <!-- End of Content card -->

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
