'use strict';

/**
 * @ngdoc overview
 * @name skillsNavigatorApp
 * @description
 * # skillsNavigatorApp
 *
 * Main module of the application.
 */
angular
  .module('skillsNavigatorApp', [
    'ngAnimate',
    'ngCookies',
    'ngResource',
    'ngRoute',
    'ngSanitize',
    'ngTouch',
    'ui.bootstrap'
  ])
  .config(function ($routeProvider) {
    $routeProvider
      .when('/', {
        templateUrl: 'views/main.html',
        controller: 'MainCtrl',
        controllerAs: 'main'
      })
      .when('/services', {
        templateUrl: 'views/services.html',
        controller: 'ServicesCtrl',
        controllerAs: 'services'
      })
      .when('/about', {
        templateUrl: 'views/about.html',
        controller: 'AboutCtrl',
        controllerAs: 'about'
      })
      .when('/contact', {
        templateUrl: 'views/contact.html',
        controller: 'ContactCtrl',
        controllerAs: 'contact'
      })
      .when('/pmkvy', {
        templateUrl: 'views/pmkvy.html',
        controller: 'pmkvyCtrl',
        controllerAs: 'pmkvy'
      })
      .when('/placement_process', {
        templateUrl: 'views/placement_process.html',
        controller: 'PlacementProcessCtrl',
        controllerAs: 'placementProcess'
      })
      .when('/working_model', {
        templateUrl: 'views/working_model.html',
        controller: 'WorkingModelCtrl',
        controllerAs: 'workingModel'
      })
      .when('/courses_offered', {
        templateUrl: 'views/courses_offered.html',
        controller: 'CoursesOfferedCtrl',
        controllerAs: 'courses'
      })
      .when('/requirements', {
        templateUrl: 'views/requirements.html',
        controller: 'RequirementsCtrl',
        controllerAs: 'requirements'
      })
      .when('/pmkvy', {
        templateUrl: 'views/pmkvy.html',
        controller: 'pmkvyCtrl',
        controllerAs: 'pmkvy'
      })
      .when('/ndlm', {
        templateUrl: 'views/ndlm.html',
        controller: 'ndlmCtrl',
        controllerAs: 'ndlm'
      })
      .when('/esdm', {
        templateUrl: 'views/esdm.html',
        controller: 'esdmCtrl',
        controllerAs: 'esdm'
      })
      .otherwise({
        redirectTo: '/'
      });
  });
