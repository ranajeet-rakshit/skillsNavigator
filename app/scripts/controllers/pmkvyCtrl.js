angular.module('skillsNavigatorApp')
  .controller('pmkvyCtrl', function (DataService, $scope, $timeout) {
  	var tables = 'pmkvy||pmkvy_charecteristics||pmkvy_char_points||pmkvy_description||pmkvy_objective_points';

  	DataService.getTables(tables).
      then(getTablesSuccess, getTablesError);

      function getTablesSuccess(data){
      	$scope.pmkvy = data.pmkvy[0];
      	$scope.pmkvy_charecteristics = data.pmkvy_charecteristics;
      	$scope.pmkvy_char_points = data.pmkvy_char_points;
      	$scope.pmkvy_description = data.pmkvy_description[0];
      	$scope.pmkvy_objective_points = data.pmkvy_objective_points;

      	console.log("pmkvy> ",$scope.pmkvy);
      	console.log("pmkvy_charecteristics> ",$scope.pmkvy_charecteristics);
      	console.log("pmkvy_char_points> ",$scope.pmkvy_char_points);
      	console.log("pmkvy_description> ",$scope.pmkvy_description);
      	console.log("pmkvy_objective_points> ",$scope.pmkvy_objective_points);
      }

      function getTablesError(err){

      }
    this.awesomeThings = [
      'HTML5 Boilerplate',
      'AngularJS',
      'Karma'
    ];
  });