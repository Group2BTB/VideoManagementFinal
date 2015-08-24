var app = angular.module('myApp', [ 'ui.bootstrap' ]);

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
app.controller('commmentcontroller', function($scope, $http, $timeout) {
	$http.get('../listComment').success(function(data) {
		$scope.list = data;
		$scope.currentPage = 1; // current page
		$scope.entryLimit = 12; // max no of items to display in a page
		$scope.filteredItems = $scope.list.length; // Initially for no filter
		$scope.totalItems = $scope.list.length;
		$scope.edit = true;
		$scope.error = false;
		$scope.incomplete = false;
		$scope.editid = 0;
		countCommentNotView();
	});
	$scope.loadData = function() {
		$http.get('../listComment').success(function(data) {
			$scope.list = data;
			$scope.currentPage = 1; // current page
			$scope.entryLimit = 12; // max no of items to display in a page
			$scope.filteredItems = $scope.list.length; // Initially for no
														// filter
			$scope.totalItems = $scope.list.length;
			$scope.edit = true;
			$scope.error = false;
			$scope.incomplete = false;
			$scope.editid = 0;
			
			
			countCommentNotView();
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
	
	$scope.succ = function(){		
		
	};
	$scope.er = function(){		
		
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
			if (data == true) {				
				$scope.loadData();
			}
		});
	};
	
	$scope.viewComment = function(e) {
		for (var i = 0; i < $scope.list.length; i++)
			if ($scope.list[i].comment_id == e)
				x = i;	
		
		$("#content").text($scope.list[x].description);
		$("#cdate").text($scope.list[x].create_date);
		$("#cuser").text($scope.list[x].username);
		$("#cvideo").text($scope.list[x].video_name);
		$("#cview").text($scope.list[x].view);
		$("#clike").text($scope.list[x].like);
		$("#cunlike").text($scope.list[x].unlike);
		$("#viewCom").modal({                    // wire up the actual modal functionality and show the dialog
		  "backdrop"  : "static",
		  "keyboard"  : true,
		  "show"      : true                     // ensure the modal is shown immediately
		});
					
	};
	
	
});
