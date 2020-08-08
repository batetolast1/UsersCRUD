<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <!-- head tags -->
    <%@ include file="/WEB-INF/jsp/user/head.jsp" %>

    <title>UsersCRUD - all users</title>

</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <%@ include file="/WEB-INF/jsp/user/sidebar.jsp" %>

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <%@ include file="/WEB-INF/jsp/user/topbar.jsp" %>

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <%@ include file="/WEB-INF/jsp/user/pageHeading.jsp" %>

                    <!-- Users Card -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">All users</h6>
                        </div>
                        <div class="card-body">

                            <!-- Content goes here! -->

                            <!-- Table -->
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
                                <%--@elvariable id="users" type="java.util.Arrays"--%>
                                    <c:forEach var="user" items="${users}">
                                        <tr>
                                            <th scope="row">${user.id}</th>
                                            <td>${user.email}</td>
                                            <td>${user.userName}</td>
                                            <td>
                                                <a href="<c:url value="/user/delete"/>" class="btn btn-warning btn-icon-split">
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
                                                <a href="<c:url value="/user/show"/>" class="btn btn-info btn-icon-split">
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
                            <!-- End of table -->

                        </div>
                    </div>
                    <!-- End of users tab -->

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <%@ include file="/WEB-INF/jsp/user/footer.jsp" %>

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <%@ include file="/WEB-INF/jsp/user/scrollToTop.jsp" %>

    <!-- All used scripts-->
    <%@ include file="/WEB-INF/jsp/user/scripts.jsp" %>

</body>

</html>
