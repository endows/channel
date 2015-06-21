
if Meteor.isClient
  myModule = angular.module('channel', [ 'angular-meteor' , 'ui.router'])
  .controller('postsCtrl',['$scope','$meteor', ($scope,$meteor) ->
    $scope.greet = 'hello'
    $scope.posts = $meteor.collection(Posts)
    $scope.channels = $meteor.collection(Channels)
    $scope.users = $meteor.collection(Users)
    return
  ])
  angular.module('channel').config [
    '$urlRouterProvider'
    '$stateProvider'
    '$locationProvider'
    ($urlRouterProvider, $stateProvider, $locationProvider) ->
      # $locationProvider.html5Mode true
      $stateProvider
      .state 'parties',
        url: '/channel'
        templateUrl: 'channel.html'
        controller: 'postsCtrl'
  ]
