class AddColumnsToPanOutlates < ActiveRecord::Migration[7.2]
  def change
    add_column :pan_outlates, :heading1, :text
    add_column :pan_outlates, :heading2, :text
    add_column :pan_outlates, :heading3, :text
    add_column :pan_outlates, :content1, :text
    add_column :pan_outlates, :content2, :text
    add_column :pan_outlates, :content3, :text
  end
end
