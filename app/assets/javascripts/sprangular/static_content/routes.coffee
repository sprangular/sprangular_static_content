angular.module('StaticContent')
       .config ($routeProvider) ->
         $routeProvider.when '/pages/:id',
           controller: 'PageShowCtrl'
           templateUrl: 'pages/show.html'
