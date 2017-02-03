<!DOCTYPE HTML>
<html ng-app="defautheque">
<head>
    <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
	<script src="rest/lib/php_crud_api_transform.js"></script>

<script>
	var app = angular.module('defautheque', []);
	app.controller('selection', function($scope, $http) {
 
		$http.get('rest/api.php/alliage').success(function(response){
			$scope.alliages = php_crud_api_transform(response).alliage; });
			
		$http.get('rest/api.php/procede').success(function(response){
			$scope.procedes = php_crud_api_transform(response).procede; });
			
		$http.get('rest/api.php/secteur').success(function(response){
			$scope.secteurs = php_crud_api_transform(response).secteur; });
			
		$http.get('rest/api.php/echantillon').success(function(response){
			$scope.echantillons = php_crud_api_transform(response).echantillon; });	
			
		$scope.alliage = null;
		$scope.procede = null;
		$scope.secteur = null;

		$scope.maSelection = function(echantillon) {
			if ($scope.alliage != null)
				return echantillon.ID_ALLIAGE == $scope.alliage.ID_ALLIAGE;
			else
				if ($scope.procede != null)
					return echantillon.ID_PROCEDE == $scope.procede.ID_PROCEDE;
				else
					if ($scope.secteur != null)
						return echantillon.ID_SECTEUR == $scope.secteur.ID_SECTEUR;
					else
						return false;
		};

		$scope.changeAlliage = function() { $scope.procede = null; $scope.secteur = null; }
		$scope.changeProcede = function() { $scope.alliage = null; $scope.secteur = null; }
		$scope.changeSecteur = function() { $scope.alliage = null; $scope.procede = null; }
		
	});
</script>

</head>
<body>

<div ng-controller="selection">

	<select ng-options="alliage as alliage.Nom for alliage in alliages track by alliage.ID_ALLIAGE" ng-model="alliage" ng-change="changeAlliage()"></select> 
	<select ng-options="procede as procede.Nom for procede in procedes track by procede.ID_PROCEDE" ng-model="procede" ng-change="changeProcede()"></select> 
	<select ng-options="secteur as secteur.Nom for secteur in secteurs track by secteur.ID_SECTEUR" ng-model="secteur" ng-change="changeSecteur()"></select> 

	<div ng-repeat="echantillon in echantillons | filter: maSelection">
		<img ng-src={{echantillon.Photo}}>
	</div>	
	
</body>
</html>