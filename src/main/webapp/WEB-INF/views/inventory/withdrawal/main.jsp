<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="mytag" %>

<mytag:master>
    <jsp:attribute name="head">
        <%-- includes here --%>
    </jsp:attribute>
    <jsp:attribute name="body">
        <h4>List of Stock Withdrawal Requests</h4>
        <div ng-app="withdrawalApp">
            <div ng-controller="createdListCtrl">
                <table class="table table-striped table-hover table-bordered">
                    <thead>
                    <tr>
                        <th>Reference No.</th>
                        <th>Date</th>
                        <th>Purpose</th>
                        <th>Note</th>
                        <th>Prepared By</th>
                        <th>Requested By</th>
                        <th>Checked By</th>
                        <th>Approved By</th>
                        <th>Released By</th>
                        <th>Received By</th>
                        <th>Action</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr ng-repeat="row in createdList">
                        <td>{{row.referenceNo}}</td>
                        <td>{{row.transDate}}</td>
                        <td>{{row.purpose}}</td>
                        <td>{{row.note}}</td>
                        <td>{{row.preparedBy.fullName}}</td>
                        <td>{{row.requisitioned.fullName}}</td>
                        <td>{{row.notedBy.fullName}}</td>
                        <td>{{row.approvedBy.fullName}}</td>
                        <td>{{row.issuedBy.fullName}}</td>
                        <td>{{row.receivedBy.fullName}}</td>
                        <td style='width: 60px; padding: 3'>
                            <a style='padding: 0' title='View' href="#/created-list/{{row.id}}">
                                <i class='fa fa-search'></i>
                            </a>
                            <a style='padding: 3' title='Edit' href=\"#/account/{{row.branch['id']}}/edit\">&nbsp;&nbsp;
                                <i class='fa fa-edit'></i>
                            </a>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </jsp:attribute>
</mytag:master>

<script>

    var withdrawalApp = angular.module('withdrawalApp', []);

    withdrawalApp.controller('createdListCtrl', function ($scope, $http) {
        $http.get('/withdrawal/list').success(function(data) {
            $scope.createdList = data;
        });
    });

</script>