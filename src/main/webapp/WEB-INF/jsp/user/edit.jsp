<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <!-- head tags -->
    <%@ include file="/WEB-INF/jsp/user/head.jsp" %>

    <title>UsersCRUD - edit user data</title>

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

                    <!-- Content Card -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Edit user</h6>
                        </div>
                        <div class="card-body">

                            <!-- Content goes here! -->

                            <%--@elvariable id="user" type="pl.coderslab.jeeusercrud.entity.User"--%>
                            <form method="post">
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
                                <button type="submit" class="btn btn-primary">Edit</button>
                            </form>

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
