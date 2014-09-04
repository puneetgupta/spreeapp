class RenameStaticPage < ActiveRecord::Migration
  def up
    rename_table :static_pages, :static_content_pages
  end

  def down
    rename_table :static_content_pages, :static_pages
  end
end
