  'use strict';

angular.module('skillsNavigatorApp')
  .controller('CoursesOfferedCtrl', function (DataService, $scope, $timeout) {
    $scope.loading = true;


    $scope.myInterval = 3000;
    $scope.noWrapSlides = false;
    $scope.active = 0;

    var tables='courses_offered||about_courses';


    DataService.getTables(tables).
      then(getTablesSuccess, getTablesError);

  function getTablesSuccess(data){
    console.log(data);
    $scope.courses_offered = data.courses_offered;
    $scope.about_courses = data.about_courses;
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