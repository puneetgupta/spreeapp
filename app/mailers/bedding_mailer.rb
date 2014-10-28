class BeddingMailer < ActionMailer::Base
  default from: "from@example.com"

  def bedding_mail user
    mail(to: user.email, subject: 'Thanks for bedding in AuctionHouse')
  end

end
