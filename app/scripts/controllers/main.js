'use strict';

/**
 * @ngdoc function
 * @name skillsNavigatorApp.controller:MainCtrl
 * @description
 * # MainCtrl
 * Controller of the skillsNavigatorApp
 */
angular.module('skillsNavigatorApp')
  .controller('MainCtrl', function (DataService, $scope) {

  	DataService.getTable('banner').
			then(getDataSuccess, getDataError);

	function getDataSuccess(data){
		$scope.slides = data;
		console.log($scope.slides);
	}

	function getDataError(err){
		console.log(err);
	}
    this.awesomeThings = [
      'HTML5 Boilerplate',
      'AngularJS',
      'Karma'
    ];
  });
