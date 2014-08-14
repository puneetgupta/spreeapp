# This migration comes from spree_auctions (originally 20140814110945)
class AddCustomUrlToSpreeNavigation < ActiveRecord::Migration
  def change
    add_column :spree_navigations, :custom_url, :boolean, :default => false
  end
end
