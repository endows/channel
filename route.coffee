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
        templateUrl: 'templates/channel.html'
        controller: 'postsCtrl'
      .state 'channel',
        url: '/channel/:_id'
        templateUrl: 'templates/channel.html'
        controller: 'postsCtrl'
      .state 'new_post',
        url: '/post/new'
        templateUrl: 'templates/post_new.html'
        controller: 'newPostCtrl'

  ]
