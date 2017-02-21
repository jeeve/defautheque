app.service("bd", function($http) {
	
	var alliages = [];
	var procedes = [];
	var secteurs = [];
	var echantillons = [];
	var vues = [];
	
	var myPromise = $http.get('rest/api.php/alliage').success(function(response) {
			alliages = php_crud_api_transform(response).alliage; })
			.then(function () {
				return $http.get('rest/api.php/procede').success(function(response) {
					procedes = php_crud_api_transform(response).procede; })
			})
					.then(function () {
		return $http.get('rest/api.php/secteur').success(function(response) {
			secteurs = php_crud_api_transform(response).secteur; })
			})
			.then(function () {
		return $http.get('rest/api.php/echantillon').success(function(response) {
			echantillons = php_crud_api_transform(response).echantillon; })
			})
			.then(function () {			
		return $http.get('rest/api.php/vue').success(function(response){
			vues = php_crud_api_transform(response).vue; })
			});
			
	return {
		promise: myPromise,
		alliages : function() { return alliages; }, 
		procedes : function() { return procedes; },
		secteurs : function() { return secteurs; },
		echantillons : function() { return echantillons; },
		vues : function() { return vues; }	
	}
});
	