# This migration comes from spree_multi_lingual (originally 20120213172418)
class AddTranslationToProduct < ActiveRecord::Migration
  def up
    Spree::Product.create_translation_table! :description => :text
  end
  def down
    Spree::Product.drop_translation_table!
  end  
end