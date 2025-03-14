class AddColumnSeoToPanOutlates < ActiveRecord::Migration[7.2]
  def change
    add_column :pan_outlates, :seo_description, :text
    add_column :pan_outlates, :seo_keywords, :text
    add_column :pan_outlates, :seo_title, :text
  end
end
