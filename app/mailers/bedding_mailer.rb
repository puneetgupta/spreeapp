class BeddingMailer < ActionMailer::Base
  default from: "from@example.com"

  def bedding_mail user,bid
    @bid = bid
    mail(to: user.email, subject: "#{Spree.t(:bid_placed_successfully)}")
  end

  def winning_mail bid
    @bid = bid
    user = Spree::User.find bid.user_id
    mail(to: user.email, subject: "#{Spree.t(:congrats_bid_winner)}")
  end

  def outbid_mail bid
    @bid = bid
    emails = bid.outbid_users.join(",")
    mail(to: emails, subject: "#{Spree.t(:auction_outbid)}")
  end

  def looser_mail bid
    @bid = bid
    emails = bid.outbid_users.join(",")
    mail(to: emails, subject: "#{Spree.t(:auction_looser)}")
  end

end
