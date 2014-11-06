class AddTranslationToCategories < ActiveRecord::Migration
    def up
      Spree::Category.create_translation_table! :name => :string
    end
    def down
      Spree::Category.drop_translation_table!
    end

end
