Router.configure
  layoutTemplate: 'layout'

Router.map ->
  @route 'home',
    path: '/'
    waitOn: ->
      return Meteor.subscribe 'myReferralId', Meteor.userId()
