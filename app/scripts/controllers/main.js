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

    var tables='about||banner||pmkvy||why_skills_nav||what_we_do||contact';


    DataService.getTables(tables).
      then(getTablesSuccess, getTablesError);

  function getTablesSuccess(data){
    console.log(data);
    $scope.about = data.about;
    $scope.slides = data.banner;
    $scope.whatWeDo = data.what_we_do;
    $scope.whySkillsNav = data.why_skills_nav;
    $scope.contact = data.contact;
    $scope.pmkvy = data.pmkvy;
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
