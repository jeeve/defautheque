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
		$scope.echantillon = null;
		
		$scope.selectEchantillon = function(e) {
			$scope.echantillon = e;
		}

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
