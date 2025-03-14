class AddColumnSeoToProducts < ActiveRecord::Migration[7.2]
  def change
    add_column :products, :seo_description, :text
    add_column :products, :seo_keywords, :text
    add_column :products, :seo_title, :text
  end
end
