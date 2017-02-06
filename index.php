<!DOCTYPE HTML>
<html ng-app="defautheque">
<head>
	<link href="css/style.css" rel="stylesheet">
    <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
	<script src="rest/lib/php_crud_api_transform.js"></script>
	<script src="js/defautheque.js"></script>
</head>
<body>

<div ng-controller="selection">

	<div id="top">
		<select ng-options="alliage as alliage.Nom for alliage in alliages track by alliage.ID_ALLIAGE" ng-model="alliage" ng-change="changeAlliage()"></select> 
		<select ng-options="procede as procede.Nom for procede in procedes track by procede.ID_PROCEDE" ng-model="procede" ng-change="changeProcede()"></select> 
		<select ng-options="secteur as secteur.Nom for secteur in secteurs track by secteur.ID_SECTEUR" ng-model="secteur" ng-change="changeSecteur()"></select> 
	</div>	

	<div id="side">
		<div ng-repeat="echantillon in echantillons | filter: maSelection">
			<img ng-src={{echantillon.Photo}}>
		</div>	
	</div>	
	
</body>
</html>