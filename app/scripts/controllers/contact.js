'use strict';

angular.module('skillsNavigatorApp')
  .controller('ContactCtrl', function (DataService, $scope, $timeout) {
    $scope.loading = true;


    $scope.myInterval = 3000;
    $scope.noWrapSlides = false;
    $scope.active = 0;

    var tables='contact';


    DataService.getTables(tables).
      then(getTablesSuccess, getTablesError);

  function getTablesSuccess(data){
    console.log(data);
    $scope.contact = data.contact;
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