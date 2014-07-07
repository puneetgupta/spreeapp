 namespace :send_frequency do

    task :schedule_mail => :environment do
      Spree::Product.all.each do |product|
        followers = product.followers
        followers.each do |follower|
          user = Spree::User.find(follower.user_id)
          now = Time.now
          if now.wday == 0
            wday = 7
          else 
            wday = now.wday
          end
          count = Spree::Order.joins(line_items: [:variant]).where("spree_variants.product_id = ?", product.id).count
          case user.frequency
          when 0
            ActionMailer::Base.mail(:to => "#{user.email}", :from => "no-reply@auctionhouse.com", :subject => "Auction Information Mail", :body => "Dear #{user.first_name},\n\n #{count} people placed a bid on auction #{product.name} \n\nThanks\nThe AuctionHouse Team").deliver
          when 1
            ActionMailer::Base.mail(:to => "#{user.email}", :from => "no-reply@auctionhouse.com", :subject => "Auction Information Mail", :body => "Dear #{user.first_name},\n\n #{count} people placed a bid on auction #{product.name} \n\nThanks\nThe AuctionHouse Team").deliver if (user.day_of_week == wday)
          when 2
            ActionMailer::Base.mail(:to => "#{user.email}", :from => "no-reply@auctionhouse.com", :subject => "Auction Information Mail", :body => "Dear #{user.first_name},\n\n #{count} people placed a bid on auction #{product.name} \n\nThanks\nThe AuctionHouse Team").deliver if (user.day_of_month == now.day)
          end
        end
      end
    end
 end