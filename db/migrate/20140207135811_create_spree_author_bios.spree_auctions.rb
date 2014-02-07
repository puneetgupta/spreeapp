# This migration comes from spree_auctions (originally 20140207110847)
class CreateSpreeAuthorBios < ActiveRecord::Migration
  def change
    create_table :spree_author_bios do |t|
      t.string :name
      t.text :biography

      t.timestamps
    end
  end
end
