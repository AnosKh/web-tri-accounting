<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="mytag" %>


<mytag:master>
    <jsp:attribute name="head">
    </jsp:attribute>
    <jsp:attribute name="body">
        <div ng-app="itemManagement">
            <div id="content" ng-view>Loading...</div>
        </div>
    </jsp:attribute>
</mytag:master>



<script src="<c:url value="/resources/js/app/routes/item-management-route.js" />"></script>
<script src="<c:url value="/resources/js/app/controllers/item-management-ctrl.js" />"></script>
<script src="<c:url value="/resources/js/app/factories/item-factory.js" />"></script>
<script src="<c:url value="/resources/js/app/services/error-handler-service.js" />"></script>
<script src="<c:url value="/resources/js/app/services/jquery-fn-wrapper-service.js" />"></script>
<script src="<c:url value="/resources/js/app/directives/form-error.js" />"></script>