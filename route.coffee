if Meteor.isClient
  angular.module('channel')
  .config [
    '$urlRouterProvider'
    '$stateProvider'
    '$locationProvider'
    ($urlRouterProvider, $stateProvider, $locationProvider) ->
      $locationProvider.html5Mode true
      $stateProvider
      .state 'channels',
        url: '/channel'
        templateUrl: 'channel.html'
        controller: 'postsCtrl'
      .state 'channel',
        url: '/channel/:_id'
        templateUrl: 'channel.html'
        controller: 'postsCtrl'
  ]
