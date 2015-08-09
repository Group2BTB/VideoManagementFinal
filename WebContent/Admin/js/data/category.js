/*$(function(){
	$("#btnadd").click(function(){
		$('#frmDepartment').submit();
	});
	$('#frmDepartment').bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            name: {
                message: 'The name is not valid',
                validators: {
                    notEmpty: {
                        message: 'The name is required and cannot be empty'
                    },
                    stringLength: {
                        min: 1,
                        max: 100,
                        message: 'The name must be more than 1 and less than 100 characters long'
                    },
                    regexp: {
                        regexp: /^[a-zA-Z0-9_\s.]+$/,
                        message: 'The name can only consist of alphabetical, number, dot and underscore'
                    }
                }
            },
            status: {
                message: 'The status is not valid',
                validators: {
                    notEmpty: {
                        message: 'The status is required and cannot be empty'
                    }
                }
            }
        }
    }).on('success.form.bv', function(e) { 
        
    	
    });
});
 */

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
app.controller('catcontroller', function($scope, $http, $timeout) {
	$http.get('../listCategory').success(function(data) {
		
		$scope.list = data;
		$scope.currentPage = 1; // current page
		$scope.entryLimit = 12; // max no of items to display in a page
		$scope.filteredItems = $scope.list.length; // Initially for no filter
		$scope.totalItems = $scope.list.length;
		$scope.edit = true;
		$scope.error = false;
		$scope.incomplete = false;
		$scope.editid = 0;
		
	});
	$scope.loadData = function() {
		$http.get('../listCategory').success(function(data) {
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
	
	$scope.save = function(e) {
		// $("#spinner").show();
		var data = {
			'id' : $scope.editid,
			'image' : $scope.image,
			'name' : $scope.name,
			'parent' : $scope.parent,
			'status' : $scope.status_ad,
			'description' : $scope.description
		};
		if (e == true) {
			insertCategory();
			$scope.loadData();	
		} else {
			alert("edit");
			updateCategory();			
			$scope.loadData();
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
				if ($scope.list[i].category_id == id)
					x = i;
			$("#btnNew").click();
			$scope.editid = $scope.list[x].category_id;
			$scope.name = $scope.list[x].category_name;
			$scope.status = $scope.list[x].status;
			$scope.description = $scope.list[x].description;
			$scope.image = $scope.list[x].logo;
			
			$("#src").attr("src",$scope.list[x].logo);
			$('#subcat').select2().select2('val', $scope.list[x].parent_id);			
			setSelectedValue(status, $scope.list[x].status1);
			$("#code").val($scope.list[x].category_id);
		}
	};
	$scope.updateStatus = function(e) {
		var data = {
			'id' : e
		};
		$.post("../updateStatus", data).success(function(data, status, headers) {
			if (data == "Success") {				
				$scope.loadData();
			}
		});
	};
});
function setSelectedValue(selectObj, valueToSet) {	
	$("#status").val(valueToSet);
}
