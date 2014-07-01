class CanBidToUser < ActiveRecord::Migration
  def change
    add_column :spree_users, :can_bid, :boolean, :default => false
  end
end
