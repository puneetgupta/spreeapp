# This migration comes from spree_multi_lingual (originally 20121025190620)
class AddTranslationToImage < ActiveRecord::Migration
  def up
    Spree::Image.create_translation_table!( { :alt => :string }, { :migrate_data => true } )
  end
  def down
    Spree::Image.drop_translation_table!
  end  
end
