<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<c:if test="${not empty sessionScope.alert}">
    <!-- Bootstrap Alert for logging -->
    <div class="alert alert-${alert.getType()} alert-dismissible fade show"
         role="alert">
            ${alert.getMessage()}
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
    </div>
    <!-- End of Bootstrap Alert -->

    <c:remove var="alert" scope="session"/>
</c:if>