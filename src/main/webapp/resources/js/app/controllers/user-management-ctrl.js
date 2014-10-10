var userManagementCtrls = angular.module('userManagementCtrl', ['ngResource', 'ngSanitize']);

userManagementCtrls.controller('userListCtrl', ['$scope', '$http', 'userFactory',
    function($scope,  $http, userFactory) {

    userFactory.getUsers()
            .success(function (data) {
                $scope.users = data;
            })
            .error(function (error) {
                toastr.error('Failed to load users!');
            });
}]);