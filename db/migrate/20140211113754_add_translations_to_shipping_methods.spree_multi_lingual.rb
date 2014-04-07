# This migration comes from spree_multi_lingual (originally 20120628135204)
class AddTranslationsToShippingMethods < ActiveRecord::Migration
  def up
    Spree::ShippingMethod.create_translation_table!({:name => :string}, { :migrate_data => true })
  end

  def down
    Spree::ShippingMethod.drop_translation_table!
  end
end
