# Accounts.loginServiceConfiguration.remove({
#   service:'twitter'
#   })
# Accounts.loginServiceConfiguration.insert({
#   service:'twitter'
#   consumerKey:'rp02I9NlanW0Rt1vC6GA'
#   secret:'0II62Hr66QiOKjmASsexCrzPJChkxon1icm2avyQrvM'
#   })

if Meteor.isClient
  myModule = angular.module('channel', [ 'angular-meteor' ])
  .controller('postsCtrl',['$scope','$meteor', ($scope,$meteor) ->
    $scope.greet = 'hello'
    $scope.posts = $meteor.collection(Posts)
    $scope.channels = $meteor.collection(Channels)
    $scope.users = $meteor.collection(Users)
    return
  ])
