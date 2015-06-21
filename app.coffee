
if Meteor.isClient
  angular.module('channel', [ 'angular-meteor' , 'ui.router'])

  angular.module('channel').config [
    '$urlRouterProvider'
    '$stateProvider'
    '$locationProvider'
    ($urlRouterProvider, $stateProvider, $locationProvider) ->
      $locationProvider.html5Mode true
      $stateProvider
      .state 'channel',
        url: '/channel'
        templateUrl: 'channel.html'
        controller: 'postsCtrl'
  ]

  angular.module('channel').controller('postsCtrl',['$scope','$meteor','$rootScope', ($scope,$meteor,$rootScope) ->

    $scope.greet = 'hello'
    $scope.new_channel = ''
    $scope.new_post = ''
    $scope.posts = $meteor.collection(Posts)
    $scope.userChannels = $meteor.collection(UserChannels)
    $scope.users = $meteor.collection(Users)
    $scope.createUserChannel = (channel)->
      $scope.userChannels.push
        name:channel
        user:$rootScope.currentUser._id
    $scope.createPost = (post)->
      $scope.posts.push
        body:post
        channel:$scope.userChannels[0]._id
    ])
