<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Spring MVC AngularJS demo</title>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.8/angular.min.js"></script>

<script>

    var app = angular.module('myApp', []);
    
    function MyController($scope, $http){
        
        $scope.getPersonDataFromServer = function() {           
            $http({method: 'GET', url: 'bag'}).
            success(function(data, status, headers, config) {
                $scope.kl = JSON.parse(JSON.stringify(data));
                for(var i=0;i<$scope.length;i++)
                	{
                	var counter=$scope.kl[i];
                	return $scope.kl;
                	}
                
            }).
            error(function(data, status, headers, config) {
              // called asynchronously if an error occurs
              // or server returns response with an error status.
            });
        
        };
    };
</script>
</head>
<body>
    <div data-ng-app="myApp">
        <div data-ng-controller="MyController">
            <button data-ng-click="getPersonDataFromServer()">Get Person data from server</button>
            <div ng-repeat="k in kl"></div>
            <p>Product ID : {{k.pid}}</p>
            <p>Product Name  : {{k.pname}}</p>
            <p>QTY : {{k.qty}}</p>
            <p>COST : {{k.cost}}</p>
        </div>
    </div>
</body>
</html>