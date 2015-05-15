AccountsTemplates.configure
  onSubmitHook: (err, state) ->
    if !err
      if state is 'signUp'
        console.log 'Generating referral id for user with id: ' + Meteor.userId()
        Meteor.call 'generateReferralIdFor', Meteor.userId()
