# This migration comes from spree_auctions (originally 20130725095038)
class AddBidPriceToSpreeLineItem < ActiveRecord::Migration
  def change
    add_column :spree_line_items, :bid_price, :float
  end
end
