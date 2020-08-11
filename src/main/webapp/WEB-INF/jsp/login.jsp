<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <!-- head tags -->
    <%@ include file="/WEB-INF/jsp/template/head.jsp" %>

    <title>UsersCRUD - login</title>

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

                    <!-- Content Card -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">ADMIN LOGIN</h6>
                        </div>
                        <div class="card-body">

                            <!-- Content goes here! -->
                            <form method="post">
                                <div class="form-group">
                                    <label for="email">Email address</label>
                                    <input type="email" class="form-control" name="email" id="email"
                                           placeholder="Enter e-mail" required>
                                </div>
                                <div class="form-group">
                                    <label for="password">Password</label>
                                    <input type="password" class="form-control" name="password" id="password"
                                           placeholder="Enter password" required>
                                </div>
                                <button type="submit" class="btn btn-success btn-icon-split">
                                    <span class="icon text-white-50"><i class="fas fa-flag"></i></span>
                                    <span class="text">Save</span>
                                </button>
                            </form>


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
