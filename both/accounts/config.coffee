AccountsTemplates.configure
  onSubmitHook: (err, state) ->
    if !err
      if state is 'signUp'
        Meteor.call 'generateReferralIdFor', Meteor.userId()

AccountsTemplates.configureRoute 'signIn',
  layoutTemplate: 'layout'
  redirect: ->
    Router.go 'home'
