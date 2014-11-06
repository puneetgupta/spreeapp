class AddTranslationToAuthorBio < ActiveRecord::Migration
  def up
    Spree::AuthorBio.create_translation_table! :name => :string ,:biography => :text
  end
  def down
    Spree::AuthorBio.drop_translation_table!
  end
end
