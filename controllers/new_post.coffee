if Meteor.isClient
  angular.module('newPost',['ui.router'])
  .controller('newPostCtrl',['$scope','$meteor','$rootScope','$stateParams', ($scope,$meteor,$rootScope,$stateParams) ->
    $scope.current_channel = 'JjYTuhfYZM9LDyu9h'
    $scope.userChannels = $meteor.collection(UserChannels)
    $scope.posts = $meteor.collection(Posts).subscribe('posts',$scope.current_channel);
    $meteor.subscribe('users');
    $meteor.subscribe('userChannels');
    $scope.createPost = (post)->
      $scope.posts.push
        body:post
        channel:$scope.current_channel
    return
    ])
