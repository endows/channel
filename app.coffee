if Meteor.isClient
  angular.module('channel', [ 'angular-meteor' , 'ui.router'])
  .controller('postsCtrl',['$scope','$meteor','$rootScope','$stateParams', ($scope,$meteor,$rootScope,$stateParams) ->
    $scope.current_channel = $meteor.object(UserChannels,$stateParams._id)
    ])
