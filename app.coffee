Channels = new Mongo.Collection('channels')
Channels._idGeneration = 'STRING'


Posts = new Mongo.Collection('posts')
Posts._transform = (doc)->
    doc.channel = Channels.findOne(doc.channel)
    doc
if Meteor.isClient
  myModule = angular.module('channel', [ 'angular-meteor' ]).controller('postsCtrl', ($scope,$meteor,$collection,$meteorCollection) ->
    $scope.name = 'world!!!'
    $scope.posts = $meteor.collection ()->
      return Posts.find()
    $scope.addPost = ()->
      $scope.posts.push({body:"aree",channel:'J2LJJXRfPt3D75848'})
    $scope.channels = $meteor.collection(Channels);
    $scope.addChannel = ()->
      $scope.channels.push({name:'pokemon'})
    return
  )
