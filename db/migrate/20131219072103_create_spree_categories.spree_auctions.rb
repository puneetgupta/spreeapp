# This migration comes from spree_auctions (originally 20131219070312)
class CreateSpreeCategories < ActiveRecord::Migration
  def change
    create_table :spree_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
