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
alert(1);
var app = angular.module('myApp', []);

app.filter('startFrom', function() {
    return function(input, start) {
        if(input) {
            start = +start; //parse to int
            return input.slice(start);
        }
        return [];
    };
});

app.controller('deptcontroller', function ($scope, $http, $timeout) {
	
    $http.get('../listdept').success(function(data){
    	alert(data);
        $scope.list = data;
        $scope.currentPage = 1 ; //current page
        $scope.entryLimit = 5; //max no of items to display in a page
        $scope.filteredItems = $scope.list.length; //Initially for no filter  
        $scope.totalItems = $scope.list.length;
    	$scope.edit = true;
		$scope.error = false;
		$scope.incomplete = false;
		$scope.editid=0;
	/*	$scope.fName = '';
		$scope.lName = '';
		$scope.passw1 = '';
		$scope.passw2 = ''; */
		
    });
});
