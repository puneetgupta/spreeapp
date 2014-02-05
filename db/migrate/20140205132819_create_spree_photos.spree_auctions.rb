# This migration comes from spree_auctions (originally 20140205132635)
class CreateSpreePhotos < ActiveRecord::Migration
  def change
    create_table :spree_photos do |t|
      t.attachment :file
      t.references :product

      t.timestamps
    end
    add_index :spree_photos, :product_id
  end
end
