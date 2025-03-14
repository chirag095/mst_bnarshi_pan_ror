class AddColumnSeoToBlogs < ActiveRecord::Migration[7.2]
  def change
    add_column :blogs, :seo_description, :text
    add_column :blogs, :seo_keywords, :text
    add_column :blogs, :seo_title, :text
  end
end
