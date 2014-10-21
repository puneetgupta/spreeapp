class Bid < ActiveRecord::Base
  attr_accessible :date, :price, :variant_id, :user_id

  def self.place_bid(bid, user)
    @bid = Bid.find_or_initialize_by_variant_id_and_user_id(bid.variant_id, user.id)
    @bid.price = bid.price
    @bid.save
  end
end
