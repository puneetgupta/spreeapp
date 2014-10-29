class BeddingMailer < ActionMailer::Base
  default from: "from@example.com"

  def bedding_mail user
    mail(to: user.email, subject: 'Thanks for bedding in AuctionHouse')
  end

  def winning_mail bid
    @bid = bid
    user = Spree::User.find bid.user_id
    mail(to: user.email, subject: 'You are winner for Auction')
  end



end
