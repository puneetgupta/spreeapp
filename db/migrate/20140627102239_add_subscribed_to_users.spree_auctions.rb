# This migration comes from spree_auctions (originally 20140627101350)
class AddSubscribedToUsers < ActiveRecord::Migration
  def change
    add_column :spree_users, :subscribed, :boolean, default: false 
  end
end
