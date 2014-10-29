class AddStatusToBids < ActiveRecord::Migration
  def change
    add_column :spree_bids, :status, :text ,:default => 'bid'
  end
end
