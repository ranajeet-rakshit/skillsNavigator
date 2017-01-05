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

    var tables='about||banner||why_skills_nav||contact';

    /*var slides={"banner":[{"id":"1","slide_url":"images/modi.jpg","alt":"Sample Image 1"},{"id":"2","slide_url":"images/farmer.jpg","alt":"Sample Image 2"},{"id":"3","slide_url":"images/education.jpg","alt":"Sample image 3"}]};
    console.log(slides);
    $scope.slides = slides.banner;*/

    $scope.loading = false;

    DataService.getTables(tables).
      then(getTablesSuccess, getTablesError);

  function getTablesSuccess(data){
    $scope.about = data.about;
    $scope.slides = data.banner;
    $scope.whySkillsNav = data.why_skills_nav;
    $scope.contact = data.contact;
    $timeout(function(){
      $scope.loading = false;
    },3000);
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
