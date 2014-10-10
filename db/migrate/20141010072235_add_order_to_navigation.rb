class AddOrderToNavigation < ActiveRecord::Migration
  def change
    add_column :spree_navigations ,:position ,:integer
  end
end
