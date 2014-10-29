class BeddingMailer < ActionMailer::Base
  default from: "from@example.com"

  def bedding_mail user,bid
    @bid = bid
    mail(to: user.email, subject: 'Bid Placed Successfully @AuctionHouse')
  end

  def winning_mail bid
    @bid = bid
    user = Spree::User.find bid.user_id
    mail(to: user.email, subject: 'Congrats ! Bid Winner at AuctionHouse')
  end



end
