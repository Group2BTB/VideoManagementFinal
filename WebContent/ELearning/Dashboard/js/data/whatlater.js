

app.controller('watchcontroller', function($scope, $http, $timeout) {
	//alert("w");
		
	$http.get('getWatchedLater?user_id='+code).success(function(data) {
		$scope.list1 = data;
		$scope.currentPage = 1; // current page
		$scope.entryLimit = 10; // max no of items to display in a page
		$scope.filteredItems = $scope.list1.length; // Initially for no filter
		$scope.totalItems = $scope.list1.length;
		$scope.edit = true;
		$scope.error = false;
		$scope.incomplete = false;
		$scope.editid = 0;
		
	});
	
	$scope.loadData = function() {
		$http.get('getWatchedLater?user_id='+code).success(function(data) {
			$scope.list1 = data;
			$scope.currentPage = 1; // current page
			$scope.entryLimit = 10; // max no of items to display in a page
			$scope.filteredItems = $scope.list1.length; // Initially for no
														// filter
			$scope.totalItems = $scope.list1.length;
			$scope.edit = true;
			$scope.error = false;
			$scope.incomplete = false;
			$scope.editid = 0;
			
		});
	};
	$scope.setPage = function(pageNo) {
		$scope.currentPage = pageNo; // current page
	};
	$scope.filter1 = function() {

		$timeout(function() {
			$scope.filteredItems = $scope.filtered.length;
		}, 10);
	};
	$scope.sort_by = function(predicate) {

		$scope.predicate = predicate;
		$scope.reverse = !$scope.reverse;
	};
	
	$scope.deletewatch = function(e) {
		var data = {
			'id' : e
		};
		$.post("deleteWatchLater", data).success(function(data, status, headers) {			
			//alert(data);
			if (data == "Success") {				
				$scope.loadData();				
			}
			
		});
	};
	
	
	$scope.deleteallwatch = function(e) {
		var data = {
			'id' : e
		};
		$.post("deleteallWatchLater", data).success(function(data, status, headers) {			
			if (data == "Success") {				
				$scope.loadData();				
			}
		});
	};
	
});
