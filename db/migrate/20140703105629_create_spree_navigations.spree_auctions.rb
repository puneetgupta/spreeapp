# This migration comes from spree_auctions (originally 20140703105308)
class CreateSpreeNavigations < ActiveRecord::Migration
  def change
    create_table :spree_navigations do |t|
       t.string :name
       t.string :url
       t.boolean :private
      t.timestamps
    end
  end
end
