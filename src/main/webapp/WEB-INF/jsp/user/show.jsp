<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <!-- head tags -->
    <%@ include file="/WEB-INF/jsp/template/head.jsp" %>

    <title>UsersCRUD - details of chosen user</title>

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

                    <!-- Alert -->
                    <%@ include file="/WEB-INF/jsp/template/alert.jsp" %>

                    <!-- Content Card -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">User details</h6>
                        </div>
                        <div class="card-body">

                            <!-- Content goes here! -->

                            <%--@elvariable id="user" type="pl.coderslab.jeeusercrud.entity.User"--%>
                            <table class="table">
                                <tbody>
                                <tr>
                                    <th scope="row">ID</th>
                                    <td>${user.id}</td>
                                </tr>
                                <tr>
                                    <th scope="row">Username</th>
                                    <td>${user.userName}</td>
                                </tr>
                                <tr>
                                    <th scope="row">E-mail</th>
                                    <td>${user.email}</td>
                                </tr>
                                </tbody>
                            </table>

                            <a href="<c:url value="/user/list"/>" class="btn btn-light btn-icon-split">
                                <span class="icon text-white-50"><i class="fas fa-arrow-circle-left"></i></span>
                                <span class="text">Return</span>
                            </a>
                            <!-- End of content -->

                        </div>
                    </div>
                    <!-- End of users tab -->

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
