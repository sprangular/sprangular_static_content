angular.module('Sprangular.StaticContent').service 'StaticContent', ($q, $http) ->

  service =
    findContent: (id) ->
      $http.get "/api/pages/#{id}.json"

  service
