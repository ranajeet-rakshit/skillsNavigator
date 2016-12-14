'use strict';

/**
 * @ngdoc function
 * @name skillsNavigatorApp.controller:AboutCtrl
 * @description
 * # AboutCtrl
 * Controller of the skillsNavigatorApp
 */
angular.module('skillsNavigatorApp')
  .controller('ServicesCtrl', function ($scope, DataService, $timeout) {

  	var tables='about||what_we_do||pmkvy||why_skills_nav||pmkvy_charecteristics||pmkvy_char_points';

    $scope.loading = true;

    DataService.getTables(tables).
      then(getTablesSuccess, getTablesError);

    function getTablesSuccess(res){
    	console.log(res);
    	$scope.about = res.about;
    	$scope.services = res.what_we_do;
    	$scope.pmkvy = res.pmkvy[0];
    	$scope.whySkillsNav = res.why_skills_nav;
    	$scope.pmkvy_overview = res.pmkvy_charecteristics;
    	$scope.pmkvyCharPoints = res.pmkvy_char_points;
      $timeout(function(){
        $scope.loading = false;
      },1000);
    }

    function getTablesError(err){
    	console.log(err);
      $scope.loading = false;
    }


    this.awesomeThings = [
      'HTML5 Boilerplate',
      'AngularJS',
      'Karma'
    ];
  });
