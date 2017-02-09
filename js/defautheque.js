	var app = angular.module('defautheque', ['ngRoute']);

	app.config(['$routeProvider', function($routeProvider) {
		$routeProvider
		.when("/echantillon/:id", {
			templateUrl: 'views/echantillon.html',
			controller: 'echantillon'
		})
	}]);
	
	app.controller('selection', ['$scope', '$http', function($scope, $http) {
 
		$http.get('rest/api.php/alliage').success(function(response){
			$scope.alliages = php_crud_api_transform(response).alliage; });
			
		$http.get('rest/api.php/procede').success(function(response){
			$scope.procedes = php_crud_api_transform(response).procede; });
			
		$http.get('rest/api.php/secteur').success(function(response){
			$scope.secteurs = php_crud_api_transform(response).secteur; });
				
		$http.get('rest/api.php/echantillon').success(function(response){
			$scope.echantillons = php_crud_api_transform(response).echantillon; });	
			
		$http.get('rest/api.php/vue').success(function(response){
			$scope.vues = php_crud_api_transform(response).vue; });			

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

		$scope.changeAlliage = function() { $scope.procede = null; $scope.secteur = null; $scope.$broadcast('initEchantillon'); }
		$scope.changeProcede = function() { $scope.alliage = null; $scope.secteur = null; $scope.$broadcast('initEchantillon'); }
		$scope.changeSecteur = function() { $scope.alliage = null; $scope.procede = null; $scope.$broadcast('initEchantillon'); }
		
	}
	]);
	
  	app.controller('echantillon', ['$scope', '$http', '$routeParams', function($scope, $http, $routeParams) {	
		
		// compatibilite IE sinon utiliser find
		$scope.echantillon = null;
		for (var i = 0; i < $scope.$parent.echantillons.length; i++) {
			if ($scope.$parent.echantillons[i].ID_ECHANTILLON == $routeParams.id) {
				$scope.echantillon = $scope.$parent.echantillons[i];
				break;
			}
		}
		
		//$scope.echantillon = $scope.$parent.echantillons.find(function (x) { return x.ID_ECHANTILLON == $routeParams.id });
		
		$scope.vuesEchantillon = function(vue) {
			if ($scope.echantillon != null)
				return vue.ID_ECHANTILLON == $scope.echantillon.ID_ECHANTILLON;
			else
				return null;
		}	
		
		$scope.vue = null;
		
		$scope.selectVue = function(v) {
			$scope.vue = v
		}

		$scope.$on('initEchantillon', function(evt) {
			$scope.echantillon = null;
			$scope.vue = null;		
		});
		
	}]);


