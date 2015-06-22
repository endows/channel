if Meteor.isClient
  angular.module('channel', [ 'angular-meteor' ,'newPost'])
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
  # .controller('newPostCtrl',['$scope','$meteor','$rootScope','$stateParams', ($scope,$meteor,$rootScope,$stateParams) ->
  #   $scope.current_channel = 'JjYTuhfYZM9LDyu9h'
  #   $scope.posts = $meteor.collection(Posts).subscribe('posts',$scope.current_channel);
  #   $meteor.subscribe('users');
  #   $meteor.subscribe('userChannels');
  #   $scope.createPost = (post)->
  #     $scope.posts.push
  #       body:post
  #       channel:$scope.current_channel
  #   return
  #   ])
