<!DOCTYPE HTML>
<html ng-app="ui.bootstrap.demo">
<head>
    <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
	<script src="rest/lib/php_crud_api_transform.js"></script>

<script>
	var app = angular.module('ui.bootstrap.demo', []);
	app.controller('postController', function($scope, $http) {
 
		$http.get('rest/api.php/alliage').success(function(response){
			$scope.alliage = php_crud_api_transform(response).alliage; });
			
		$http.get('rest/api.php/procede').success(function(response){
			$scope.procede = php_crud_api_transform(response).procede; });
			
		$http.get('rest/api.php/secteur').success(function(response){
			$scope.secteur = php_crud_api_transform(response).secteur; });
			
		$http.get('rest/api.php/technique').success(function(response){
			$scope.technique = php_crud_api_transform(response).technique; });
			
		$http.get('rest/api.php/typedefaut').success(function(response){
			$scope.typedefaut = php_crud_api_transform(response).typedefaut; });		  
	});
</script>

</head>
<body>

<div ng-controller="postController">

 <select>
  <option ng-repeat="x in alliage" value="{{ x.ID_ALLIAGE }}">{{ x.Nom }}</option>
</select> 

 <select>
  <option ng-repeat="x in procede" value="{{ x.ID_DEFAUT }}">{{ x.Nom }}</option>
</select> 

 <select>
  <option ng-repeat="x in secteur" value="{{ x.ID_SECTEUR }}">{{ x.Nom }}</option>
</select> 

 <select>
  <option ng-repeat="x in technique" value="{{ x.ID_TECHNIQUE }}">{{ x.Nom }}</option>
</select> 

 <select>
  <option ng-repeat="x in typedefaut" value="{{ x.ID_TYPE_DEFAUT }}">{{ x.Nom }}</option>
</select> 

</body>
</html>