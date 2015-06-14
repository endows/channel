Posts = new Mongo.Collection('posts')
if Meteor.isClient
  myModule = angular.module('channel', [ 'angular-meteor' ]).controller('postsCtrl', ($scope,$meteor) ->
    $scope.name = 'world!!!'
    $scope.posts = $meteor.collection(Posts);
    return
  )
