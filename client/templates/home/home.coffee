Template.home.helpers
  referralUrl: ->
    referralPath = "referral/#{ReferralIds.findOne()._id}"
    return Meteor.absoluteUrl referralPath
