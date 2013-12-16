# This migration comes from spree_auctions (originally 20131216125058)
class CreateStaticPages < ActiveRecord::Migration
  def change
    create_table :static_pages do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
