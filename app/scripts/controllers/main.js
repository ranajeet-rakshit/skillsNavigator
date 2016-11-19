'use strict';

/**
 * @ngdoc function
 * @name skillsNavigatorApp.controller:MainCtrl
 * @description
 * # MainCtrl
 * Controller of the skillsNavigatorApp
 */
angular.module('skillsNavigatorApp')
  .controller('MainCtrl', function (DataService) {

  	DataService.getTable('contact').
			then(getDataSuccess, getDataError);

	function getDataSuccess(data){
		console.log(data);
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
