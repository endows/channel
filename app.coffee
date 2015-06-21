if Meteor.isClient
  angular.module('channel', [ 'angular-meteor' , 'ui.router'])
  .controller('postsCtrl',['$scope','$meteor','$rootScope','$stateParams', ($scope,$meteor,$rootScope,$stateParams) ->
    $scope.posts = $meteor.collection(Posts).subscribe('posts',$stateParams._id);
    $meteor.subscribe('users');
    $meteor.subscribe('userChannels');
    $scope.current_channel = $meteor.object(UserChannels,$stateParams._id)
    $scope.createPost = (post)->
      $scope.posts.push
        body:post
        channel:$stateParams._id
    ])
