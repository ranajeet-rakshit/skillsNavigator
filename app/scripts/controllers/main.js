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
    $scope.$emit("loading", true);


    $scope.myInterval = 3000;
    $scope.noWrapSlides = false;
    $scope.active = 0;

    var tables='about||what_we_do||banner||why_skills_nav||contacts';

    /*var slides={"banner":[{"id":"1","slide_url":"images/modi.jpg","alt":"Sample Image 1"},{"id":"2","slide_url":"images/farmer.jpg","alt":"Sample Image 2"},{"id":"3","slide_url":"images/education.jpg","alt":"Sample image 3"}]};
    console.log(slides);
    $scope.slides = slides.banner;*/


    DataService.getTables(tables).
      then(getTablesSuccess, getTablesError);

  function getTablesSuccess(data){
    console.log(data);
    $scope.about = data.about;
    $scope.what_we_do = data.what_we_do;
    $scope.slides = data.banner;
    $scope.whySkillsNav = data.why_skills_nav;
    $scope.contacts = data.contacts;
    console.log("contact> ",$scope.contacts);
    $timeout(function(){
      $scope.loading = false;
      $scope.$emit("loading", false);
    },1000);
  }

  function getTablesError(err){
    console.log(err);
    $scope.loading = false;
    $scope.$emit("loading", false);
  }
  
    this.awesomeThings = [
      'HTML5 Boilerplate',
      'AngularJS',
      'Karma'
    ];
  });
