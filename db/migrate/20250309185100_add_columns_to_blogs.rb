class AddColumnsToBlogs < ActiveRecord::Migration[7.2]
  def change
    add_column :blogs, :heading1, :text
    add_column :blogs, :heading2, :text
    add_column :blogs, :heading3, :text
    add_column :blogs, :content1, :text
    add_column :blogs, :content2, :text
    add_column :blogs, :content3, :text
  end
end
