'use strict';

angular.module('skillsNavigatorApp')
  .controller('WorkingModelCtrl', function (DataService, $scope, $timeout) {
    //$scope.loading = true;


    $scope.myInterval = 3000;
    $scope.noWrapSlides = false;
    $scope.active = 0;

    //var tables='nsdc_ssc||skills_navigator';
    //var tables='nsdc_ssc||skills_navigator';


/*    DataService.getTables(tables).
      then(getTablesSuccess, getTablesError);

  function getTablesSuccess(data){
    console.log(data);
    $scope.nsdc_ssc = data.nsdc_ssc;
    $scope.skills_navigator = data.skills_navigator;
    $timeout(function(){
      $scope.loading = false;
    },1000);
  }

  function getTablesError(err){
    console.log(err);
    $scope.loading = false;
  }*/
  
    this.awesomeThings = [
      'HTML5 Boilerplate',
      'AngularJS',
      'Karma'
    ];
  });