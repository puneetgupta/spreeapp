# This migration comes from spree_multi_lingual (originally 20121024155119)
class AddTranslationToTaxCategory < ActiveRecord::Migration
  def up
    Spree::TaxCategory.create_translation_table!( { :name => :string }, { :migrate_data => true } )
  end
  def down
    Spree::TaxCategory.drop_translation_table!
  end  
end
