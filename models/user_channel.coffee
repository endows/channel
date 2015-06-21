root = exports ? this
root.UserChannels = new Mongo.Collection('userChannels')
UserChannels._transform = (doc)->
  doc.user = Users.findOne(doc.user)
  doc
if Meteor.isServer
  Meteor.publish 'userChannels',->
    UserChannels.find()
