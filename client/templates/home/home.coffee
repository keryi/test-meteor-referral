Template.home.helpers
  referralUrl: ->
    referralPath = "referral/#{ReferralIds.findOne()._id}"
    return Meteor.absoluteUrl referralPath

Template.home.events
  'click #logout': (e, t) ->
    AccountsTemplates.logout()
