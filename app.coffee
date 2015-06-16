Posts = new Mongo.Collection('posts')
if Meteor.isClient
  myModule = angular.module('channel', [ 'angular-meteor' ]).controller('postsCtrl', ($scope,$meteor) ->
    $scope.posts = $meteor.collection(Posts)
    $scope.channels = $meteor.collection(Channels)
    $scope.users = $meteor.collection(Users)
    return
  )
