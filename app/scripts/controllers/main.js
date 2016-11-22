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

    var tables='about_courses||banner||quotes';

    DataService.getTables(tables).
      then(getTablesSuccess, getTablesError);

  function getTablesSuccess(data){
    console.log(data);
  }

  function getTablesError(err){
    console.log(err);
  }
  
  /*DataService.getTable('banner').
    then(getDataSuccess, getDataError);*/


	function getDataSuccess(data){
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
