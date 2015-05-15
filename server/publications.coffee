Meteor.publish 'myReferralId', (userId) ->
  return ReferralIds.find { userId: userId }
