# This migration comes from spree_auctions (originally 20140705102942)
class CreateSpreeFollowers < ActiveRecord::Migration
  def change
    create_table :spree_followers do |t|
      t.references :user
      t.references :product
      t.timestamps
    end
  end
end
