var itemApp = angular.module('item', [
    'cmnAccountBrowserWithSegmentApp',
    'jQueryFnWrapperService',
    'itemFactory',
    'errorHandlerService',
    'cmnFormErrorApp'
]);


itemApp.controller('itemListCtrl', ['$scope', '$http', 'itemFactory',
    function($scope,  $http, itemFactory) {

            itemFactory.getItems()
                .success(function (data) {
                    $scope.items = data;
                })
                .error(function (error) {
                    toastr.error('Failed to load items!');
                });
    }]);

itemApp.controller('addEditItemCtrl', ['$scope', '$stateParams', '$http', 'itemFactory', 'errorToElementBinder',
    'csrf',
    function($scope, $stateParams, $http, itemFactory, errorToElementBinder, csrf) {

        $scope.units = [
            {id:1, code: 'M', description: 'Meter'},
            {id:2, code: 'PCS', description: 'Pieces'}
        ];
        $scope.title = 'Add item';
        $scope.save = 'Save';
        $scope.showForm = true;

        $scope.item = {};
        $scope.unit = {};
        $scope.submit = false;

        var resourceURI = '/item/create';
        if(!($stateParams.itemId === undefined)) {  // update mode
            $scope.title = 'Update item';
            $scope.showForm = false;

            $scope.itemId = $stateParams.itemId;

            itemFactory.getItem($scope.itemId).success(function (data) {
                if (data === '' || data.id <= 0) {    // not found
                    window.location.hash = '#/items';
                } else {
                    $scope.item = data;
                    $scope.unit = data.unit;
                    try{
                        $scope.selectedAccount = $scope.item.segmentAccount.accountCode + ' ' + $scope.item.segmentAccount.account.title;
                    }catch (e) {}

                    $scope.showForm = true;
                }
            })
                .error(function (error) {
                    toastr.warning('Item not found!');
                    window.location.hash = '#/items';
                });

            resourceURI = '/item/update';
        }


        $scope.processForm = function() {

            if (!$scope.submit) return; // check if save button is clicked

            $scope.save ='Saving...';

            $scope.errors = {};
            $scope.submitting = true;
            csrf.setCsrfToken();

            $scope.item.unit = $scope.unit;

            console.log($scope.item);

            var res = $http.post(resourceURI, $scope.item);

            res.success(function(data) {
 
                if (!data.success) {
                    $scope.errors = errorToElementBinder.bindToElements(data, $scope.errors);
                    $scope.save ='Save';
                    // flags
                    $scope.submitting = false;
                    $scope.submit = false;
                    toastr.warning('Error found.');
                } else {
                    window.location.hash = '#/items/detail/' + data.modelId;
                    toastr.success('Item successfully saved!');
                }
            });
            res.error(function(data, status, headers, config) {
                toastr.error('Something went wrong!');
                $scope.save ='Save';
                // flags
                $scope.submitting = false;
                $scope.submit = false;
            });
        }

        $scope.accounts_selection_handler = function(sa){
            var segmentAccount = {};
            segmentAccount['id'] =  sa.segmentAccountId;
            $scope.item.segmentAccount = segmentAccount;
            $scope.selectedAccount = sa.segmentAccountCode + ' ' + sa.title;
        }
    }]);

itemApp.controller('itemDetailsCtrl', ['$scope', '$stateParams', '$http', 'itemFactory',
    function($scope,  $stateParams, $http, itemFactory) {

        $scope.showDetails = false;

        if(!($stateParams.itemId === undefined)) {
            $scope.title = 'Item details';

            $scope.itemId = $stateParams.itemId;

            itemFactory.getItem( $scope.itemId)
                .success(function (data) {

                    if (data === '' || data.id <= 0) {    // not found
                        toastr.warning('Item not found!');
                        window.location.hash = '#/items';
                    } else {
                        $scope.item = data;
                        $scope.showDetails = true;
                    }
                });
        } else {
            toastr.warning('Item not found!');
            window.location.hash = '#/items';
        }

        $scope.pointToEditForm = function() {
            window.location.hash = '#/item/' + $scope.itemId + "/edit";
        }
    }]);