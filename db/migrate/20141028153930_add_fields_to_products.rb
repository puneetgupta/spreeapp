class AddFieldsToProducts < ActiveRecord::Migration
  def change
    add_column :spree_products, :status, :text ,:default => 'bid'
    add_column :spree_products, :winner_choose_date ,:datetime
    add_column :spree_products, :confirmation_date ,:datetime
    add_column :spree_products, :order_id, :integer

  end
end
