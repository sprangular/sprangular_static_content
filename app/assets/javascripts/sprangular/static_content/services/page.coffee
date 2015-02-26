angular.module('Sprangular.StaticContent').service 'StaticContent', ($q, $http) ->

  service =
    current: {}
    findContent: (id) ->
      _service = @
      deferred = $q.defer()
      $http.get "/api/pages/#{id}.json"
        .success (data) ->
          _service.current = data
          deferred.resolve "Success!"
        .error (data) ->
          deferred.reject data
      deferred.promise
  service