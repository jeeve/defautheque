<!DOCTYPE HTML>
<html>
<head>
<script src= "http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
<script src="rest/lib/php_crud_api_transform.js"></script>
<script>
var app = angular.module('myApplication', []);
app.controller('postController', function($scope, $http) {
  var url = 'rest/api.php/alliage';
//	$http.post(url,{ID_ALLIAGE:4,Nom:"toto"}).success(function(){
    $http.get(url).success(function(response){
		  $scope.alliage = php_crud_api_transform(response).alliage;
	  });
//  });
});
</script>
</head>
<body>
<div ng-app="myApplication" ng-controller="postController">
  <ul>
    <li ng-repeat="x in alliage">{{ x.ID_ALLIAGE + ', ' + x.Nom }}</li>
  </ul>
</div>
</body>
</html>