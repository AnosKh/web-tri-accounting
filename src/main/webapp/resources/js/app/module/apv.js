var apvApp = angular.module('apv', [
    'jQueryFnWrapperService',
    'errorHandlerService',
    'cmnFormErrorApp',
    'cmnSLEntityBrowserApp',
    'utilService'
]);

apvApp.controller('addEditApvCtrl', ['$scope', '$stateParams', '$http', 'errorToElementBinder', 'csrf',
    function($scope, $stateParams, $http, errorToElementBinder, csrf) {

        $scope.supplier_selection_handler = function(entity){
            $scope.selectedSupplier = entity;
            console.log($scope.selectedSupplier);
        }
        $scope.checker_selection_handler = function(entity){
            $scope.selectedChecker = entity;
            alert('checker ' + entity.name);
        }

        $scope.approvar_selection_handler = function(entity){
            $scope.selectedApprovingOfficer = entity;
        }

        $scope.title = 'Create accounts payable voucher';
        $scope.save = 'Save';
        $scope.showForm = true;
    }]);
