class AddTranslationToStaticContentPage < ActiveRecord::Migration
  def up
    StaticContentPage.create_translation_table! :title => :string ,:description => :text
  end
  def down
    StaticContentPage.drop_translation_table!
  end
end
