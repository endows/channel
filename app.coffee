if Meteor.isClient
  angular.module('channel', [ 'angular-meteor' , 'ui.router'])
  .controller('postsCtrl',['$scope','$meteor','$rootScope','$stateParams', ($scope,$meteor,$rootScope,$stateParams) ->

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
        channel:$stateParams._id
    ])
