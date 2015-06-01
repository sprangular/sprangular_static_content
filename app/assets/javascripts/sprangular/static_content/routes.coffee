angular.module('Sprangular.StaticContent')
  .config ($routeProvider) ->
    $routeProvider.when '/pages/:slug*',
      controller: 'PageShowCtrl'
      templateUrl: 'pages/show.html'
      resolve:
        page: (StaticContent, $route)->
          slug = $route.current.params.slug
          StaticContent.find(slug)

Sprangular.StaticContent =
  addRoutes: (routeProvider) ->
    routeProvider.when '/:slug*',
      controller: 'PageShowCtrl'
      templateUrl: 'pages/show.html'
      resolve:
        page: (StaticContent, $route, $window)->
          slug = $route.current.params.slug

          StaticContent.find(slug).then (->), ->
            $window.location.href = "/not-found"
