root = exports ? this
Posts = new Mongo.Collection('posts')
Posts._transform = (post)->
  post.user = Users.findOne(post.user)
  post
root.Posts = Posts
if Meteor.isServer
  Meteor.publish 'posts',->
    Posts.find()
