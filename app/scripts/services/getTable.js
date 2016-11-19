angular.module('skillsNavigatorApp')
	.factory('DataService', ['$http','$q', function($http, $q){
		var service = {};

		service.getTable = function(tableName){
			return $http({
                method:'GET',
                url:'http://localhost/skillsNavigator/src/trunk/app/api/getTable.php?tableName='+tableName
            })
            .then(responseSuccess)
            .catch(responseError);
		}

		function responseSuccess(response){
            return response.data;
        }
         
         function responseError(err){
            return $q.reject("Error retrieving contents. (HTTP Status: "+err+")");
         }

         return service;
	}]);