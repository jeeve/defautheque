<!DOCTYPE HTML>
<html ng-app="ui.bootstrap.demo">
<head>
    <script src="//ajax.googleapis.com/ajax/libs/angularjs/1.6.1/angular.js"></script>
    <script src="//ajax.googleapis.com/ajax/libs/angularjs/1.6.1/angular-animate.js"></script>
    <script src="//ajax.googleapis.com/ajax/libs/angularjs/1.6.1/angular-sanitize.js"></script>
    <script src="//angular-ui.github.io/bootstrap/ui-bootstrap-tpls-2.5.0.js"></script>

    <link href="//netdna.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

<script src="rest/lib/php_crud_api_transform.js"></script>
<script>


var app = angular.module('ui.bootstrap.demo', ['ngAnimate', 'ngSanitize', 'ui.bootstrap']);
app.controller('postController', function($scope, $http) {
  var url = 'rest/api.php/alliage';
//	$http.post(url,{ID_ALLIAGE:4,Nom:"toto"}).success(function(){
    $http.get(url).then(function(response){
		  $scope.alliage = php_crud_api_transform(response).alliage;
	  });
//  });


	$scope.alliage = [{ID_ALLIAGE : "1", Nom : "toto"}];
});


</script>
</head>
<body>
<!--
<div ng-app="myApplication" ng-controller="postController">
  <ul>
    <li ng-repeat="x in alliage">{{ x.ID_ALLIAGE + ', ' + x.Nom }}</li>
  </ul>
</div>
-->
<div ng-controller="postController">
    <!-- Single button -->
    <div class="btn-group" uib-dropdown is-open="status.isopen">
      <button id="single-button" type="button" class="btn btn-primary" uib-dropdown-toggle ng-disabled="disabled">
        Button dropdown <span class="caret"></span>
      </button>
      <ul class="dropdown-menu" uib-dropdown-menu role="menu" aria-labelledby="single-button">
        <li ng-repeat="x in alliage" role="menuitem"><a href="#" ng-bind="x.Nom"></a></li>
      </ul>
    </div>
</div>	


</body>
</html>