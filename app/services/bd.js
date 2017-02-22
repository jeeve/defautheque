app.service("bd", function($http) {
	
	var myAlliages = [];
	var myProcedes = [];
	var mySecteurs = [];
	var myEchantillons = [];
	var myVues = [];
	
	var myPromise = $http.get('rest/api.php/alliage').success(function(response) {
			myAlliages = php_crud_api_transform(response).alliage; })
			.then(function () {
		return $http.get('rest/api.php/procede').success(function(response) {
			myProcedes = php_crud_api_transform(response).procede; })
			})
			.then(function () {
		return $http.get('rest/api.php/secteur').success(function(response) {
			mySecteurs = php_crud_api_transform(response).secteur; })
			})
			.then(function () {
		return $http.get('rest/api.php/echantillon').success(function(response) {
			myEchantillons = php_crud_api_transform(response).echantillon; })
			})
			.then(function () {			
		return $http.get('rest/api.php/vue').success(function(response){
			myVues = php_crud_api_transform(response).vue; })
			});

	return {
		promise: myPromise,
		alliages : function() { return myAlliages; }, 
		procedes : function() { return myProcedes; },
		secteurs : function() { return mySecteurs; },
		echantillons : function() { return myEchantillons; },
		vues : function() { return myVues; }	
	}
});
	