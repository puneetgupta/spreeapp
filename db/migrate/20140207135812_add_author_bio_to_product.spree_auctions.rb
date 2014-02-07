# This migration comes from spree_auctions (originally 20140207124813)
class AddAuthorBioToProduct < ActiveRecord::Migration
  def change
    change_table :spree_products do |t|
      t.references :author_bio, index: true 
    end
  end
  def down
    change_table :spree_products do |t|
      t.remove :author_bio_id
    end
  end
end
