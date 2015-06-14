Posts = new Mongo.Collection('posts')
Channels = new Mongo.Collection('channels')
if Meteor.isClient
  myModule = angular.module('channel', [ 'angular-meteor' ]).controller('postsCtrl', ($scope,$meteor) ->
    $scope.name = 'world!!!'
    $scope.posts = $meteor.collection(Posts);
    $scope.channels = $meteor.collection(Channels);
    return
  )
