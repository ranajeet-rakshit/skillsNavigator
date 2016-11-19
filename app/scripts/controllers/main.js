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
    $scope.showSlide = false;

    $scope.myInterval = 3000;
    $scope.noWrapSlides = false;
    $scope.active = 0;

  	DataService.getTable('banner').
			then(getDataSuccess, getDataError);

	function getDataSuccess(data){
    console.log(data);
    $scope.slides = data;
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
