# This migration comes from spree_multi_lingual (originally 20120620153608)
class AddTranslationsToTaxRates < ActiveRecord::Migration
  def up
    Spree::TaxRate.create_translation_table!({:name => :string},
      {:migrate_data => true})
  end

  def down
    Spree::TaxRate.drop_translation_table!(:migrate_data => true)
  end
end
