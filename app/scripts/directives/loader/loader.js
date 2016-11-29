angular.module('skillsNavigatorApp')
	.directive('loader', function(){
		// Runs during compile
		return {
			// name: '',
			// priority: 1,
			// terminal: true,
			 scope: {
			 	loading: '='
			 }, // {} = isolate, true = child, false/undefined = no change
			// controller: function($scope, $element, $attrs, $transclude) {},
			// require: 'ngModel', // Array = multiple requires, ? = optional, ^ = check parent elements
			// restrict: 'A', // E = Element, A = Attribute, C = Class, M = Comment
			 template: '<div ng-show="loading" style="position:absolute;width:100%;height:100%;background-color:white;z-index:1"><img class="centered" style="width:100px;height:100px;" src="images/loading.gif" /><div>',
			// templateUrl: '',
			// replace: true,
			// transclude: true,
			// compile: function(tElement, tAttrs, function transclude(function(scope, cloneLinkingFn){ return function linking(scope, elm, attrs){}})),
			link: function(scope, iElm, iAttrs, controller) {
				console.log(scope.loading);
			}
		};
	});