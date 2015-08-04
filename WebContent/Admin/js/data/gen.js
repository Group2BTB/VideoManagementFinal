var app = angular.module('myApp', ['ui.bootstrap']);

app.filter('startFrom', function() {
    return function(input, start) {
        if(input) {
            start = +start; //parse to int
            return input.slice(start);
        }
        return [];
    };
});
app.controller('customersCrtl', function ($scope, $http, $timeout) {
    $http.get('list_gen.hrd').success(function(data){
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

    $scope.loadData = function () {
    	 $http.get('list_gen.hrd').success(function(data){
    	        $scope.list = data;
    	        $scope.currentPage = 1 ; //current page
    	        $scope.entryLimit = 5; //max no of items to display in a page
    	        $scope.filteredItems = $scope.list.length; //Initially for no filter  
    	        $scope.totalItems = $scope.list.length;
    	    	$scope.edit = true;
    			$scope.error = false;
    			$scope.incomplete = false;
    			$scope.editid=0;
    	    });
     };

    $scope.setPage = function(pageNo) {
    	        $scope.currentPage = pageNo; //current page
    	       
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
    
    $scope.editUser = function(id) {
    	$scope.editid=id;
    	  if (id == 'new') {
    	    $scope.edit = true;
    	    $scope.incomplete = true;
   	    $scope.generation = '';
    	    $scope.orientation = '';
    	    $scope.finish='';
   	    
    		btn1.click();
    	    } else {
    	    $scope.edit = false;
    	    
    	    for(var i=0;i<$scope.list.length;i++)
    	    	if($scope.list[i].id==id)
    	    		x=i;
    	    $scope.generation = $scope.list[x].generation;
    	    $scope.orientation = $scope.list[x].orientation_date;
    	    $scope.finish= $scope.list[x].finish;
    		btn1.click();
    	  }
    	};

    	$scope.$watch('generation',function() {$scope.test();});
    	$scope.$watch('orientation',function() {$scope.test();});
    	
    	
    	$scope.test = function() {
    	  $scope.incomplete = false;
    	  if ($scope.edit && (!$scope.generation.length ||
    	  !$scope.orientation.length)) {
    	       $scope.incomplete = true;
    	  }
    	};
    	
    	$scope.save=function(e){
    		
    		
    		$("#spinner").show();
    	    var data={'id':$scope.editid,'generation': $scope.generation,'date': $scope.orientation};
    		if(e==true){

    	$.post("addgeneration.hrd",data).success(function(data,status,headers){
    		if(data=="Success")
        		{btnclose.click();
    		$scope.loadData();}
    	});
    }
    else
{
    	$.post("updategeneration.hrd",data).success(function(data,status,headers){
    		if(data=="Success")
    		{btnclose.click();
    		$scope.loadData();}
	});
    	
}    	
    		$("#spinner").hide();
    	
    		
    	};
    	
});
