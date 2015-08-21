

var app = angular.module('myapp', []);

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

app.controller('hiscontroller', function($scope, $http, $timeout) {
	
	$http.get('getHistory?user_id='+code).success(function(data) {		

		alert(data);
		
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
	/*
	$scope.succ = function(){		
		
	};
	$scope.er = function(){		
		
	};
	
	$scope.save = function(e) {
		// $("#spinner").show();
		var data = {
			'id' : $scope.editid,
			'name' : $scope.name,
			'status' : $scope.status,
			'description' : $scope.description
		};
		if (e == true) {
			$.post("../adddept", data).success(function(data) {
				if (data == "Success") {
					$scope.loadData();
					frmDepartment.reset();
					$scope.succ();
				}else{
					$scope.er();
				}
			});
		} else {
			$.post("../updatedept", data).success(function(data, status, headers){
				if (data == "Success") {
					$scope.loadData();
					frmDepartment.reset();
					$("#closeFrmAdd").click();
					$scope.succ();
				}else{
					$scope.er();
				}
			});
		}
		//$("#spinner").hide();
	};
	$scope.editUser = function(id) {
		$scope.editid = id;
		if (id == 'new') {
			$scope.edit = true;
		} else {
			$scope.edit = false;
			for (var i = 0; i < $scope.list.length; i++)
				if ($scope.list[i].department_id == id)
					x = i;
			$("#btnNew").click();
			$scope.name = $scope.list[x].department_name;
			$scope.status = $scope.list[x].status;
			$scope.description = $scope.list[x].description;

		}
	};
	
	$scope.updateView = function(e) {
		var data = {
			'id' : e
		};
		$.post("../updateViewComment", data).success(function(data, status, headers) {
			
			if (data == true) {
				$scope.loadData();
			}
		});
	};
	$scope.deleteComment = function(e) {
		var data = {
			'id' : e
		};
		$.post("../deleteComment", data).success(function(data, status, headers) {			
			alert(data);
			if (data == true) {				
				$scope.loadData();
				
			}
		});
	};*/
	
});
