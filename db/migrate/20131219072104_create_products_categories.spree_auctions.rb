# This migration comes from spree_auctions (originally 20131219070915)
class CreateProductsCategories < ActiveRecord::Migration
  def change
    create_table :products_categories, :id => false do |t|
      t.references :product, :category
    end
  end
end
