var myApp = angular.module('myApp', []); 
 
myApp.controller('myController', ['$scope', function($scope){ 
    $scope.items = [ 
        { 
            "id": "1", 
            "firstName": "Glenda", 
            "lastName": "Fitzpatrick", 
            "age": "21", 
            "gender": "f" 
        }, 
        { 
            "id": "2", 
            "firstName": "Frank", 
            "lastName": "Jones", 
            "age": "32", 
            "gender": "m" 
        }, 
        { 
            "id": "3", 
            "firstName": "Sarah", 
            "lastName": "Graham", 
            "age": "24", 
            "gender": "f" 
        }, 
        { 
            "id": "4", 
            "firstName": "Grant", 
            "lastName": "Smith", 
            "age": "30", 
            "gender": "m" 
        }, 
        { 
            "id": "5", 
            "firstName": "John", 
            "lastName": "Manning", 
            "age": "28", 
            "gender": "m" 
        }, 
        { 
            "id": "6", 
            "firstName": "Lucy", 
            "lastName": "Hall", 
            "age": "35", 
            "gender": "f" 
        }, 
        { 
            "id": "7", 
            "firstName": "Faye", 
            "lastName": "Brandt", 
            "age": "37", 
            "gender": "f" 
        } 
    ]; 
}]); 