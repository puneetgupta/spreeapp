# This migration comes from spree_auctions (originally 20140414065156)
class AddUnframedDimensionsToSpreeProducts < ActiveRecord::Migration
  def change
    add_column :spree_products, :unframed_width, :string
    add_column :spree_products, :unframed_height, :string
  end
end
