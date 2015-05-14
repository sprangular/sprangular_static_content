angular.module('Sprangular.StaticContent').controller 'PageShowCtrl', (Status, $log, $scope, marked, page) ->
  Status.meta.title       = page.meta_title || page.title
  Status.meta.description = page.meta_description
  Status.meta.keywords    = page.meta_keywords

  $scope.page = page
  $scope.html = marked(page.body)
