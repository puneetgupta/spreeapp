# This migration comes from spree_auctions (originally 20140428054528)
class AddNameFieldsToUser < ActiveRecord::Migration
  def change
    add_column :spree_users, :first_name, :string
    add_column :spree_users, :last_name, :string
  end
end
