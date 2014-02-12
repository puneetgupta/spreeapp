# This migration comes from spree_multi_lingual (originally 20121030142423)
class AddTranslationToProperty < ActiveRecord::Migration
  def up
    Spree::Property.create_translation_table!( { :presentation => :string }, { :migrate_data => true } )
  end
  def down
    Spree::Property.drop_translation_table!
  end
end
