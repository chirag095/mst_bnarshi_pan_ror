class AddColumnSeoToEvent < ActiveRecord::Migration[7.2]
  def change
    add_column :events, :seo_description, :text
    add_column :events, :seo_keywords, :text
    add_column :events, :seo_title, :text
  end
end
