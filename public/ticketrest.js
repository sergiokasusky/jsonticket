var app = angular.module('myApp', ['ngResource']);

app.factory("Cliente", function($resource) {
  return $resource("/clientes/:id");
});

app.controller("ClienteIndexCtrl", function($scope, Cliente) {
  Cliente.query(function(data) {
    $scope.clientes = data;
  });
});

app.controller("ClienteShowCtrl", function($scope, Cliente) {
  Cliente.get({ id: 1 }, function(data) {
    $scope.uncliente = data;
  });
});