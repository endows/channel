root = exports ? this
Users = Meteor.users
root.Users = Users
if Meteor.isServer
  Meteor.publish 'users',->
    Users.find({}, {fields: {'name':1,'image':1}})
