angular.module('Sprangular.StaticContent').service 'StaticContent', ($q, $http) ->

  service =
    find: (id) ->
      $http.get("/api/pages/#{id}.json")
           .then (response) -> response.data

  service
