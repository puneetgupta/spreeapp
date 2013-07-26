# This migration comes from spree_auctions (originally 20130724095829)
class AddBidPriceToSpreeVariants < ActiveRecord::Migration
  def change
    add_column :spree_variants, :bid_price, :float
  end
end
