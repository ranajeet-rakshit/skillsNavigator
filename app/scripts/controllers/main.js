'use strict';

/**
 * @ngdoc function
 * @name skillsNavigatorApp.controller:MainCtrl
 * @description
 * # MainCtrl
 * Controller of the skillsNavigatorApp
 */
angular.module('skillsNavigatorApp')
  .controller('MainCtrl', function (DataService, $scope, $timeout) {
    $scope.loading = true;


    $scope.myInterval = 3000;
    $scope.noWrapSlides = false;
    $scope.active = 0;

    var tables='about_courses||banner||quotes||pmkvy_char_points||what_we_do||'+
    'why_skills_nav_detail||why_skills_nav_points||working_model_parent||working_skills_nav';


    DataService.getTables(tables).
      then(getTablesSuccess, getTablesError);

  function getTablesSuccess(data){
    $scope.slides = data.banner;
    $scope.quotes = data.quotes;
    $scope.about_courses = data.about_courses;
    $timeout(function(){
      $scope.loading = false;
    },2000);
  }

  function getTablesError(err){
    console.log(err);
    $scope.loading = false;
  }

  DataService.getTable('why_skills_nav').then(function(res){
    console.log(res);
  },function(err){});
  
    this.awesomeThings = [
      'HTML5 Boilerplate',
      'AngularJS',
      'Karma'
    ];
  });
