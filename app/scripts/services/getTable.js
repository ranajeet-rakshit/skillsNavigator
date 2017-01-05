angular.module('skillsNavigatorApp')
	.factory('DataService', ['$http','$q', function($http, $q){
		var service = {};

		service.getTable = function(tableName){
			return $http({
                method:'GET',
                //url:'http://localhost/skillsNavAPI/getTable.php?tableName='+tableName
                url:'http://localhost/skillsNavAPI/getTable.php?tableName='+tableName
                //url:'api/getTable.php?tableName='+tableName
            })
            .then(responseSuccess)
            .catch(responseError);
		}

        service.getTables = function(tables){
            return $http({
                method:'GET',
                url:'http://localhost/skillsNavAPI/getTables.php?tables='+tables
                /*url:'api/getTables.php?tables='+tables*/
            })
            .then(responseSuccess)
            .catch(responseError);
        }

		function responseSuccess(response){
            return response.data;
        }
         
         function responseError(err){
            return $q.reject("Error retrieving contents. HTTP Status: ",err);
         }

         return service;
	}]);