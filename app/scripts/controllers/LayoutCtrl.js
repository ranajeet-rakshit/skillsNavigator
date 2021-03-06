'use strict';

/**
 * @ngdoc function
 * @name skillsNavigatorApp.controller:MainCtrl
 * @description
 * # MainCtrl
 * Controller of the skillsNavigatorApp
 */
angular.module('skillsNavigatorApp')
  .controller('LayoutCtrl', function (DataService, $scope, $timeout) {
    
    $scope.$on("loading", function(event, status){
      $scope.loading = status;
    });

    $scope.menuItems = {};

    /*$scope.menuItems=[
      {name:"Home", sref:"#/", subMenues:[]},
      {name:""}
    ];*/

    var menuItems = [
      '#home',
      '#whatWeDo',
      '#PMKVY',
      '#NDLM',
      '#ESDM',
      '#placementProcess',
      '#requirements',
      '#contact'
    ];


    $scope.menuSelect = function(menuItem){
      angular.forEach(menuItems, function(item){
        $(item).removeClass('active');
      });

      if(menuItem=="#PMKVY" || menuItem=="#NDLM" || menuItem=="#ESDM"){
        $("#whatWeDo").addClass('active');
      }

      $(menuItem).addClass('active');
    }
  
    this.awesomeThings = [
      'HTML5 Boilerplate',
      'AngularJS',
      'Karma'
    ];
  });
