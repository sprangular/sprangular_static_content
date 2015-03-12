angular.module('Sprangular.StaticContent').controller 'PageShowCtrl', ($log, $scope, marked, page) ->
  $scope.page = page
  $scope.html = marked(page.body)
