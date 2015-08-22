
var app = angular.module('myapp', ['ui.bootstrap']);

app.filter('startFrom', function() {
	return function(input, start) {
		if (input) {
			start = +start; // parse to int
			return input.slice(start);
		}
		return [];
	};
});
app.filter('unique', function() {
	return function(input, key) {
		var unique = {};
		var uniqueList = [];
		for (var i = 0; i < input.length; i++) {
			if (typeof unique[input[i][key]] == "undefined") {
				unique[input[i][key]] = "";
				uniqueList.push(input[i]);
			}
		}
		return uniqueList;
	};
});
app.filter('namefilter', function() {
	return function(items, search) {
		if (!search) {
			return items;
		}

		var deptname = search.carType;
		if (!carType || '' === carType) {
			return items;
		}

		return items.filter(function(element, index, array) {
			return element.carType.name === search.carType;
		});

	};
});

app.controller('hiscontroller', function($scope, $http, $timeout) {
	//alert("h");
	$http.get('getHistory?user_id='+code).success(function(data) {				
		
		$scope.list = data;
		$scope.currentPage = 1; // current page
		$scope.entryLimit = 10; // max no of items to display in a page
		$scope.filteredItems = $scope.list.length; // Initially for no filter
		$scope.totalItems = $scope.list.length;
		$scope.edit = true;
		$scope.error = false;
		$scope.incomplete = false;
		$scope.editid = 0;
		
	});
	
	$scope.loadData = function() {
		$http.get('getHistory?user_id='+code).success(function(data) {
			$scope.list = data;
			$scope.currentPage = 1; // current page
			$scope.entryLimit = 10; // max no of items to display in a page
			$scope.filteredItems = $scope.list.length; // Initially for no
														// filter
			$scope.totalItems = $scope.list.length;
			$scope.edit = true;
			$scope.error = false;
			$scope.incomplete = false;
			$scope.editid = 0;
			
		});
	};
	
	$scope.deletehistory = function(e) {
		var data = {
			'id' : e
		};
		$.post("deletehistory", data).success(function(data, status, headers) {			
			//alert(data);
			if (data == "Success") {				
				$scope.loadData();				
			}
		});
	};
	
	
	$scope.deleteallhistory = function(e) {
		var data = {
			'id' : e
		};
		$.post("deleteallhistory", data).success(function(data, status, headers) {			
			if (data == "Success") {				
				$scope.loadData();				
			}
		});
	};
	
	
	$scope.setPage = function(pageNo) {
		$scope.currentPage = pageNo; // current page
	};
	$scope.filter = function() {

		$timeout(function() {
			$scope.filteredItems = $scope.filtered.length;
		}, 10);
	};
	$scope.sort_by = function(predicate) {

		$scope.predicate = predicate;
		$scope.reverse = !$scope.reverse;
	};
	
	
});
